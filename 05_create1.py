import pymysql
conn = pymysql.connect(
    host='localhost', user='root', password='1234',
    db='pythondb', charset='utf8')
cursor = conn.cursor()
sql = '''CREATE TABLE ARTICLE (
             ID INTEGER PRIMARY KEY AUTO_INCREMENT,
             TITLE VARCHAR(30),
             CONTENT VARCHAR(30),
             WRITER VARCHAR(30),
             HIT INTEGER,
             C_DATE DATETIME)'''

cursor.execute(sql)
conn.commit()

cursor.close()
conn.close()