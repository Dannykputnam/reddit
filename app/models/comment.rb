class Comment < ApplicationRecord
  belongs_to :topic
  # Do some validations
end
