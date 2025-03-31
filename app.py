from flask import Flask

# Initialize the Flask application
app = Flask(__name__)

# Route for the home page
@app.route('/')
def hello_world():
    return 'Hello, World!!'

# Run the application on port 80
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80, debug=True)
