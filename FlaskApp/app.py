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
             db = "RSOsaurusDB")

cursor = conn.cursor()

@app.route("/")
def main():
    cursor.execute("SELECT * FROM rsoInfo")
    return (str(cursor.rowcount))

if __name__ == "__main__":
    app.run()