# frozen_string_literal: true

class Admin < ApplicationRecord
  has_many :posts
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
