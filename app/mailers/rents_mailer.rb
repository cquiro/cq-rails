class RentsMailer < ApplicationMailer
  def send_new_rent_email(rent_id)
    @rent = Rent.find(rent_id)
    @user = @rent.user
    @book = @rent.book

    mail(to: @user.email, subject: '¡Has rentado un libro!')
  end
end
