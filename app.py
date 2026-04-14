from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    return jsonify({
        "message": "Hello from Docker and Kubernetes!",
        "status": "Running smoothly",
        "instructor": "Firojpaudel"
    })

if __name__ == '__main__':
    # We use 0.0.0.0 so it's accessible outside the container
    app.run(host='0.0.0.0', port=5000)