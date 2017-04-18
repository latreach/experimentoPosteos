'''
Script diseñado para realizar la descarga de las estadisticas del público de
SEAT  de México, se pretende descargar impresiones hacia los fans y del posteo,
alcance del posteo y enganche del posteo
'''

####################################
#Creado por Fernando Dorantes Nieto <(°) 
#                                     ( >)"
#                                      /|
####################################


##Llamando librerías
import facebook
import pandas as pd
import numpy as np
import re
import sys
import datetime
import itertools
from itertools import chain
from datetime import timedelta,date, datetime
from __future__ import division
import requests

##leyendo el antiguo dataframe
datos = pd.read_csv("/home/datascience/local/experimento_Posteos/datos/diarios/posteos/insigthsPosteos.csv")

##Acceso a la API
token = "tu token"
api = facebook.GraphAPI(token)

date_format = "%Y-%m-%d"
fecha1 = datetime.strptime("2017-01-01", date_format)

idSeat = 113144262054871
idPosteo = "113144262054871_1281528025216483"

valores = ["post_fan_reach","post_engaged_users","post_impressions","post_impressions_unique","post_impressions_fan","post_impressions_fan_unique"]

valoresUnion = ["".join([idPosteo,"/insights/",x]) for x in valores]

def insightPosteo(x):
    insight  = []
    X        = api.get_object(x)
    idPosteo = X["data"][0]["id"]
    nombre   = X["data"][0]["name"]
    valor    = X["data"][0]["values"][0]["value"]
    idPosteo = re.sub("[/].*","",idPosteo)
    temp     = dict(idPosteo = idPosteo)
    temp.update(nombre = nombre, valor= valor)
    insight.append(temp)
    data = pd.DataFrame.from_dict(insight)
    return(data)

insights = [insightPosteo(x) for x in valoresUnion]
insights = pd.concat(insights)

datos.append(insights)

insights.to_csv("datos/diarios/posteos/insightsPosteos.csv", header=True,
                index=False)









