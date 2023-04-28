import json
empty_values=[]

def printdir(d):
    #print(f"datos recibidos {d}")
    helper_dict={} 
    for key,value in d.items():
        #print(key,' : ',value) 
        if (value == "" ):
            empty_values.append(key)
            #print(f" el valor  {key} esta vacio----------------")

        if (type(value)is dict):
            #print(f"the value is a dict")
            #print(f"entra a ciclo con value {value}")
            helper_dict[key]=value
            printdir(helper_dict[key])
    #print(f"helper {helper_dict}")

f = open ('jsonval.json',"r")


data = json.loads(f.read())

# print(data)
# for key,value in data.items():
#      print(key,' : ',value)
printdir(data)

print(f"The keys that have empty values are {empty_values}")
f.close()

