class NewRentEmailWorker
  include Sidekiq::Worker

  def perform(rent_id)
    RentsMailer.send_new_rent_email(rent_id).deliver_later
  end
end
