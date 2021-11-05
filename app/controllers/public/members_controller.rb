class Public::MembersController < ApplicationController

  def show
    @member = current_member
  end

  def edit
  end

  def update
  end

  def unsubscribe
  end

  def withdrawal
  end

 private

  def member_params
    params.require(:member).permit(:last_name, :first_name, :last_name_kana, :last_name_kana, :postal_code, :address, :telephone_number, :email)
  end

end
