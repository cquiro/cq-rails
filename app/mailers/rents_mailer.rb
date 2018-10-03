class RentsMailer < ApplicationMailer
  def send_new_rent_email(rent_id)
    get_rental_data(rent_id)
    set_locale

    mail(to: @user.email, subject: t('rents_mailer.new_rent.subject'))
  end

  def send_rent_due_email(rent_id)
    get_rental_data(rent_id)
    set_locale

    mail(to: @user.email, subject: t('rents_mailer.rent_due.subject'))
  end

  private

  def get_rental_data(rent_id)
    @rent = Rent.find(rent_id)
    @user = @rent.user
    @book = @rent.book
  end

  def set_locale
    I18n.locale = @user.locale || I18n.default_locale
  end
end
