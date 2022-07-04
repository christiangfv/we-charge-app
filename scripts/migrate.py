import json
import firebase_admin
from firebase_admin import credentials, firestore

cred = credentials.Certificate("/Users/christianfuentes/GitHub/we-charge-app/scripts/we-charge-97886-9b0813c04005.json")
firebase_admin.initialize_app(cred)

db = firestore.client()
doc_ref = db.collection(u'stations.v1')


# Import data
f = open('charge_stations.json')
data = json.load(f)

# Upload Data
for i in data:
    latitudelist = list(i['latitude'].replace('.',''))
    latitudelist.insert(-5, '.')
    latitude = ''.join(latitudelist)
    longitudelist = list(i['longitude'].replace('.',''))
    longitudelist.insert(-5, '.')
    longitude = ''.join(longitudelist)
    i['latitude'] = latitude
    i['longitude'] = longitude
    doc_ref.add(i)



