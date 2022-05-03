from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Flask Dockerized. /otro es otra funcion'


@app.route('/otro')
def hello_other_world():
    return 'Hello other World!'

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0')

