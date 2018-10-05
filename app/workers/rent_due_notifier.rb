class RentDueNotifier
  include Sidekiq::Worker

  def perform
    rents.find_each do |rent|
      RentsMailer.send_rent_due_email(rent.id).deliver_later
    end
  end

  private

  def rents
    Rent.where(end_date: Date.current.beginning_of_day..Date.current.end_of_day)
  end
end
