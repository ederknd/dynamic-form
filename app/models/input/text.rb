class Input::Text < ApplicationRecord
  has_one :answer, as: :entryable, touch: true
end
