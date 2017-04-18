##Engagement
library(magrittr)
c("httr", "XML","rvest","rjson","dplyr","tidyr","lubridate","Rfacebook") %>% 
  sapply(require, character.only=T)

####################################
#Creado por Fernando Dorantes Nieto <(°) 
#                                     ( >)"
#                                      /|
####################################

# Conexión a Facebook -----------------------------------------------------
fb_oauth <- fbOAuth(app_id="tuAppId", 
                    app_secret="tuAppSecret", 
                    extended_permissions = TRUE)
save(fb_oauth, file="fb_oauth")
load("~/fb_oauth")
idFB_seat = 113144262054871

accesstoken = "tuaccesToken"


base                = "https://graph.facebook.com/v2.8/"
IDSEAT              = "113144262054871"
valor               = "/insights/"
fans                = "page_fans"
since               = "?since="
until               = "&until="
primerdia           = "2017-04-01"
accesoPage          = "&access_token="


Engagement = read.csv(
  "~/local/experimento_Posteos/datos/diarios/posteos/engagement.csv", header =T)


# Datos -------------------------------------------------------------------
datosAldia = getPage(idFB_seat, token = fb_oauth,since = "2017-04-01",
                     until="2017-04-03", n=1000, feed = T, reactions = T)

datosAldia2 = read.csv("~/local/experimento_Posteos/datos/abril.csv",
                       header = T)  

# datosAldia = rbind(datosAldia2, datosAldia)
# datosAldia %>%  write.csv("~/local/experimento_Posteos/datos/marzo.csv", 
#                           row.names=F)
# datosAldia2 = datosAldia2 %>%  mutate(Publicado=gsub("/","-",Publicado)) %>% 
#   mutate(Publicado = as.Date(Publicado, "%m-%d-%y")) %>% 
#   mutate(mes= month(Publicado), dia= day(Publicado)) 

ids1 = datosAldia$id %>%  as.character()
ids2 = datosAldia2$Identificador.de.la.publicación %>% as.character()
ids = c(ids1, ids2) %>%  unique

info = lapply(ids, function(x){
  y = getPost(x, reactions = T, n.reactions = 5000, 
             token = fb_oauth)
  return(y)
})

infoPosteo  = lapply(info, function(x){
  y = x$post
  return(y)
})
infoPosteo = do.call("rbind", infoPosteo )

reacciones = lapply(info, function(x){
  z = x$post %>%  select(id) %>% unlist
  y = x$reactions
  if(!is.null(y)){
  y = y %>% mutate(IDposteo = z)
   return(y)
  }else{return(NULL)}
})
reacciones = do.call("rbind", reacciones)

reacciones = reacciones %>%  group_by(IDposteo, from_type) %>%  tally %>% 
  spread(from_type, n, fill=0) 

infoPosteo1 = merge(infoPosteo, reacciones, by.x ="id", by.y="IDposteo") %>% 
  mutate(ANGRY=0)

infoPosteo2  = infoPosteo %>%  filter(likes_count==0) %>% 
  mutate(ANGRY=0, HAHA=0, LIKE=0, LOVE=0,SAD=0, WOW=0)

infoPosteo = rbind(infoPosteo1, infoPosteo2)

infoPosteo = infoPosteo %>% 
  separate(created_time, c("Fecha","Hora"), sep="T") %>% 
  mutate(Fecha=as.Date(Fecha),
         mes=month(Fecha), dia=day(Fecha))

# numeros=NULL
# for (i in 1:20){
# x =  infoPosteo %>% filter(dia==i) %>% 
#   select(likes_count, comments_count, shares_count,
#          ANGRY, HAHA, LOVE, SAD, WOW) %>% 
#   summarise_each(funs(sum)) %>%  rowSums()
# numeros = c(numeros, x)
# }

interaccionesAldia = infoPosteo %>% filter(dia==2) %>% 
  select(likes_count, comments_count, shares_count,
         ANGRY, HAHA, LOVE, SAD, WOW) %>% 
  summarise_each(funs(sum)) %>%  rowSums()

fansPrimerdia = paste(base, IDSEAT, valor, fans, since,
                      primerdia, until, primerdia,
                      accesoPage, accesstoken, sep="") %>%
  readLines %>% fromJSON %>% unlist %>%  unname %>%  .[3] %>% 
  as.numeric()

engagement = (interaccionesAldia/fansPrimerdia)*100 

engagement = data.frame(Fecha = "2016-04-02", engagement) 

rbind(Engagement, engagement)  %>%  
  write.csv("~/local/experimento_Posteos/datos/diarios/posteos/engagement.csv",
            row.names=F)
