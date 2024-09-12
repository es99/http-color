import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    color = os.getenv('WEB_COLOR')
    return render_template('index.html', color=color)