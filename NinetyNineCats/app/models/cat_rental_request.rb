class CatRentalRequest < ActiveRecord::Base
  validates :cat_id, :start_date, :end_date, :status, presence: true
  validate :overlapping_approved_requests

  belongs_to :cat

  def approve!
    CatRentalRequest.transaction do
      self.status = "APPROVED"
      self.save!
      overlapping_pending_requests.update_all(status: "DENIED")
    end
  end

  def overlapping_requests
    CatRentalRequest
    .where("id != ? AND cat_id = ? AND ((start_date BETWEEN ? AND ?) OR (end_date BETWEEN ? AND ?))",
    self.id, self.cat_id, self.start_date, self.end_date,
    self.start_date, self.end_date)
  end

  def overlapping_approved_requests
    if self.overlapping_requests.exists?(status: "APPROVED")
      self.errors[:date] << "overlap with previous approved request"
    end
  end

  def overlapping_pending_requests
    self.overlapping_requests.where(status: "PENDING")
  end

  def deny!
    self.status = "DENIED"
    self.save!
  end
end
