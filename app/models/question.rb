class Question < ApplicationRecord
  SIMPLE = %i[ text file ]
  COLLECTION = %i[ radio checkbox ]

  belongs_to :form, default: -> { Form.first || Form.create } # That default form is only for testing purposes

  enum input_type: (SIMPLE + COLLECTION).index_by(&:itself)
end
