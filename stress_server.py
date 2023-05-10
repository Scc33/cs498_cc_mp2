from flask import Flask, request
import subprocess
import socket

app = Flask(__name__)
port = 5000

@app.route('/', methods=['POST'])
def root_get():
    subprocess.Popen(["python3", "stress.py"])
    return "good"

@app.route('/', methods=['GET'])
def root_post():
    return socket.gethostname()

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=port)