import socket
import sys

COMM_PORT = 9000

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.bind(('localhost', COMM_PORT))
sock.listen(1)

connection, addr = sock.accept()
try:
    connection.sendall(str(sys.argv[1:]).encode('utf-8'))
finally:
    connection.close()
