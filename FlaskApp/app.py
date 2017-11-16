from flask import Flask, render_template, json, request
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

@app.route("/", methods=['GET'])
def main():
    cursor.execute("SELECT * FROM rsoInfo")
    data = cursor.fetchall()
    return render_template('index.html', data = data)

@app.route('/search', methods=['POST'])
def search():
     # read the posted values from the UI
    # _category = request.form['category']
    _search = request.form['search']
   
    query = (
	  "SELECT * FROM rsoInfo WHERE name like %s"
	)
    cursor.execute(query, ["%"+_search+"%"])
    data = cursor.fetchall()
    return render_template('temp.html', data = data)

@app.route('/rso', methods=['GET'])
def rso():
    print("Loading The Following RSO:")
    name = request.args.get('name')
    print(name)
    query = (("SELECT * FROM rsoInfo WHERE name=\"")+name+"\"")
    cursor.execute(query)
    data = cursor.fetchall()
    return render_template('rso_dummy.html', data=data)

if __name__ == "__main__":
    app.run()