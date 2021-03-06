# frozen_string_literal: true

# Current attributes
class Current < ActiveSupport::CurrentAttributes
  attribute :company, :company_id
  attribute :user

  resets { Time.zone = nil }

  def company=(company)
    super
    Time.zone = company.company_setting.time_zone
  end

  def company_id=(company_id)
    super
    self.company = Company.find_by(id: company_id)
  end

  def company_id
    super || company&.id
  end
end
