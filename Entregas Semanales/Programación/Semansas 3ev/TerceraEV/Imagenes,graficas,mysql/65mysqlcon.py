import mysql.connector as my
try:

    mibd = my.connect(
            host = "localhost",
            user = "root",
            password = "",
            database = "cursopython"
            )
    #print(mibd)

    micursor = mibd.cursor()

    micursor.execute("INSERT INTO personas VALUES (NULL,'ana','545235423','ana@correo.com')")
    mibd.commit()
    

except:
    print("error")

    

