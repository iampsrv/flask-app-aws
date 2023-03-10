from flask import Flask, render_template, request
from upload import *

app = Flask(__name__)
@app.route('/')
def index():
    return 'Web App with Python Flask!'


@app.route("/upload", methods=['POST', 'GET'])
def upload():
    if request.method == 'POST':
        f = request.files['file']
        print(f)
        file_name = upload_my_file(f)
        bucket_name = 'iampsbucket'
        print(file_name)
        print(bucket_name)
        img_src=f"https://{bucket_name}.s3.amazonaws.com/{file_name}"
        print(img_src)
       
        return render_template('uploads3.html', file_name=file_name,img_src=img_src)

if __name__=='__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)