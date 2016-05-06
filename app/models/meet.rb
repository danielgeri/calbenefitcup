class Meet < ActiveRecord::Base
  validates_presence_of :starts_on, :ends_on, :gender, :name

  validate :valid_start_date,
           :valid_end_date,
           :valid_date_range,
           :valid_register_by_date,
           :valid_no_refund_after_date
  
  def valid_start_date
    if starts_on < Date.today
      errors.add(:starts_on, "must be in the future")
    end
  end

  def valid_end_date
    if ends_on < Date.today
      errors.add(:ends_on, "must be in the future")
    end
  end

  def valid_date_range
    if ends_on < starts_on
      errors.add(:ends_on, "must occur after the start date")
    end
  end

  def valid_register_by_date
    if register_by.present? && register_by > starts_on 
      errors.add(:register_by, "must occur before the start date")
    end
  end

  def valid_no_refund_after_date
    if no_refund_after.present? && no_refund_after > starts_on 
      errors.add(:no_refund_after, "must occur before the start date")
    end
  end

  def date_range
    # start = self.
  end
end
