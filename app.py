from flask import Flask, render_template, request, send_file
from toHtml import xml_to_html
from Pdf_Converter import html_to_pdf

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

ALLOWED_EXTENSIONS = set(['txt', 'xml'])

def allowed_file(filename):
	return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


@app.route('/send', methods=['GET', 'POST'])
def send():
    if request.method == 'POST':
        xml_data = request.files['uploaded_data']
        format = request.form['format']

        if format =='html':
            xml_to_html(xml_data)
            response_html = send_file(r'C:\Users\user\PycharmProjects\XmlConverter\templates\myhtml.html',
                                            attachment_filename='out.html', as_attachment=True)
            return response_html
        else:
            xml_to_html(xml_data)
            html_to_pdf()
            response_pdf = send_file(r'C:\Users\user\PycharmProjects\XmlConverter\templates\pdfFiles\out.pdf',
                                           attachment_filename='out.pdf',as_attachment=True)


        #return render_template('test.html',data = xml_data)
    else:
        print('No')
        return render_template('index.html')
    #xml_to_html(data)




if __name__=='__main__':
    app.run(debug=True)