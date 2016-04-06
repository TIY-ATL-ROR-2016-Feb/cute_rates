class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  validates_presence_of :user_id, :post_id
  validates :score, presence: true, inclusion: {
              in: (1..10).to_a,
              message: "must be between 1 and 10"
            }

  # validates :score, numericality: {
  #             greater_than_or_equal_to: 1,
  #             less_than_or_equal_to: 10
  #           }
end
