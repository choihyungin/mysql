import pymysql

conn = pymysql.connect(
    host = 'localhost', user='root', password='1234',
    db = 'python', charset='utf8'
)
cursor = conn.cursor()
sql = '''DELETE FROM mysql2 
            WHERE ID = %s'''

cursor.execute(sql, (2))

conn.commit()
cursor.close()
conn.close()