#!/usr/bin/python
import SimpleHTTPServer
import SocketServer

PORT = 1234

class MyHandler(SimpleHTTPServer.SimpleHTTPRequestHandler):
  def send_error(self, code, message=None):
    self.path = '/'
    self.do_GET()

httpd = SocketServer.TCPServer(("", PORT), MyHandler)

print "serving at port", PORT
httpd.serve_forever()
