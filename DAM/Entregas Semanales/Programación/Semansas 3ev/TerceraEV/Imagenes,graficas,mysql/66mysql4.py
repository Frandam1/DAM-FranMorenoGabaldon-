import mysql.connector as my

mibd = my.connect(
            host = "localhost",
            user = "root",
            password = "",
            database = "cursopython"
            )
    #print(mibd)

micursor = mibd.cursor()

micursor.execute("SELECT * FROM personas")

miresultado = micursor.fetchall()

for i in miresultado:
    print("mi resultado es :")
    print(i[2])


    

