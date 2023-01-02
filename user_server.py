from concurrent import futures
import logging

import grpc
import users_pb2
import users_pb2_grpc
import os

import psycopg2

db = psycopg2.connect(
        host="",
        database="",
        user="",
        password="",
)


class UserService(users_pb2_grpc.FunctionsServicer):

    def GetInfo(self, request, context):
        cur = db.cursor()
        cur.execute(f'Select * from users where id={request.id};')
        output = cur.fetchone()
        return users_pb2.UserReply(nickname=output[8], manner=output[10], phone=output[9])

    def ChangeManner(self, request, context):
        cur = db.cursor()
        cur.execute(f'Select * from users where id={request.id};')
        output = cur.fetchone()
        manner = output[10]
        if request.direction == "up":
            cur.execute(f'UPDATE USERS SET MANNER = {manner + request.amount} WHERE id = {request.id};')
            message = f"Your manner is now {manner + request.amount}"
        elif request.direction == "down":
            cur.execute(f'UPDATE USERS SET MANNER = {manner - request.amount} WHERE id = {request.id};')
            message = f"Your manner is now {manner - request.amount}"
        db.commit()
        return users_pb2.MannerReply(message=message)


def serve():
    port = '50051'
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    users_pb2_grpc.add_FunctionsServicer_to_server(UserService(), server)
    server.add_insecure_port('0.0.0.0:' + port)
    server.start()
    print("Server started, listening on " + port)
    server.wait_for_termination()


if __name__ == '__main__':
    logging.basicConfig()
    serve()
