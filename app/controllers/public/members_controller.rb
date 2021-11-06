class Public::MembersController < ApplicationController

  def show
    @member = current_member
  end

  def edit
    @memmber = current_member
  end



  def update
    @member = current_member
    @member.updata(member_params)
    redirect_to public_mypage_path(@member)
  end

  def unsubscribe
  end

  def withdrawal
  end

  private

  	def member_params
  		params.require(:member).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :address, :postal_code, :phone_number, :email, :is_deleted)
  	end

end
