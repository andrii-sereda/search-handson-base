class InstanceType < ApplicationRecord
  belongs_to :resource

  def price_formatted
    "$#{price_cents / 100}.#{price_cents.to_s.last(2)}"
  end
end
