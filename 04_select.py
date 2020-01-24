import pymysql

conn = pymysql.connect(
    host = 'localhost', user='root', password='1234',
    db = 'python', charset='utf8'
)
cursor = conn.cursor()
sql = '''SELECT * FROM MYSQL2'''

cursor.execute(sql)
result = cursor.fetchall()
print(result)
print(result[0])

conn.commit()
cursor.close()
conn.close()