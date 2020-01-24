import pymysql

conn = None

try:
    conn = pymysql.connect(
        host = 'localhost', user='root', password='1234',
        db = 'python', charset='utf8'
    )

    with conn.cursor() as cursor:
        sql = '''CREATE TABLE mysql2 (
                    id INTEGER PRIMARY KEY AUTO_INCREMENT,
                    title VARCHAR(100), content VARCHAR(100))'''
        cursor.execute(sql)
        conn.commit()


except pymysql.InternalError as e:
    print(e)

finally:
    if conn:
        conn.close()