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
             passwd = "root",
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
    _search = request.form['search']
    
    _category = "none"
    if "category" in request.form:
    	_category = request.form['category']

    _time_commitment = "none"
    if "time_commitment" in request.form:
    	_time_commitment = request.form['time_commitment']

    _meeting_time = "none"
    if "meeting_time" in request.form:
    	_meeting_time = request.form['meeting_time']

    _collected_dues = "none"
    if "collected_dues" in request.form:
    	_collected_dues = request.form['collected_dues']

    _level_of_activity = "none"
    if "level_of_activity" in request.form:
    	_level_of_activity = request.form['level_of_activity']

    _longevity = "none"
    if "longevity" in request.form:
    	_longevity = request.form['longevity']

    _recruitment_process = "none"
    if "recruitment_process" in request.form:
    	_recruitment_process = request.form['recruitment_process']

    #print(_category, _time_commitment, _meeting_time, _collected_dues, _level_of_activity, _longevity, _recruitment_process)
   
    query = (
	  "SELECT * FROM rsoInfo WHERE name like %s"
	)
    cursor.execute(query, ["%"+_search+"%"])
    data = cursor.fetchall()
    return render_template('temp.html', data = data)

if __name__ == "__main__":
    app.run()