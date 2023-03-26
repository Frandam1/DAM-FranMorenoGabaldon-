import mysql.connector as my

try:
    mibd = my.connect(
        host = "localhost",
        user = "root",
        password = ""
        )
    print(mibd)
except:
    print("error")
