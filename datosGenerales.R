# Uso de Web Scraping -----------------------------------------------------

# Librerías ---------------------------------------------------------------
library(magrittr)
c("httr", "XML","rvest","rjson","dplyr","tidyr","lubridate") %>% 
  sapply(require, character.only=T)

####################################
#Creado por Fernando Dorantes Nieto <(°) 
#                                     ( >)"
#                                      /|
####################################

## NOTA 12 de Marzo, DATOS TRUNCADOS 
accesstoken = "EAACEdEose0cBAMS0TX7qSjkYrYZA0ceLi7KZBqhngpVk16EnP7skNRT4w08qRZB1wRkBorNU07BiaGPL53spZCApxLIrlb7PaKRGSoBurgNqSfFQxhQ3v0h9neyMnJYZBSjGgbUokCFEKEIl4IPihFYOrVmB7XJMQcq6uiJFep6gYesc5bPDf3PXVkP2GL88ZD"
## ** NOTA sin este acces_token nada funcionará ^_^ ********
getwd()
#Directorio de trabajo
setwd("~/local/experimento_Posteos/datos/diarios/pagina/")

# Generales Página --------------------------------------------------------
pageFansG            = read.csv("pageFans.csv", header = T)
pageFansG2           = read.csv("pageFans2.csv", header = T)
consumptionsG        = read.csv("consumptions.csv", header = T)
consumptionsG2       = read.csv("consumptions2.csv", header = T)
consumptionsUniqueG  = read.csv("consumptionsUnique.csv", header = T)
consumptionsUniqueG2 = read.csv("consumptionsUnique2.csv",header = T)
engagedUsersG        = read.csv("engagedUsers.csv", header = T)
engagedUsersG2       = read.csv("engagedUsers2.csv",header = T)
fansOnlineG          = read.csv("fansOnline.csv", header = T)
fansOnlineG2         = read.csv("fansOnline2.csv", header = T)
impressionsG         = read.csv("impressions.csv",header = T)
impressionsG2        = read.csv("impressions2.csv",header = T)
impressionsUniqueG   = read.csv("impressionsUnique.csv",header = T)
impressionsUniqueG2  = read.csv("impressionsUnique2.csv",header = T)

# Datos de la cuenta ------------------------------------------------------
base                = "https://graph.facebook.com/v2.8/"
IDSEAT              = "113144262054871"
valor               = "/insights/"
fans                = "page_fans"
fansOnline          = "page_fans_online"
engagedUsers        = "page_engaged_users"
impressions         = "page_impressions"
impressions_unique  = "page_impressions_unique"
consumptions        = "page_consumptions"
consumptions_unique = "page_consumptions_unique"
since               = "?since="
until               = "&until="
inicio              = "2016-02-28" 
# se le sumó un día para que me de los datos del día anterior 
final               = "2016-02-28"
ayer                = "2016-02-27"
accesoPage          = "&access_token="


# Obteniendo datos --------------------------------------------------------
PageFansX = paste(base, IDSEAT, valor, fans, since, inicio, until,final, 
                  accesoPage, accesstoken, sep="") %>% 
            readLines %>% fromJSON %>% unlist %>%  names

PageFansY = paste(base, IDSEAT, valor, fans, since, inicio, until, final, 
                  accesoPage, accesstoken, sep="") %>%
            readLines %>% fromJSON %>% unlist %>%  unname

PageFans = data.frame(PageFansX, PageFansY) %>%  mutate(fecha = ayer)

rbind(pageFansG, PageFans) %>% write.csv("pageFans.csv", row.names = F)

PageFans2 = data.frame(PageFansX, PageFansY)
PageFans2 = PageFans2 %>%  
  spread(PageFansX, PageFansY) %>% mutate(fecha = ayer)

rbind(pageFansG2, PageFans2) %>% 
  write.csv("pageFans2.csv", row.names = F)


FansOnlineX = paste(base, IDSEAT, valor, fansOnline, since, inicio, until, 
                    final, accesoPage, accesstoken, sep="") %>% 
              readLines %>% fromJSON %>% unlist %>%  names

FansOnlineY = paste(base, IDSEAT, valor, fansOnline, since, inicio, until, 
                    final, accesoPage,accesstoken, sep="") %>%  
              readLines %>% fromJSON %>% unlist %>%  unname

FansOnline = data.frame(FansOnlineX, FansOnlineY) %>%  
             mutate(fecha = ayer)

rbind(fansOnlineG, FansOnline) %>% write.csv("fansOnline.csv", row.names = F)

FansOnline2 = data.frame(FansOnlineX, FansOnlineY)

FansOnline2 = FansOnline2 %>%  spread(FansOnlineX, FansOnlineY) %>% 
              mutate(fecha = ayer)

rbind(fansOnlineG2, FansOnline2) %>% write.csv("fansOnline2.csv", row.names = F)

EngagedUsersX = paste(base, IDSEAT, valor, engagedUsers, since, inicio, until,
                      final, accesoPage, accesstoken, sep="") %>%  
                readLines %>% fromJSON %>% unlist %>%  names

EngagedUsersY = paste(base, IDSEAT, valor, engagedUsers, since,inicio, until,
                      final, accesoPage, accesstoken, sep="") %>% 
                readLines %>% fromJSON %>% unlist %>%  unname

EngagedUsers = data.frame(EngagedUsersX, EngagedUsersY) %>% 
                mutate(fecha = ayer)

rbind(engagedUsersG, EngagedUsers) %>% 
  write.csv("engagedUsers.csv", row.names = F)

EngagedUsers2 = data.frame(EngagedUsersX, EngagedUsersY) %>% 
                  mutate(id=1:length(.[,1]))

EngagedUsers2 = EngagedUsers2 %>% spread(EngagedUsersX, EngagedUsersY) %>%
                  mutate(fecha = ayer) 
  
rbind(engagedUsersG2, EngagedUsers2) %>% 
  write.csv("engagedUsers2.csv",row.names = F)


ImpressionsX = paste(base, IDSEAT, valor, impressions, since, inicio, until,
                     final, accesoPage, accesstoken, sep="") %>%
               readLines %>% fromJSON %>% unlist %>%  names

ImpressionsY = paste(base, IDSEAT, valor, impressions, since, inicio, until,
                     final, accesoPage, accesstoken, sep="") %>%  
                readLines %>% fromJSON %>% unlist %>%  unname

Impressions= data.frame(ImpressionsX, ImpressionsY) %>%  
                mutate(fecha = ayer)

rbind(impressionsG, Impressions) %>% write.csv("impressions.csv", row.names = F)

Impressions2 = data.frame(ImpressionsX, ImpressionsY) %>% 
                mutate(id=1:length(.[,1]))

Impressions2 = Impressions2 %>%  spread(ImpressionsX, ImpressionsY) %>%
  mutate(fecha = ayer) 

rbind(impressionsG2, Impressions2) %>%
  write.csv("impressions2.csv", row.names = F)


Impressions_uniqueX = paste(base, IDSEAT, valor, impressions_unique, since, 
                           inicio, until,final, accesoPage, accesstoken, 
                           sep="") %>%  
                      readLines %>% fromJSON %>% unlist %>% names

Impressions_uniqueY = paste(base, IDSEAT, valor, impressions_unique, since, 
                           inicio, until,final, accesoPage, accesstoken, 
                           sep="") %>%  
                      readLines %>% fromJSON %>% unlist %>% unname

Impressions_unique= data.frame(Impressions_uniqueX, Impressions_uniqueY) %>%  
                      mutate(fecha = ayer)

rbind(impressionsUniqueG, Impressions_unique) %>% 
  write.csv("impressionsUnique.csv", row.names = F)

Impressions_unique2 = data.frame(Impressions_uniqueX, Impressions_uniqueY) %>% 
                        mutate(id=1:length(.[,1]))

Impressions_unique2 = Impressions_unique2 %>%  
                        spread(Impressions_uniqueX, Impressions_uniqueY) %>% 
                        mutate(fecha = ayer) 

rbind(impressionsUniqueG2, Impressions_unique2) %>% 
  write.csv("impressionsUnique2.csv", row.names = F)

ConsumptionsX = paste(base, IDSEAT, valor, consumptions, since, inicio, until,
                      final, accesoPage, accesstoken, sep="") %>%  
                readLines %>% fromJSON %>% unlist %>% names

ConsumptionsY = paste(base, IDSEAT, valor, consumptions, since, inicio, until,
                      final, accesoPage, accesstoken, sep="") %>% 
                readLines %>% fromJSON %>% unlist %>% unname

Consumptions= data.frame(ConsumptionsX, ConsumptionsY) %>%  
                mutate(fecha = ayer)

rbind(consumptionsG, Consumptions) %>% 
  write.csv("consumptions.csv", row.names = F)


Consumptions2 = data.frame(ConsumptionsX, ConsumptionsY) %>% 
  mutate(id=1:length(.[,1]))

Consumptions2 = Consumptions2 %>%  
  spread(ConsumptionsX, ConsumptionsY) %>% mutate(fecha = ayer) 

rbind(consumptionsG2, Consumptions2) %>% 
  write.csv("consumptions2.csv",row.names = F)

Consumptions_UniqueX = paste(base, IDSEAT, valor, consumptions_unique, since, 
                             inicio, until,final, accesoPage, accesstoken, 
                             sep="") %>%  
                      readLines %>% fromJSON %>% unlist %>% names

Consumptions_UniqueY = paste(base, IDSEAT, valor, consumptions_unique, since, 
                             inicio, until,final, accesoPage, accesstoken, 
                             sep="") %>%  
                      readLines %>% fromJSON %>% unlist %>% unname


Consumptions_Unique= data.frame(Consumptions_UniqueX, Consumptions_UniqueY) %>%  
                      mutate(fecha = ayer)

rbind(consumptionsUniqueG, Consumptions_Unique) %>% 
  write.csv("consumptionsUnique.csv", row.names = F)


Consumptions_Unique2 = data.frame(Consumptions_UniqueX,Consumptions_UniqueY) %>% 
                        mutate(id=1:length(.[,1]))

Consumptions_Unique2 =  Consumptions_Unique2 %>%  
  spread(Consumptions_UniqueX, Consumptions_UniqueY) %>%
  mutate(fecha = ayer) 

rbind(consumptionsUniqueG2, Consumptions_Unique2) %>%  
  write.csv("consumptionsUnique2.csv", row.names = F)

setwd("~")

# Información de posteos --------------------------------------------------------
setwd("~/local/experimento_Posteos/datos/diarios/posteos")

EngagedPost            = read.csv("engagedPost.csv", header = T)
EngagedPost2           = read.csv("engagedPost2.csv",header = T)
FanReachPost           = read.csv("fanReachPost.csv",header = T)
FanReachPost2          = read.csv("fanReachPost2.csv",header = T)
ImpressionsPost        = read.csv("impressionsPost.csv", header = T)
ImpressionsPost2       = read.csv("impressionsPost2.csv",header = T)
ImpressionsUniquePost  = read.csv("impressionsUniquePost.csv",header = T)
ImpressionsUniquePost2 = read.csv("impressionsUniquePost2.csv",header = T)
ImpressionsFans        = read.csv("impressionsFans.csv",header = T)
ImpressionsFans2       = read.csv("impressionsFans2.csv",header = T)
ImpressionsFanUnique   = read.csv("impressionsFansUnique.csv",header = T)
ImpressionsFanUnique2  = read.csv("impressionsFansUnique2.csv",header = T)


# Datos de posteos --------------------------------------------------------
base                        = "https://graph.facebook.com/v2.8/"
idPosteo                    = "113144262054871_1311639892205296"
impressions_post            = "post_impressions"
impressions_post_unique     = "post_impressions_unique"
impressions_post_fan        = "post_impressions_fan"
impressions_post_fan_unique = "post_impressions_fan_unique"
engaged_post                = "post_engaged_users"
fan_reach_post              = "post_fan_reach"
acceso                      = "?access_token="
valor                       = "/insights/"

engagedPostX  = paste(base, idPosteo, valor, engaged_post, acceso,
                     accesstoken, sep="") %>% 
                readLines %>%  fromJSON %>%  unlist %>%  names

engagedPostY  = paste(base, idPosteo, valor, engaged_post, acceso,
                     accesstoken, sep="") %>% 
                readLines %>%  fromJSON %>%  unlist %>%  unname

engagedPost  = data.frame(engagedPostX, engagedPostY) %>% 
                mutate(idPosteo = idPosteo)

rbind(EngagedPost, engagedPost)  %>%
   write.csv("engagedPost.csv",row.names = F)

engagedPost2  = data.frame(engagedPostX, engagedPostY) %>%  
                  spread(engagedPostX, engagedPostY) %>% 
                  mutate(idPosteo = idPosteo)

rbind(EngagedPost2, engagedPost2) %>%
  write.csv("engagedPost2.csv",row.names=F)


fanReachPostX = paste(base, idPosteo, valor, fan_reach_post, acceso,
                     accesstoken, sep="") %>% 
                readLines %>%  fromJSON %>%  unlist %>%  names

fanReachPostY = paste(base, idPosteo, valor, fan_reach_post, acceso,
                     accesstoken, sep="") %>% 
                readLines %>%  fromJSON %>%  unlist %>%  unname

fanReachPost = data.frame(fanReachPostX, fanReachPostY) %>% 
                 mutate(idPosteo = idPosteo)

rbind(FanReachPost, fanReachPost) %>%  write.csv("fanReachPost.csv",row.names=F)

fanReachPost2 = data.frame(fanReachPostX, fanReachPostY) %>% 
                  spread(fanReachPostX, fanReachPostY) %>%
                  mutate(idPosteo = idPosteo)

rbind(FanReachPost2, fanReachPost2) %>%
  write.csv("fanReachPost2.csv",row.names=F)


impressionsPostX = paste(base, idPosteo, valor, impressions_post, acceso,
                     accesstoken, sep="") %>% 
                    readLines %>%  fromJSON %>%  unlist %>%  names

impressionsPostY = paste(base, idPosteo, valor, impressions_post, acceso,
                     accesstoken, sep="") %>% 
                    readLines %>%  fromJSON %>%  unlist %>%  unname

impressionsPost = data.frame(impressionsPostX, impressionsPostY) %>% 
                    mutate(idPosteo=idPosteo)

rbind(ImpressionsPost, impressionsPost) %>% 
  write.csv("impressionsPost.csv",row.names=F)


impressionsPost2 = data.frame(impressionsPostX, impressionsPostY) %>%
                    spread(impressionsPostX, impressionsPostY) %>%
                    mutate(idPosteo=idPosteo)


rbind(ImpressionsPost2, impressionsPost2) %>% 
  write.csv("impressionsPost2.csv", row.names=F)


impressionsUniquePostX = paste(base, idPosteo, valor, impressions_post_unique,
                               acceso, accesstoken, sep="") %>%
                          readLines %>%  fromJSON %>%  unlist %>%  names


impressionsUniquePostY = paste(base, idPosteo, valor, impressions_post_unique,
                               acceso, accesstoken, sep="") %>% 
                          readLines %>%  fromJSON %>%  unlist %>%  unname

impressionsUniquePost = data.frame(impressionsUniquePostX,
                                   impressionsUniquePostY) %>% 
                        mutate(idPosteo=idPosteo)

rbind(ImpressionsUniquePost, impressionsUniquePost) %>% 
  write.csv("impressionsUniquePost.csv", row.names=F)

impressionsUniquePost2 = data.frame(impressionsUniquePostX,
                                    impressionsUniquePostY) %>% 
                          spread(impressionsUniquePostX,
                                 impressionsUniquePostY) %>% 
                          mutate(idPosteo=idPosteo)

rbind(ImpressionsUniquePost2, impressionsUniquePost2) %>%
   write.csv("impressionsUniquePost2.csv",row.names=F)

impressionsFanX = paste(base, idPosteo, valor, impressions_post_fan, acceso,
                     accesstoken, sep="") %>% 
                  readLines %>%  fromJSON %>%  unlist %>%  names

impressionsFanY = paste(base, idPosteo, valor, impressions_post_fan, acceso,
                     accesstoken, sep="") %>% 
                  readLines %>%  fromJSON %>%  unlist %>%  unname

impressionsFans = data.frame(impressionsFanX, impressionsFanY) %>% 
  mutate(idPosteo= idPosteo)

rbind(ImpressionsFans, impressionsFans) %>% 
  write.csv("impressionsFans.csv", row.names=F)

impressionsFans2 = data.frame(impressionsFanX, impressionsFanY) %>% 
                    spread(impressionsFanX, impressionsFanY) %>% 
                    mutate(idPosteo= idPosteo)

rbind(ImpressionsFans2, impressionsFans2) %>%
  write.csv("impressionsFans2.csv",row.names=F)

impressionsFanUniqueX = paste(base, idPosteo, valor,
                              impressions_post_fan_unique, acceso,accesstoken, 
                              sep="") %>% 
                        readLines %>%  fromJSON %>%  unlist %>%  names

impressionsFanUniqueY = paste(base, idPosteo, valor,
                              impressions_post_fan_unique, acceso,accesstoken,
                              sep="") %>% 
                        readLines %>%  fromJSON %>%  unlist %>%  unname


impressionsFanUnique = data.frame(impressionsFanUniqueX, 
                                  impressionsFanUniqueY) %>% 
                       mutate(idPosteo= idPosteo)

rbind(ImpressionsFanUnique, impressionsFanUnique) %>% 
  write.csv("impressionsFansUnique.csv", row.names=F)

impressionsFanUnique2 = data.frame(impressionsFanUniqueX, 
                                   impressionsFanUniqueY) %>% 
                        spread(impressionsFanUniqueX, impressionsFanUniqueY) %>% 
                        mutate(idPosteo= idPosteo)

rbind(ImpressionsFanUnique2 , impressionsFanUnique2) %>% 
  write.csv("impressionsFansUnique2.csv", row.names=F)

setwd("~")



