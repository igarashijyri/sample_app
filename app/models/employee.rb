class Employee < ApplicationRecord
  GENDERS = { outher: 0, male: 1, famale: 2 }

  enum gender: GENDERS # TODO: よくわからんので調べる

  validates :gender,                      inclusion: { in: GENDERS.keys.concat(GENDERS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :name,                        exclusion: { in: [nil, ""] }
  validates :note,                        exclusion: { in: [nil] }
  validates :department,                  exclusion: { in: [nil] }
  validates :payment ,numericality: true, exclusion: { in: [nil] }

  def self.ransackable_attributes(auth_object = nil)
    ["birth", "created_at", "department", "gender", "id", "joined_date", "lock_version", "name", "note", "payment", "updated_at"]
  end
end
