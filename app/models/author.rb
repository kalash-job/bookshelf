# frozen_string_literal: true

class Author < ApplicationRecord
  def coordinates
    [rand(90), rand(90)]
  end
end
