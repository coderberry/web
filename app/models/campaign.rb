class Campaign < ApplicationRecord

  STATUSES = {
    0 => "paused",
    1 => "active",
    2 => "archived"
  }

  # extends ...................................................................
  # includes ..................................................................

  # relationships .............................................................
  belongs_to :user

  # validations ...............................................................
  validates :status, presence: true, inclusion: { in: STATUSES.keys }
  validates :name, presence: true
  validates :bid_amount_cents, presence: true
  validates :daily_budget_cents, presence: true
  validates :monthly_budget_cents, presence: true
  validates :redirect_url, presence: true
  validates :total_budget_cents, presence: true

  # callbacks .................................................................
  # scopes ....................................................................

  # additional config (i.e. accepts_nested_attribute_for etc...) ..............
  monetize :bid_amount_cents,                      numericality: { greater_than_or_equal_to: 0 }
  monetize :daily_budget_cents,   allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  monetize :monthly_budget_cents, allow_nil: true, numericality: { greater_than_or_equal_to: 0 }
  monetize :total_budget_cents,   allow_nil: true, numericality: { greater_than_or_equal_to: 0 }

  # class methods .............................................................
  class << self
  end

  # public instance methods ...................................................

  # protected instance methods ................................................
  protected

  # private instance methods ..................................................
  private
end
