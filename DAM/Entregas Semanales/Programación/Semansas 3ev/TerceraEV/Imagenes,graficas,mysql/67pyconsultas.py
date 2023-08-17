import mysql.connector as my
import matplotlib.pyplot as plt

mibd = my.connect(
            host = "localhost",
            user = "root",
            password = "",
            database = "cursopython"
            )
    #print(mibd)

micursor = mibd.cursor()

micursor.execute("SELECT "+
        "COUNT(apellido) AS cuenta,"+
        "apellido "+
        "FROM apellidos "+
        "GROUP BY total "+
        "ORDER BY cuenta DESC "+
        "LIMIT 20" )

miresultado = micursor.fetchall()
for i in miresultado:
    print("mi resultado es :")
    print(str(i[1])+ "-"+str(i[0]))
          

labels = 'Frogs', 'Hogs', 'Dogs', 'Logs'
sizes = [15, 30, 45, 10]
explode = (0, 0.1, 0, 0)  # only "explode" the 2nd slice (i.e. 'Hogs')

fig, ax = plt.subplots()
ax.pie(sizes, explode=explode, labels=labels, autopct='%1.1f%%',
        shadow=True, startangle=90)
plt.show()
