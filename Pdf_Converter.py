import pdfkit
from timeit import default_timer as timer

def html_to_pdf():
    path_wkhtmltopdf = r'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
    configuration = pdfkit.configuration(wkhtmltopdf=path_wkhtmltopdf)
    pdfkit.from_file(r'C:\Users\user\PycharmProjects\XmlConverter\templates\myhtml.html',
                     'templates/pdfFiles/out.pdf',configuration=configuration)

