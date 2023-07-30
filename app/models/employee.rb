class Employee < ApplicationRecord
  GENDERS = { outher: 0, male: 1, famale: 2 }

  enum gender: GENDERS # TODO: よくわからんので調べる

  validates :gender,                      inclusion: { in: GENDERS.keys.concat(GENDERS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :name,                        exclusion: { in: [nil, ""] }
  validates :note,                        exclusion: { in: [nil] }
  validates :department,                  exclusion: { in: [nil] }
  validates :payment ,numericality: true, exclusion: { in: [nil] }
end
