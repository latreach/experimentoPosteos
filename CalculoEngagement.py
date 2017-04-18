'''
Comenzando el script para el cálculo de Engagement de SEAT
'''

##Librerías
import facebook
import pandas as pd
import numpy as np
import sys
import datetime
import itertools
from itertools import chain
from datetime import timedelta, date, datetime 
from __future__ import division
import requests


######ACCESS_TOKEN
token ="tu_token"
api= facebook.GrapAPI(token)


date_format = "%Y-%m-%d"
fecha1 = datetime.strptime("2017-01-01", date_format)
fecha2 = datetime.strptime("2017-01-20", date_format)
diferencia = fecha2 - fecha1
diferencia.days()
date_format2 = "%Y-%m-%d %H:%M:%S+0000"


###test 
idSeat = 113144262054871


urltest = "".join([idSeat,
                   "/posts?fields=comments.summary(total_count).limit(0).as(comments)"])

objeto = api.get_object(urltest)
next = objeto["paging"]["next"]
requests.get(next).json()

data = objeto["data"]



def posteos(ID, since=None, until=None, token=None):
    url = "".join([ID,
                   "/posts?fields=comments,summary(total_count).limit(0).as(comments)"])
    url = "".join([url,"&since=", since,"&until=", until])
    return(url)




