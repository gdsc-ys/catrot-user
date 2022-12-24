class Members::RegistersController < Devise::RegistrationsController
    def new
      @user = User.new()
    end
      
    def create
      super
    end

    def edit
      # @user = User.find(params[:id])
    end
  
    def update
      if @user.update(user_params)
        redirect_to root_path
      else
        render :edit_user
      end
    end

    private
    def user_params
      params.require(:user).permit(:nickname, :email, :image)
    end
end
