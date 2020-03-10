from lxml import etree as et
from timeit import default_timer as timer

def xml_to_html(xml_data):
   #start counting time
   start = timer()

   #parsing the txt file
   parser = et.XMLParser(recover=True)
   xmldata = et.parse(xml_data,parser=parser)


   #parsing xsl file
   xslttext = et.parse('xslt_cop\CompanyAdvancedReport.xslt')
   transform = et.XSLT(xslttext)
   newxsldata = transform(xmldata)

   #creating html file
   with open('templates/myhtml.html', 'wb') as file:
      file.write(newxsldata)

   #finish counting time
   spent_time = timer()
   return str(newxsldata)

