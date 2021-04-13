class Magazine < ActiveRecord::Base
  has_many :subscriptions
  has_many :readers, through: :subscriptions

  def email_list
    self.readers.pluck(:email).join(";")
  end

  def self.most_popular
    s = Subscription.all.group(:magazine_id).count
    s = s.key(s.values.max)
    self.find(s)
  end
end