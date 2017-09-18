class Item < ApplicationRecord

  def to_param
    "#{id}-item"
  end

  def image_url
    mountain = (id % 2).zero? ? "mountains" : "mountains-4"
    "https://raw.githubusercontent.com/thoughtbot/refills/master/source/images/#{mountain}.png"
  end

end
