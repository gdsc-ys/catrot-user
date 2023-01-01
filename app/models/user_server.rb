this_dir = File.expand_path(File.dirname(__FILE__))
lib_dir = File.join(this_dir, 'lib')
$LOAD_PATH.unshift(lib_dir) unless $LOAD_PATH.include?(lib_dir)


require 'grpc'
require 'users_services_pb'

class UsersServer < Users::Functions::Service
    def get_info(request, _unused_call)
        Users::UserReply.new(nickname: "miji", phone: "010-9223-7187", manner: 36.5)
    end
  
    def change_manner(request, _unused_call)
        Users::MannerReply.new(message: "miji")
    end
end


def main
    s = GRPC::RpcServer.new
    s.add_http2_port('0.0.0.0:50051', :this_port_is_insecure)
    s.handle(UsersServer)
    # Runs the server with SIGHUP, SIGINT and SIGTERM signal handlers to
    #   gracefully shutdown.
    # User could also choose to run server via call to run_till_terminated
    s.run_till_terminated_or_interrupted([1, 'int', 'SIGTERM'])
end
  
main