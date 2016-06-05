class Meet < ActiveRecord::Base
  has_one :page
  validates_presence_of :starts_on, :ends_on, :gender, :name

  accepts_nested_attributes_for :page, allow_destroy: true
  validate :valid_start_date,
           :valid_end_date,
           :valid_date_range,
           :valid_register_by_date,
           :valid_no_refund_after_date

  def valid_start_date
    errors.add(:starts_on, 'must be in the future') if starts_on < Date.today
  end

  def valid_end_date
    errors.add(:ends_on, 'must be in the future') if ends_on < Date.today
  end

  def valid_date_range
    errors.add(:ends_on, 'must occur after start date') if ends_on < starts_on
  end

  def valid_register_by_date
    if register_by.present? && register_by > starts_on
      errors.add(:register_by, 'must occur before the start date')
    end
  end

  def valid_no_refund_after_date
    if no_refund_after.present? && no_refund_after > starts_on
      errors.add(:no_refund_after, 'must occur before the start date')
    end
  end

  def date_range
    start_month = starts_on.strftime('%B')
    end_month = ends_on.strftime('%B')
    start_date = starts_on.strftime('%-d')
    end_date = ends_on.strftime('%-d')
    if starts_on.strftime('%m') != ends_on.strftime('%m')
      start_month + ' ' + start_date + ' - ' + end_month + ' ' + end_date
    else
      start_month + ' ' + start_date + ' - ' + end_date
    end
  end
end
