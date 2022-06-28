#!/usr/bin/python3

import json
import requests
import os

access_token = os.getenv('TOWER_OAUTH_TOKEN')
headers = {'Content-Type':'application/json', 'Authorization': 'Bearer {}'.format(access_token)}
url_pre = os.getenv('TOWER_HOST')
url = url_pre + '/api/v2/applications/'

result = requests.get(url, headers=headers)

# machine-readable
#print((result).json())

# human readable
pretty_json = json.loads(result.text)
print (json.dumps(pretty_json, indent=2))

