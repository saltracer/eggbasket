class Event < ActiveRecord::Base
  belongs_to :egg_basket
  belongs_to :event_name
end
