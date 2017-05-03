class Item < ApplicationRecord

  def to_param
    "#{id}-item"
  end

end
