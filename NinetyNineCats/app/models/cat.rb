class Cat < ActiveRecord::Base
  COLORS = %w(black white orange brown grey calico tuxedo)

  validates :color, inclusion: { in: COLORS }
  validates :birth_date, :color, :name, :sex, :presence => true

  has_many :cat_rental_requests, dependent: :destroy

  def age
    cat_age = Time.now.year - self.birth_date.year
    cat_age -= 1 if (Time.now.month - self.birth_date.month) < 0

    cat_age
  end
end
