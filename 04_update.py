import pymysql

conn = pymysql.connect(
    host = 'localhost', user='root', password='1234',
    db = 'python', charset='utf8'
)
cursor = conn.cursor()
sql = '''UPDATE mysql2 SET TITLE = %s
            WHERE ID = %s'''

cursor.execute(sql, ('제목수정됨', '1'))

conn.commit()
cursor.close()
conn.close()