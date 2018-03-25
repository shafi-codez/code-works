from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello World!'

if __name__ == '__main__':
    app.run(debug=True, use_reloader=True)
    #app.run(host='0.0.0.0', port=80, debug=True)
