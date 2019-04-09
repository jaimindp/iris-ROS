import socket
import sys

COMM_PORT = 9001

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
sock.bind(('localhost', COMM_PORT))
sock.listen(1)

connection, addr = sock.accept()
try:
    connection.sendall(str(sys.argv[1:]).encode('utf-8'))
finally:
    connection.close()
    sock.close()
connection.close()
sock.close()
