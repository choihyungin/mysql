import pymysql

conn = pymysql.connect(
    host = 'localhost', user='root', password='1234',
    db = 'python', charset='utf8'
)
cursor = conn.cursor()
sql = '''INSERT INTO mysql2 (ID, TITLE, CONTENT)
            VALUES(NULL, %s, %s)'''

cursor.execute(sql, ('제목B', '내용3'))

conn.commit()
cursor.close()
conn.close()