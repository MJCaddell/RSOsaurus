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
             #passwd = "root",
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
    res = ""
    query_dims = []
    _search = request.form['search']
    query_dims.append("%"+_search+"%")
    
    _category = "none"
    if "category" in request.form:
    	_category = request.form.getlist('category')
    	x = ', '.join(list(map(lambda x: '%s', _category)))
    	for val in _category:
    		query_dims.append(val)
    	res = res + "AND category IN ("+x+")"
    	
    _time_commitment = "none"
    if "time_commitment" in request.form:
    	_time_commitment = request.form['time_commitment']
    	res = res + "AND timeCommit IN (%s)"
    	query_dims.append(_time_commitment)

    _meeting_time = "none"
    if "meeting_time" in request.form:
    	_meeting_time = request.form.getlist('meeting_time')
    	x = ', '.join(list(map(lambda x: '%s', _meeting_time)))
    	for val in _meeting_time:
    		query_dims.append(val)
    	res = res + "AND meetTime IN ("+x+")"

    _collected_dues = "none"
    if "collected_dues" in request.form:
    	_collected_dues = request.form['collected_dues']
    	res = res + "AND dues IN (%s)"
    	query_dims.append(_collected_dues)

    _level_of_activity = "none"
    if "level_of_activity" in request.form:
    	_level_of_activity = request.form['level_of_activity']
    	res = res + "AND levelActivity IN (%s)"
    	query_dims.append(_level_of_activity)

    _longevity = "none"
    if "longevity" in request.form:
    	_longevity = request.form['longevity']
    	res = res + "AND longevity IN (%s)"
    	query_dims.append(_longevity)

    _recruitment_process = "none"
    if "recruitment_process" in request.form:
    	_recruitment_process = request.form['recruitment_process']
    	res = res + "AND recruitment IN (%s)"
    	query_dims.append(_recruitment_process)

    #print(_category, _time_commitment, _meeting_time, _collected_dues, _level_of_activity, _longevity, _recruitment_process)
   
    query = (
	  "SELECT * FROM rsoInfo WHERE name like %s "+res
	)
    cursor.execute(query, query_dims)

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
    return render_template('rso_dummy_chips.html', data=data)

@app.route('/quiz', methods=['GET'])
def quiz():
    return render_template('quiz.html')

if __name__ == "__main__":
    app.run(host='0.0.0.0')