class Answer < ApplicationRecord
  belongs_to :question

  delegated_type :entryable, types: %w[ Input::Text ]
end
