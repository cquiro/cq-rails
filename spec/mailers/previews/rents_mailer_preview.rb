# Preview all emails at http://localhost:3000/rails/mailers/rents_mailer
class RentsMailerPreview < ActionMailer::Preview
  def send_new_rent_email
    rent = Rent.first

    RentsMailer.send_new_rent_email(rent.id)
  end
end
