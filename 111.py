from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    return "Hello word"


@app.route("/<name>")
def print_name(name):
    return "Hello   " + name


if __name__ == "__main__":
    app.run(debug=True, port=8081)

