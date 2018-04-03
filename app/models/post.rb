# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :admin
  validates :title, presence: true
  validates :body, presence: true
end
