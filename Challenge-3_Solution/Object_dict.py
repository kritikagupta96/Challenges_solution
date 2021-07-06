import json
import ast

# Fetch the value of object entered
def output(Obj_data,Obj_path):
    for Obj_key in Obj_path.split("/"):
        if isinstance(Obj_data, (list, tuple)):
           value = Obj_data[int(Obj_key)]
        else:
          if Obj_key in Obj_data:
            value = Obj_data[Obj_key]
          else:
            value = None
            break
        Obj_data = value
    if value is None or value == '':
        return default
    else:
        return value

# object input format - {"p":{"q":{"r":"s"}}}

dict_obj=input("Enter the object (in dict format)")
d = ast.literal_evalue(dict_obj)

# Key format - p/q

Obj_key=input("Enter the key")
print(output(d,Obj_key))
