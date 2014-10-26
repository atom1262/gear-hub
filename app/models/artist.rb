class Artist < ActiveRecord::Base
  has_many :gear

  def name
    first_name + ' ' + last_name
  end

end
