from flask import Flask, render_template
from views import views

app = Flask(__name__)
app.register_blueprint(views, url_prefix='/')
app.config['SEND_FILE_MAX_AGE_DEFAULT']=0

if __name__ == "__main__":
    print("Starting admindash-low flask application...")
    # app.run(debug=True, host="0.0.0.0", port=5000)
    app.run(debug=False, host="0.0.0.0", port=5000)
