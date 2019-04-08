import socket
import sys

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(('127.0.0.1', 3535))

try:
    s.sendall(str(sys.argv[1:]).encode('utf-8'))
finally:
    s.close()
