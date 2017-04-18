# Librerías ---------------------------------------------------------------
library(magrittr)
c("dplyr", "tidyr", "data.table", "ggplot2", "lme4", 
  "purrr", "lattice","broom") %>% 
  sapply(require, character.only=T)

####################################
#Creado por Fernando Dorantes Nieto <(°) 
#                                     ( >)"
#                                      /|
####################################


# Funciones ---------------------------------------------------------------
e.e <- function(x){
  X = sd(x)/sqrt(length(x))
  return(X)
}

"%!in%" <- function(x,y)!("%in%"(x,y))


metricasPrin <- function(x){
  media      = mean(x)
  maximo     = max(x)
  minimo     = min(x)
  varianza   = var(x)
  desviacion = sd(x)
  error      = e.e(x)
  X = data.frame(media, maximo, minimo, varianza, desviacion, error)
  return(X)
}

porcentajeLabel <- function(x){
  y = paste0(x, "%")
  return(y)
}

# Directorio --------------------------------------------------------------
setwd("~/local/experimento_Posteos/datos/")

# Datos y modificación -------------------------------------------------------------------

######Posteos
posteos    <- read.csv("posteosExperimento.csv", header = T)
idFecha    <- read.csv("idFecha.csv", header = T)
reacciones <- read.csv("reaccionesExperimento.csv", header = T)

reacciones <- reacciones %>% 
  group_by(ID_post, from_type) %>% 
  tally() %>% 
  filter(from_type!="LIKE") %>% 
  mutate(from_type = tolower(from_type)) %>% 
  spread(from_type,n,fill = 0) %>% 
  rename(id=ID_post)

posteos <- posteos %>% 
  select(id,likes_count,comments_count,shares_count,message) 

posteos <- left_join(posteos, reacciones,by="id") 

posteos <- merge(posteos,idFecha,by="id") %>% select(-nota)

posteos[is.na(posteos)] <- 0

posteos <- posteos %>% 
  mutate(interaccionTotal  =  rowSums(.[,c(2,3,4,6,7,8,9,10)])) %>% 
  mutate(reaccionesTotales =  rowSums(.[,c(2,6:10)])) %>% 
  mutate(reaccionNoLike    =  rowSums(.[,c(6:10)])) 

posteosTidy <- posteos %>% 
  select(-message) %>%
  gather(tipo, valor, -fecha,-id,-semana) %>% 
  mutate(tipoEsp = factor(tipo))

tiposEsp <-c("Me_enoja","Comentarios",
             "Me_divierte","Total \n de interacciones",
             "Me_gusta","Me_encanta","Total \n de reacciones",
             "Reacciones sin \n Me_gusta","Me_entristece",
             "Número de veces\n compartido","Me_sorprende")

levels(posteosTidy$tipoEsp) <- tiposEsp

######Insights
setwd("~/local/experimento_Posteos/datos/diarios/posteos/")

engagedPost <- read.csv("engagedPost2.csv", header=T) %>% 
  mutate(tipo="engagedPost")

fanReach  <- read.csv("fanReachPost2.csv", header = T) %>% 
  mutate(tipo= "fanReach")

impressionsFans <- read.csv("impressionsFans2.csv") %>% 
  mutate(tipo="impressionsFans")

impressionsFansUnique <- read.csv("impressionsFansUnique2.csv") %>% 
  mutate(tipo="impressionsFansUnique")

impressionsPost <- read.csv("impressionsPost2.csv") %>% 
  mutate(tipo="impressionsPost")

impressionsPostUnique <- read.csv("impressionsUniquePost2.csv") %>% 
  mutate(tipo="impressionsPostUnique")

insights <- rbind(engagedPost, fanReach, impressionsFans,
                  impressionsFansUnique, impressionsPost,
                  impressionsPostUnique)

insights <- insights %>%
  select(idPosteo,data.values.value, tipo)

names(insights) <- c("id","valor","tipo")

insights <- insights %>% 
  spread(tipo, valor,fill = T)

insights <- merge(insights, idFecha, by="id")

insightsTidy <- insights %>%  select(-nota) %>% 
  gather(tipo, valor,-id,-fecha,-semana) %>% 
  mutate(tipoEsp= factor(tipo))

tipoEspInsigths <- c("Enganche_Post", "Alcance_Post",
                     "Impresiones_Fans", "Impresiones_FansUnicos",
                     "Impresiones_Post", "Impresiones_PostUnicos")

levels(insightsTidy$tipoEsp)<- tipoEspInsigths

###Engagement
engagement  <- read.csv("engagement.csv", header = T)

engagement  <- engagement %>% 
  rename(fecha=Fecha)

engagement  <- merge(engagement, idFecha, by="fecha") %>%  
  select(-nota, -id)

engagement  <- engagement %>%
  unique 

setwd("~/local/experimento_Posteos/datos/")

# Análisis estadísticos ----------------------------------------------------------------

# Shapiro.test ------------------------------------------------------------
posteos %>% 
  group_by(semana) %>% 
  do(test=shapiro.test(.$likes_count)) %>% 
  .$test
  
posteos %>% 
  group_by(semana) %>% 
  do(test=shapiro.test(.$comments_count)) %>% 
  .$test

posteos %>% 
  group_by(semana) %>% 
  do(test=shapiro.test(.$shares_count)) %>% 
  .$test




# Visión histórica --------------------------------------------------------
setwd("~/local/experimento_Posteos/imagenes/graficas/")

png("historico1.png", width = 800, height = 500, units = "px",res = 100)
posteosTidy %>%  
  filter(tipo %in% c("reaccionesTotales", "interaccionTotal",
                     "reaccionNoLike")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor = sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha = as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y = valor, col = semana)) +
  geom_line() + 
  geom_point(shape="*", size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + 
  theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_color_manual(values = c("darkred", "steelblue"), name = "") +
  xlab("") + 
  ylab("Cantidad") +
  scale_x_date(date_breaks = "1 day")
dev.off()

png("historico2.png", width = 800, height = 500, units = "px",res = 100)
posteosTidy %>%  
  filter(tipo %in% c("likes_count", "comments_count",
                     "shares_count")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor=sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha = as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y= valor, col=semana)) +
  geom_line() + 
  geom_point(shape="*", size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        axis.text.x = element_text(angle=45, hjust=1)) +
  scale_color_manual(values=c("darkred", "steelblue"), name="") +
  xlab("") +
  ylab("Cantidad") +
  scale_x_date(date_breaks = "1 day")
dev.off()

png("historico3.png", width = 800, height = 550, units="px", res= 100)
posteosTidy %>%  
  filter(tipo %in% c("love", "sad", "wow", "angry", "haha", "angry")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor=sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha = as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y= valor, col=semana)) +
  geom_line() + 
  geom_point(shape="*",size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        strip.text = element_text(size=7.5),
        axis.text.x = element_text(angle=45, hjust=1)) +
  scale_color_manual(values=c("darkred", "steelblue"), name="") +
  xlab("") + 
  ylab("Cantidad") +
  scale_x_date(date_breaks = "1 day")
dev.off()


png("historico4.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("engagedPost", "fanReach")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor = sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha = as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y= valor, col=semana)) +
  geom_line() + 
  geom_point(shape="*", size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        axis.text.x = element_text(angle=45, hjust=1)) +
  scale_color_manual(values=c("darkred", "steelblue"), name="") +
  xlab("") + 
  ylab("Cantidad")+
  scale_x_date(date_breaks = "1 day")
dev.off()

png("historico5.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("impressionsFans", "impressionsFansUnique")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor = sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha = as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y= valor, col=semana)) +
  geom_line() + 
  geom_point(shape="*",size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        axis.text.x = element_text(angle=45, hjust=1)) +
  scale_color_manual(values = c("darkred","steelblue"), name="") +
  xlab("") +
  ylab("Cantidad") +
  scale_x_date(date_breaks = "1 day")
dev.off()

png("historico6.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("impressionsPost", "impressionsPostUnique")) %>% 
  group_by(fecha, semana, tipoEsp) %>%  
  summarise(valor=sum(valor)) %>% 
  data.frame %>% 
  mutate(fecha=as.Date(fecha)) %>% 
  ggplot(aes(x = fecha, y= valor, col=semana)) +
  geom_line() + 
  geom_point(shape="*", size=8) +
  facet_grid(tipoEsp~ ., scales="free_y") + theme_bw() +
  theme(legend.position = "top",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"),
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  scale_color_manual(values = c("darkred", "steelblue"), name="") +
  xlab("") + 
  ylab("Cantidad")+
  scale_x_date(date_breaks = "1 day")
dev.off()

engagement %>%  data.table %>% 
  .[,fecha:=as.Date(fecha)] %>% 
  ggplot(aes(x = fecha, y= engagement, color=semana)) + 
  geom_point(shape="*", size=8) +
  geom_line() +
  theme_bw() + 
  scale_x_date(date_breaks = "1 day") + 
  scale_color_manual(values = c("darkred", "steelblue"), name="") +
  theme(legend.position = "top",
        axis.text.x = element_text(angle = 45, hjust = 1)) +
  xlab("") +
  ylab("Engagement Total")
  

# Modelos lineales generalizados posteos ----------------------------------
posteosTidy %>%  
  split(.$tipo) %>% 
  map(~ glm(valor~semana, data=., family="poisson")) %>% 
  map(summary) %>% 
  map(coefficients)

posteosTidy %>% 
  split(.$tipo) %>% 
  map(~ glm(valor~semana,data=., family="poisson")) %>% 
  lapply(function(x){
    X = anova(x, test="Chisq")
    return(X)
  })
  
modeloInteraccionT <- glm(posteos$interaccionTotal~posteos$semana,
                         family = "poisson") 

modeloInteraccionT$coefficients
test2 <- anova(modeloInteraccionT,test="Chisq")




# Modelos lineales generalizados insights ---------------------------------
insightsTidy %>% 
  split(.$tipo) %>% 
  map(~ glm(valor~semana, data=., family="quasipoisson")) %>% 
  map(summary) %>% 
  map(coefficients)



insightsTidy %>%
  split(.$tipo) %>% 
  map(~ glm(valor~semana,data=.,family="quasipoisson")) %>% 
  lapply(function(x){
    X = anova(x, test="Chisq")
    return(X)
  })

insightsTidy %>%
  split(.$tipo) %>% 
  map(~ glm(valor~semana,data=.,family="quasipoisson")) %>% 
  lapply(function(x){
    tidy(x)
  })
# Gráficas ----------------------------------------------------------------
ggplot(posteos,aes(x = semana, y=interaccionTotal,
                   fill=semana))+
  geom_boxplot()+ 
  theme_bw()+ 
  theme(legend.position = "")+
  scale_y_continuous(labels=scales::comma)+
  xlab("") +
  ylab("Interacción Total")
  

ggplot(posteosTidy, aes(x = semana, y=valor, fill=tipoEsp))+
  geom_boxplot()+ 
  theme_bw()+
  theme(legend.position = "top")

medias <- posteosTidy %>% 
  group_by(semana, tipoEsp) %>% 
  summarise(errorEstandar = e.e(valor),
            maximo = max(valor),
            valor = mean(valor)) %>% 
  mutate(valor = round(valor,digits = 2)) %>% 
  mutate(valorAgregado = ifelse(valor>200, valor+50, valor+5)) %>% 
  mutate(errorEstandar = round(errorEstandar,digits = 2)) %>% 
  mutate(valorF = format(valor, scientific=F, big.mark=","))

medias1 <- medias %>%
  filter(tiposEsp %in% tiposEsp[c(4,7,8)])

medias2 <- medias %>%
  filter(tiposEsp %in% tiposEsp[c(5,2,10)])

medias3 <- medias %>% 
  filter(tiposEsp %in% tiposEsp[c(1,3,6,9,11)])

png("comparacion1.png", width = 800, height = 500, units="px", res= 100)
posteosTidy %>%  
  filter(tipo %in% c("reaccionesTotales", "interaccionTotal",
                     "reaccionNoLike")) %>% 
  ggplot(aes(x = semana, y = valor, color = tipoEsp)) +
  geom_violin(fill="gray90") +
  geom_boxplot(width=0.1, fill="white",color="gray90", outlier.colour = "black") + 
  # geom_dotplot(binaxis = "y", stackdir = "center",dotsize = 0.5, color="black") + 
  theme_bw() +
  facet_wrap(~tipoEsp, scales="free_y") +
  theme(legend.position = "",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"))+
  xlab("") +
  ylab("Cantidad") +
  stat_summary(fun.y=mean, color="darkred", geom = "point", shape="*", size=10)+
  geom_text(data = medias1, aes(label = valorF, y = valorAgregado),
            size=3, col = "black", fontface = "bold")
dev.off()

png("comparacion2.png", width = 800, height = 500, units="px", res= 100)
posteosTidy %>%  
  filter(tipo %in% c("likes_count", "comments_count",
                     "shares_count")) %>% 
  ggplot(aes(x = semana, y = valor, color = tipoEsp)) +
  geom_violin(fill="gray90") + 
  geom_boxplot(width=0.1, fill="white",color="gray90", outlier.colour = "black") + 
  theme_bw() +
  facet_wrap(~tipoEsp, scales="free_y") +
  theme(legend.position = "",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold")) +
  xlab("") + 
  ylab("Cantidad") +
  stat_summary(fun.y = mean, color = "darkred",
               geom = "point",shape = "*", size = 10) +
  geom_text(data = medias2, aes(label = valorF, y = valorAgregado),
            size = 3, col = "black", fontface = "bold")
dev.off()


png("comparacion3.png", width = 800, height = 500, units="px", res= 100)
posteosTidy %>%  
  filter(tipo %in% c("love", "sad", "wow", "angry", "haha", "angry")) %>% 
  ggplot(aes(x = semana, y=valor, color=tipoEsp))+
    geom_violin(fill="gray90") + 
    geom_boxplot(width = 0.1, fill="white",color="gray90",outlier.colour = "black") + 
    theme_bw() +
    facet_wrap(~tipoEsp, scales = "free_y") +
    theme(legend.position = "",
          strip.background = element_blank(),
          axis.text.y = element_text(face = "bold"))+
    xlab("") +
    ylab("Cantidad")+
    stat_summary(fun.y = mean, color = "darkred", geom = "point",
                 shape = "*", size = 10)+
    geom_text(data = medias3, aes(label = valorF, y = valorAgregado),
              size = 3, col = "black", fontface = "bold")
dev.off()

mediasInsight <- insightsTidy %>% 
  group_by(semana, tipoEsp) %>% 
  summarise(errorEstandar = e.e(valor),valor = mean(valor)) %>% 
  mutate(valor = round(valor,digits = 2)) %>% 
  mutate(valorAgregado = ifelse(valor>10000, valor+5000, valor+200)) %>% 
  mutate(errorEstandar = round(errorEstandar,digits = 2)) %>% 
  mutate(valorF = format(valor, scientific = F, big.mark = ","))

mediasInsight1 <-mediasInsight %>% 
  filter(tipoEsp %in% tipoEspInsigths[c(1,2)])

mediasInsight2 <- mediasInsight %>% 
  filter(tipoEsp %in% tipoEspInsigths[c(3,4)])

mediasInsight3 <- mediasInsight %>% 
  filter(tipoEsp %in% tipoEspInsigths[c(5,6)])

  

png("comparacion4.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("engagedPost", "fanReach")) %>% 
  ggplot(aes(x = semana, y = valor, color = tipoEsp)) +
  geom_violin(fill="gray90") + 
  geom_boxplot(width = 0.1, fill="white",color="gray90", outlier.colour = "black") +
  theme_bw() +
  facet_wrap(~tipoEsp, scales = "free_y") +
  theme(legend.position = "",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold")) +
  xlab("") + 
  ylab("Cantidad") + 
  stat_summary(fun.y = mean, color = "darkred", geom = "point", shape = "*", 
               size = 10) +
  geom_text(data = mediasInsight1, aes(label = valorF, y = valorAgregado),
            size = 3, col = "black", fontface = "bold")+
  scale_y_continuous(labels = scales::comma)
dev.off()

png("comparacion5.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("impressionsFans","impressionsFansUnique")) %>% 
  ggplot(aes(x = semana, y = valor, color = tipoEsp))+
  geom_violin(fill="gray90")+
  geom_boxplot(width=0.1, fill="white",color="gray90", outlier.colour = "black")+
  theme_bw()+
  facet_wrap(~tipoEsp, scales = "free_y")+
  theme(legend.position = "",
        strip.background = element_blank(),
        axis.text.y = element_text(face = "bold"))+
  xlab("") +
  ylab("Cantidad") + 
  stat_summary(fun.y = mean, color = "darkred", geom = "point", shape = "*",
               size = 10)+
  geom_text(data = mediasInsight2, aes(label = valorF, y = valorAgregado), 
            size = 3, col = "black", fontface = "bold") +
  scale_y_continuous(labels = scales::comma)
dev.off()

png("comparacion6.png", width = 800, height = 500, units="px", res= 100)
insightsTidy %>%
  filter(tipo %in% c("impressionsPost","impressionsPostUnique")) %>% 
  ggplot(aes(x = semana, y = valor, color = tipoEsp))+
  geom_violin(fill="gray90") +
  geom_boxplot(width=0.1, fill="white", color="gray90", outlier.colour = "black") +
  theme_bw() +
  facet_wrap(~tipoEsp, scales="free_y") +
  theme(legend.position = "", 
        strip.background = element_blank(),
        axis.text.y = element_text(face="bold"))+
  xlab("") + 
  ylab("Cantidad") + 
  stat_summary(fun.y = mean, color = "darkred", geom = "point",
               shape = "*", size = 10) +
  geom_text(data = mediasInsight3, aes(label = valorF, y = valorAgregado), 
            size = 3, col = "black", fontface = "bold") +
  scale_y_continuous(labels = scales::comma)
dev.off()

# Engagement Análisis -----------------------------------------------------
engagement %>%
  group_by(semana) %>%
  do(test= shapiro.test(.$engagement)) %>% 
  .$test

engagementAnova <- aov(lm(engagement$engagement~engagement$semana))
summary(engagementAnova)
anova(engagementAnova, test = "Chisq")

mediaEng <- engagement %>%
  group_by(semana) %>% 
  summarise(valor = mean(engagement), suma = sum(engagement)) %>% 
  mutate(valorF = as.character(valor)) %>% 
  mutate(valorF = substr(valorF, 1,5)) %>% 
  mutate(valorF = paste0(valorF, " %")) %>% 
  mutate(valorAgregado = valor + 0.02)

png("comparacion7.png", width = 800, height = 500, units="px", res= 100)
engagement %>% 
  ggplot(aes(x = semana, y = engagement, col = semana)) +
  geom_violin(fill="gray90") +
  geom_boxplot(width = 0.1, fill="white", color="gray90", outlier.colour = "black") +
  theme_bw() +
  theme(legend.position = "") +
  stat_summary(fun.y = mean, color = "darkred", geom = "point", 
               shape = "*", size = 10) +
  geom_text(data = mediaEng, aes(label = valorF, y = valorAgregado),
            size = 3, col = "black", fontface = "bold")+
  xlab("") +
  ylab("Enganche")+
  scale_y_continuous(labels = porcentajeLabel)
dev.off()



posteos %>%  
  select(angry, sad, semana) %>% 
  group_by(semana) %>%  
  summarise_each(funs( mean,max,min,e.e)) %>%  data.frame() %>%  View

insights %>%  
  select(impressionsPost, impressionsPostUnique, semana) %>% 
  group_by(semana) %>%  
  summarise_each(funs( mean,max,min,e.e)) %>%  data.frame() %>%  View

# Final -------------------------------------------------------------------
###Al finalizar puedes borrar todos los objetos creados
ls() %>%  length
rm(list=ls())






