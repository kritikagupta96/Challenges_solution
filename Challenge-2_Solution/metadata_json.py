import requests
import json

#initialization of global variable
temp = {}
metadata_server = "http://169.254.169.254/latest/"
path = {"meta-data/" : ''}

# Created a function that will return the key and list of values from metadata server (instance)

def get_data(serv_key, serv_url):
    vals = requests.get(serv_url).text
    list = [z for z in vals.splitlines()]
    key_str = serv_key                
    return key_str, list

def get_metadata(list, serv_url):
    for l in list:
        if l[-1] != '/':
           api_val = get_data(l, serv_url+l)
           update(path, api_val[0], api_val[1])
        else:
           api_val = get_data(l, serv_url+l)
           temp = { k:[] for k in api_val[1]}
           update(path, api_val[0], temp)
           get_metadata(api_val[1], serv_url+api_val[0])
    return

def get_data(serv_key, serv_url):
    vals = requests.get(serv_url).text
    list = [z for z in vals.splitlines()]
    key_str = serv_key
    return key_str, list

    

# Created a function that will find a key in nested data and set its  value
def update(dicts, serv_key, value):
    for k,d in dicts.items():
        if k == serv_key:
            dicts[k] = value
        elif isinstance(d, dict):
            update(dicts.get(k), serv_key, value)  
        elif not k in dicts.keys():
            dicts.update({ serv_key : value })
    return

# calling get_metadata function
list = ["meta-data/"]
get_metadata(list, metadata_server)

# Converting Python Objects to JSON
json_info = json.dumps(path, indent=4)
print(json_info)
