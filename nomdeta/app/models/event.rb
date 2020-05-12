class Event < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances

    def welcome_event_send
        UserMailer.welcome_event_email(self).deliver_now
      end
end
