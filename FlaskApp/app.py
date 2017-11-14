from flask import Flask, render_template
from flaskext.mysql import MySQL
import MySQLdb as mdb
app = Flask(__name__)

mysql = MySQL()
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_DB'] = 'RSOsaurusDB'
app.config['MYSQL_DATABASE_HOST'] = 'localhost'

conn = mdb.connect( host = "localhost",
             user = "root",
             passwd = "root",
             db = "RSOsaurusDB")

cursor = conn.cursor()

@app.route("/")
def main():
    cursor.execute("SELECT * FROM rsoInfo")
    data = cursor.fetchall()  
    print data
    return render_template('index.html', data = data)

if __name__ == "__main__":
    app.run()