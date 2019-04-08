#!/usr/bin/env python

import socket

class Communication():
    def __init__(self):
        s = self.create_server_socket()

        while True:
            print("listening for TCP data")
            (connection, address) = s.accept()
            print("received TCP data")
            try:
                data = connection.recv(20)
                if data == b'k':
                    print ("shutting down")
                    connection.close()
                else:
                    orientation, speed, distance = eval(data.decode('utf-8'))
                    print(orientation, speed, distance)
            finally:
                connection.close()

    def create_server_socket(self):
        print("creating TCP server socket")
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.bind(('127.0.0.1', 3535))
        s.listen(1)
        return s

if __name__ == '__main__':
    communication = Communication()
