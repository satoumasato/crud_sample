class UsersController < ApplicationController
  #一覧画面に対応するアクション
  def index
    @users = User.all
  end
  #新規作成画面に対応するアクション
  def new
  @user = User.new
end

#新規登録するためのアクション
def create
    User.create(user_params)
  end

#詳細情報を表示させるためのアクション
def show
  @user = User.find(params[:id])
end
#削除をするためのアクション
def destroy
    user = User.find(params[:id])
    user.destroy
end

def edit
  @user = User.find(params[:id])
end
#更新するためのアクション
def update
   user = User.find(params[:id])
   user.update(user_params)
 end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
