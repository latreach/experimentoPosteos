library(magrittr)
c("dplyr","tidyr","lubridate", "Rfacebook") %>% 
  sapply(require, character.only=T)

# Conexión facebook API ---------------------------------------------------
fb_oauth <- fbOAuth(app_id="tuAppId", 
                    app_secret="tuAppSecret", 
                    extended_permissions = TRUE)
save(fb_oauth, file="fb_oauth")
load("~/fb_oauth")
idFB_seat = 113144262054871



# Posteos -----------------------------------------------------------------

# 4 posteos ---------------------------------------------------------------
## Inicio de la base de datos
#Lunes 20 de Febrero 
##10:00 hrs
# id10  = "113144262054871_1266086860093933"
# post10 = getPost(id10, token = fb_oauth, reactions = T)
# infoPost = post10$post 
# fechaPost = infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post= id10) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post= id10) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# infoPost  %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# reacciones  %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# comentarios  %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Continuar con la base de datos
# posteosG = read.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#          header = T) 
# reaccionesG = read.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#          header  = T) 
# 
# comentariosG = read.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#          header= T) 

# posteosG %>% filter(id!="113144262054871_1287659934603292") %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# reaccionesG %>%  filter(ID_post!="113144262054871_1287800261255926") %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# comentariosG %>%  filter(ID_post!="113144262054871_1287800261255926") %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

#13:00 hrs
# id13 = "113144262054871_1266207096748576"
# post13 = getPost(id13, token = fb_oauth, reactions = T)
# infoPost = post13$post 
# fechaPost = infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post= id13) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post= id13) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


#19:05
# id19 = "113144262054871_1266632296706056"
# post19 = getPost(id19, token = fb_oauth, reactions = T, n.reactions = 5000)
# infoPost = post19$post 
# fechaPost = infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post= id19) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post= id19) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



#22:10
# id22 = "113144262054871_1266745153361437"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post22$post 
# fechaPost = infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post= id22) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post= id22) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 
# getPost(id22, token = fb_oauth,
#         reactions = T, n.reactions = 5000)$reactions %>% 
#   group_by(from_type) %>%  tally



##Martes 21 de Febrero
##9:15
# id9 = "113144262054871_1267161369986482"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post9$post 
# fechaPost = infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post= id9) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post= id9) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:10
# id12 = "113144262054871_1267287773307175"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost = post12$post 
# fechaPost = infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post= id12) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post= id12) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:00
# id15= "113144262054871_1267411633294789"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post15$post 
# fechaPost = infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post= id15) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post= id15) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##19:35
# id19 = "113144262054871_1267564529946166"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post19$post 
# fechaPost = infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post= id19) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post= id19) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Miércoles 22 de Febrero
##9:05
# id9 = "113144262054871_1268005193235433"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post9$post 
# fechaPost = infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post= id9) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post= id9) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##14:10
# id14 = "113144262054871_1268201153215837"
# post14 = getPost(id14, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost = post14$post 
# fechaPost = infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post= id14) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post= id14) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:30
# id16 = "113144262054871_1268379489864670"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post16$post 
# fechaPost = infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post= id16) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post= id16) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##22:05
# id22 = "113144262054871_1268484439854175"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost = post22$post 
# fechaPost = infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post= id22) %>% 
#   mutate(FechaPosteo= fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post= id22) %>% 
#   mutate(FechaPosteo= fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Jueves 23 de Febrero
##11:15
# id11 = "113144262054871_1268929599809659"
# post11 = getPost(id11, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post11$post
# fechaPost =  infoPost$created_time
# reacciones = post11$reactions %>%  mutate(ID_post=id11) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post11$comments %>%  mutate(ID_post=id11) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##13:00
# id13 = "113144262054871_1269002849802334"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:10
# id18 = "113144262054871_1269208479781771"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##20:05
# id20 = "113144262054871_1269272476442038"
# post20 = getPost(id20, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post20$post
# fechaPost =  infoPost$created_time
# reacciones = post20$reactions %>%  mutate(ID_post=id20) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post20$comments %>%  mutate(ID_post=id20) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Viernes 24 de Febrero
##8:30
# id8 = "113144262054871_1268887953147157"
# post8 = getPost(id8, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post8$post
# fechaPost =  infoPost$created_time
# reacciones = post8$reactions %>%  mutate(ID_post=id8) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post8$comments %>%  mutate(ID_post=id8) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:35
# id15 = "113144262054871_1270053753030577"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##18:10
# id18 = "113144262054871_1270156233020329"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##21:05
# id21 = "113144262054871_1270269923008960"
# post21 = getPost(id21, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post21$post
# fechaPost =  infoPost$created_time
# reacciones = post21$reactions %>%  mutate(ID_post=id21) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post21$comments %>%  mutate(ID_post=id21) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Sábado 25 de Febrero
##10:30
# id10 = "113144262054871_1270817579620861"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##13:00
# id13 = "113144262054871_1268904279812191"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##16:05
# id16 = "113144262054871_1271058999596719"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post16$post
# fechaPost =  infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post=id16) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post=id16) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##21:10
# id21 = "113144262054871_1271309139571705"
# post21 = getPost(id21, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post21$post
# fechaPost =  infoPost$created_time
# reacciones = post21$reactions %>%  mutate(ID_post=id21) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post21$comments %>%  mutate(ID_post=id21) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Domingo 26 de Febrero
##9:00
# id9 = "113144262054871_1271797286189557"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##12:00
# id12 = "113144262054871_1272014812834471"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:15
# id15 = "113144262054871_1272114819491137"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 
# ##19:05
# id19 = "113144262054871_1272293129473306"
# post19 = getPost(id19, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 



# 4 Posteos verdadero -----------------------------------------------------
##Lunes 27 de Febrero
##10:00
# id10= "113144262054871_1272868962749056"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>% 
#    mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>% 
#    mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#    write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#              row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#    write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#              row.names=F)
# rbind(comentariosG, comentarios) %>% 
#    write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#              row.names=F)

##13:00
# id13= "113144262054871_1272983736070912"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##18:05
# id18= "113144262054871_1273276949374924"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##22:10
# id22= "113144262054871_1269848386384447"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post22$post
# fechaPost =  infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post=id22) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post=id22) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Martes 28 de Febrero
##9:15
#id9= "113144262054871_1274028909299728"
# 
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post22$post
# fechaPost =  infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post=id22) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post=id22) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>% 
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##12:10

##15:00

##19:35


##Miércoles 1 de Marzo

##Jueves 2 de Marzo

##Viernes 3 de Marzo

##Sábado 4 de Marzo

##Domingo 5 de Marzo



# 3 posteos ---------------------------------------------------------------

##Martes 7 de Marzo
##9:15
# id9= "113144262054871_1281528025216483"
# post9 = getPost(id9, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones)
# write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#           row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:10
# id12= "113144262054871_1281692851866667"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
# write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#           row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##18:10
# id18= "113144262054871_1281937465175539"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Miércoles 8 de Marzo
##9:05
# id9 = "113144262054871_1282678625101423"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:30
# id12 = "113144262054871_1282859931749959"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:30
# id18 = "113144262054871_1283206855048600"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Jueves 9 de Marzo
##9:03
# id9 = "113144262054871_1283939708308648"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:03
# id12 = "113144262054871_1284127468289872"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:10
# id18 = "113144262054871_1284397474929538"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Viernes 10 de Marzo
##9:05
# id9 = "113144262054871_1285349468167672"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##15:35
# id15 = "113144262054871_1285643174804968"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:10
# id18="113144262054871_1285738424795443"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 

##Sábado 11 de Marzo
##10:30
# id10="113144262054871_1286477298054889"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 

##13:00
# id13 = "113144262054871_1286598141376138"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##16:00
# id16 = "113144262054871_1286295354739750"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post16$post
# fechaPost =  infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post=id16) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post=id16) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Domingo 12 de Marzo  DATOS TRUNCADOS
##12:00
# id12 = "113144262054871_1287659934603292"
# post12 = getPost(id12, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##15:05
# id15 = "113144262054871_1287800261255926"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Lunes 13 de Marzo
##11:20
# id11 = "113144262054871_1288635751172377"
# post11 = getPost(id11, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post11$post
# fechaPost =  infoPost$created_time
# reacciones = post11$reactions %>%  mutate(ID_post=id11) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post11$comments %>%  mutate(ID_post=id11) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##14:53
# id14 = "113144262054871_1288793937823225"
# post14 = getPost(id14, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post14$post
# fechaPost =  infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post=id14) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post=id14) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##19:00
# id19=  "113144262054871_1288605147842104"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Martes 14 de Marzo

##9:15
# id9  =  "113144262054871_1289627327739886"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:10
# id12 =  "113144262054871_1289773464391939"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:00
# id15 =  "113144262054871_1289643001071652"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Miércoles 15 de Marzo
##9:05
# id9= "113144262054871_1290617094307576"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##14:10
# id14 = "113144262054871_1290847774284508"
# post14 = getPost(id14, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post14$post
# fechaPost =  infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post=id14) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post=id14) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##19:00
# id19 = "113144262054871_1291048164264469"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>% 
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>% 
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>% 
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Jueves 16 de Marzo
##11:15
# id11 = "113144262054871_1291679170868035"
# post11 = getPost(id11, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post11$post
# fechaPost =  infoPost$created_time
# reacciones = post11$reactions %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post11$comments %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##13:00
# id13 = "113144262054871_1290634724305813"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##18:10
# id18 = "113144262054871_1291997870836165"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Viernes 17 de Marzo
# id8= "113144262054871_1292613330774619"
# 
# post8 = getPost(id8, token = fb_oauth,
#                    reactions = T, n.reactions = 5000)
# infoPost  = post8$post
# fechaPost =  infoPost$created_time
# reacciones = post8$reactions %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post8$comments %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:35
# id15= "113144262054871_1292993477403271"
# 
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##18:10 
# id18 = "113144262054871_1293120867390532"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 


##Sábado 18 de Marzo
# id10 = "113144262054871_1294007967301822"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id13 = "113144262054871_1294152817287337"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id16 = "113144262054871_1294351923934093"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post16$post
# fechaPost =  infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)




##Domingo 19 de Marzo
# id9 = "113144262054871_1295110943858191"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)




# id12 = "113144262054871_1295282600507692"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id15 = "113144262054871_1295437640492188"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Lunes 20 de Marzo
# id10 ="113144262054871_1296152073754078"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 

# id13 = "113144262054871_1296338077068811"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id19 = "113144262054871_1291613780874574"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##4 POSTEOS
##Martes 21 de Marzo
#9:15
# id9 = "113144262054871_1297259403643345"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##12:10
# id12 = "113144262054871_1297426980293254"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##15:00
# id15 = "113144262054871_1297565243612761"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##19:35
# id19 = "113144262054871_1297757733593512"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Miercoles 22 de Marzo
##9:05
# id9 = "113144262054871_1298321133537172"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##14:10
# id14 = "113144262054871_1298609606841658"
# post14 = getPost(id14, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post14$post
# fechaPost =  infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 

##19:00
# id19 = "113144262054871_1298864920149460"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##22:05
# id22 = "113144262054871_1298994866803132"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post22$post
# fechaPost =  infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Jueves 23 de Marzo
##11:15
# id11 = "113144262054871_1299585536744065"
# post11 = getPost(id11, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post11$post
# fechaPost =  infoPost$created_time
# reacciones = post11$reactions %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post11$comments %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##13:00
# id13 = "113144262054871_1299688700067082"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:10
# id18 = "113144262054871_1299940323375253"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##20:05
# id20 = "113144262054871_1300023713366914"
# post20 = getPost(id20, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post20$post
# fechaPost =  infoPost$created_time
# reacciones = post20$reactions %>%  mutate(ID_post=id20) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post20$comments %>%  mutate(ID_post=id20) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Viernes 24 de Marzo
# id8 = "113144262054871_1300536569982295"
# post8 = getPost(id8, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post8$post
# fechaPost =  infoPost$created_time
# reacciones = post8$reactions %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post8$comments %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
# 
# ##15:35
# id15 = "113144262054871_1300880939947858"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##18:10
# id18 = "113144262054871_1301000069935945"
# post18 = getPost(id18, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##21:05
# id15 = "113144262054871_1301099283259357"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Sábado 25 de Marzo
##10:35
# id10 = "113144262054871_1301645613204724"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##13:00
# id13 = "113144262054871_1301774363191849"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##16:05
# id16 = "113144262054871_1301924133176872"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post16$post
# fechaPost =  infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##21:10
# id21 = "113144262054871_1302146709821281"
# post21 = getPost(id21, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post21$post
# fechaPost =  infoPost$created_time
# reacciones = post21$reactions %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post21$comments %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Domingo 26 de Marzo
# id9 = "113144262054871_1302681536434465"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##12:00
# id12 = "113144262054871_1302831543086131"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##15:05
# id15 = "113144262054871_1303021503067135"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##19:05
# id19 = "113144262054871_1303193626383256"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)





##Lunes 27 de Marzo
##10:00
# id10 = "113144262054871_1303835679652384"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##13:00
# id13 = "113144262054871_1303985982970687"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##19:05
# id19 = "113144262054871_1304268686275750"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##22:10
# id22 = "113144262054871_1304402072929078"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post22$post
# fechaPost =  infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Martes 28 de Marzo
##9:15
# id9 = "113144262054871_1304955852873700"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##12:10
# id12 = "113144262054871_1305090009526951"
# post12 = getPost(id12, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:00
# id15 = "113144262054871_1305220769513875"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##19:35
# id19 = "113144262054871_1305393846163234"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Miercoles 29 de Marzo
##9:05
# id9 = "113144262054871_1305942052775080"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id14 = "113144262054871_1306169502752335"
# post14 = getPost(id14, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post14$post
# fechaPost =  infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id19 = "113144262054871_1306353179400634"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id22 = "113144262054871_1306466809389271"
# post22 = getPost(id22, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post22$post
# fechaPost =  infoPost$created_time
# reacciones = post22$reactions %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post22$comments %>%  mutate(ID_post=id22) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Jueves 30 de Marzo
##11:15
# id11 = "113144262054871_1306971806005438"
# post11 = getPost(id11, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post11$post
# fechaPost =  infoPost$created_time
# reacciones = post11$reactions %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post11$comments %>%  mutate(ID_post=id11) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##13:00
# id13 = "113144262054871_1307042302665055"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##14:15
# id14 = "113144262054871_1306956959340256"
# post14 = getPost(id14, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post14$post
# fechaPost =  infoPost$created_time
# reacciones = post14$reactions %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post14$comments %>%  mutate(ID_post=id14) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##20:05
# id20 = "113144262054871_1307302412639044"
# post20 = getPost(id20, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post20$post
# fechaPost =  infoPost$created_time
# reacciones = post20$reactions %>%  mutate(ID_post=id20) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post20$comments %>%  mutate(ID_post=id20) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Viernes 31 de Marzo
##8:30
# id8 = "113144262054871_1307887939247158"
# post8 = getPost(id8, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post8$post
# fechaPost =  infoPost$created_time
# reacciones = post8$reactions %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post8$comments %>%  mutate(ID_post=id8) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##15:35
# id15 = "113144262054871_1308242602545025"
# post15 = getPost(id15, token = fb_oauth,
#                 reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##18:10
# id18 = "113144262054871_1308338269202125"
# post18 = getPost(id18, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post18$post
# fechaPost =  infoPost$created_time
# reacciones = post18$reactions %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post18$comments %>%  mutate(ID_post=id18) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##21:05
# id21 = "113144262054871_1308460285856590"
# post21 = getPost(id21, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post21$post
# fechaPost =  infoPost$created_time
# reacciones = post21$reactions %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post21$comments %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##Sabado 1 de Abril
##9:10
# id9 = "113144262054871_1309076582461627"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##13:00
# id13 = "113144262054871_1309284885774130"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##16:05
# id16 = "113144262054871_1309417145760904"
# post16 = getPost(id16, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post16$post
# fechaPost =  infoPost$created_time
# reacciones = post16$reactions %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post16$comments %>%  mutate(ID_post=id16) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##21:10
# id21 = "113144262054871_1306994419336510"
# post21 = getPost(id21, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post21$post
# fechaPost =  infoPost$created_time
# reacciones = post21$reactions %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post21$comments %>%  mutate(ID_post=id21) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##Domingo 2 de Abril
##9:00
# id9 = "113144262054871_1310111379024814"
# post9 = getPost(id9, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post9$post
# fechaPost =  infoPost$created_time
# reacciones = post9$reactions %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post9$comments %>%  mutate(ID_post=id9) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)
##12:00
# id12 = "113144262054871_1310271865675432"
# post12 = getPost(id12, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post12$post
# fechaPost =  infoPost$created_time
# reacciones = post12$reactions %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post12$comments %>%  mutate(ID_post=id12) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##15:05
# id15 = "113144262054871_1310422772327008"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


# id19 = "113144262054871_1310611112308174"
# post19 = getPost(id19, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post19$post
# fechaPost =  infoPost$created_time
# reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)



##Lunes  3 de Abril

##10:00
# id10 = "113144262054871_1311219732247312"
# post10 = getPost(id10, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post10$post
# fechaPost =  infoPost$created_time
# reacciones = post10$reactions %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post10$comments %>%  mutate(ID_post=id10) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)


##13:07
# id13 = "113144262054871_1311366282232657"
# post13 = getPost(id13, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post13$post
# fechaPost =  infoPost$created_time
# reacciones = post13$reactions %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post13$comments %>%  mutate(ID_post=id13) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##15:18
# id15 = "113144262054871_1311483358887616"
# post15 = getPost(id15, token = fb_oauth,
#                  reactions = T, n.reactions = 5000)
# infoPost  = post15$post
# fechaPost =  infoPost$created_time
# reacciones = post15$reactions %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo=fechaPost)
# comentarios = post15$comments %>%  mutate(ID_post=id15) %>%
#   mutate(FechaPosteo = fechaPost)
# 
# rbind(posteosG, infoPost) %>%
#   write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
#             row.names=F)
# rbind(reaccionesG, reacciones) %>%
#   write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
#             row.names=F)
# rbind(comentariosG, comentarios) %>%
#   write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
#             row.names=F)

##19:19

id19 = "113144262054871_1311639892205296"
post19 = getPost(id19, token = fb_oauth,
                 reactions = T, n.reactions = 5000)
infoPost  = post19$post
fechaPost =  infoPost$created_time
reacciones = post19$reactions %>%  mutate(ID_post=id19) %>%
  mutate(FechaPosteo=fechaPost)
comentarios = post19$comments %>%  mutate(ID_post=id19) %>%
  mutate(FechaPosteo = fechaPost)

rbind(posteosG, infoPost) %>%
  write.csv("~/local/experimento_Posteos/datos/posteosExperimento.csv",
            row.names=F)
rbind(reaccionesG, reacciones) %>%
  write.csv("~/local/experimento_Posteos/datos/reaccionesExperimento.csv",
            row.names=F)
rbind(comentariosG, comentarios) %>%
  write.csv("~/local/experimento_Posteos/datos/comentariosExperimento.csv",
            row.names=F)
