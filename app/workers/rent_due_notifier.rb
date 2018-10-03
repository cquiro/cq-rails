class RentDueNotifier
  include Sidekiq::Worker

  def perform
    Rent.where(id: rent_ids).find_each do |rent|
      RentsMailer.send_rent_due_email(rent.id).deliver_later
    end
  end

  private

  def rent_ids
    Rent.where(end_date: Date.current.beginning_of_day..Date.current.end_of_day)
  end
end
