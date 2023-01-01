require 'active_record'

# def sql_func(id)
#     sql = "Select * from users WHERE id=1;"
#     records_array = ActiveRecord::Base.connection.execute(sql)
#     return records_array
# end

class UsersController < ApplicationController
    def self.get_info(request)
        # users = User.where("id like '%#{request.id}%'")
        Users::UserReply.new(nickname: "miji", phone: "010-9223-7187", manner: 36.5)
    end

    def self.change_manner(request)
        # @user = User.find(request.id)
        Users::MannerReply.new(message: "miji")
    end
end