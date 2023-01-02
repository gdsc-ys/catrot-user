from __future__ import print_function

import logging

import grpc
import users_pb2
import users_pb2_grpc


def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    # print("Will try to greet world ...")
    with grpc.insecure_channel('<host>:50051') as channel:
        stub = users_pb2_grpc.FunctionsStub(channel)
        response = stub.GetInfo(users_pb2.UserRequest(id=2))
        print(response.nickname)
        print(response.manner)
        print(response.phone)
        stub = users_pb2_grpc.FunctionsStub(channel)
        response = stub.ChangeManner(users_pb2.MannerRequest(id=2, amount=3.5, direction="down"))
        print(response.message)


if __name__ == '__main__':
    logging.basicConfig()
    run()
