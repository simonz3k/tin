import sqlite3
conn = sqlite3.connect('/home/scott/tintin-desktop/db/3k')

c = conn.cursor()

for row in c.execute("select * from satchel where name like '%cha%';"):
	print(row)



conn.close()
