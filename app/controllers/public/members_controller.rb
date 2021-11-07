class Public::MembersController < ApplicationController

  def show
    @member = current_member
  end

  def edit
    @memmber = current_member
  end

  def update
    @member = current_member
    @member.update(member_params)
    redirect_to public_mypage_path(@member)
  end

  def unsubscribe
  end

  def withdrawal
    @member = current_member
    # is_deletedカラムをtrueに変更することにより削除フラグを立てる
    @member.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会処理を実行いたしました"
    redirect_to root_path
  end

  private

  	def member_params
  		params.permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :postal_code, :phone_number, :email, :is_deleted)
  	end

end
