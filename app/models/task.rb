class Task < ApplicationRecord
  validates :name, presence: true, length: {minimum:2, maximum:32}
  validates :password, presence: true, format: {with: /^[0-9a-zA-Z]+$/, multiline: true}
end
