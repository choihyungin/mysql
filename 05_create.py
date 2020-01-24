import pymysql
conn = pymysql.connect(
    host='localhost', user='root', password='1234',
    db='pythondb', charset='utf8')
cursor = conn.cursor()
sql = '''CREATE TABLE MEMBER (
            NUM INTEGER PRIMARY KEY AUTO_INCREMENT,
            NAME VARCHAR(30),
            EMAIL VARCHAR(30),
            C_DATE DATETIME)'''

cursor.execute(sql)
conn.commit()

cursor.close()
conn.close()