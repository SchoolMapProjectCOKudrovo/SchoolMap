import pyodbc

connection_string = 'DRIVER={SQL Server};SERVER=.;DATABASE=KARTA'
connection = pyodbc.connect(connection_string)
cursor = connection.cursor()

cursor.execute('select * from [USER]')
result = cursor.fetchall()
print(result)