from urllib.request import urlopen
from xml.dom.expatbuilder import parseString
from flask import Flask, render_template, request, redirect, url_for
from random import choice
import string
import mysql.connector

def generate_short_id(num_of_chars: int):
    return ''.join(choice(string.ascii_letters+string.digits) for _ in range(num_of_chars))


db = mysql.connector.connect(
    host = 'academia.c1mebdhdxytu.us-east-1.rds.amazonaws.com',
    user = 'p2',
    password = 'ALrUBIaLYcHR',
    database = 'p2',
    port = '3306'
)
db.autocommit = True # Desactivar el cache

app = Flask(__name__)

@app.get("/")
def index():
    return render_template('index.html')

@app.post("/short")
def crearShort():
    url = request.form.get('url')
    url_short = request.host_url+'short/'+generate_short_id(7)
    cursor = db.cursor()
    cursor.execute("INSERT INTO acortador(url,url_short) VALUES(%s,%s)",(
        url,
        url_short,
    ))
    cursor.close()
    return render_template("index.html",url_short = url_short)

@app.route("/short/<url_short>")
def redirect_url(url_short):
    url_short = request.host_url+'short/'+url_short
    cursor = db.cursor()
    cursor.execute("SELECT url FROM acortador WHERE url_short = %s", (url_short,))
    url = cursor.fetchone()
    if(url != None): return redirect(url[0])
    return redirect(url_for('index'))

# app.run(debug=True)