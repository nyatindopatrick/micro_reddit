# frozen_string_literal: true

class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }
  has_many :posts
  has_many :comments
end
