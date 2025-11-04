from flask import Flask
a = Flask(__name__)

@a.route('/')
def h():
    return "Hello from Jenkins CD to EC2"

if __name__ == '__main__':
    a.run(host='0.0.0.0', port=5000)
