import os
import datetime

file= "/home/perezchavez/logs.txt"
file_stats =os.stat(file)

if file_stats.st_size >= 10000000:
    print("si entro")
    x= datetime.datetime.now()
    new_name="logs_"+(x.strftime('%x')+"_"+(x.strftime('%X')))
    os.rename('logs.txt', str(new_name))
    f = open("logs.txt","x")
