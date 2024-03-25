class Questions::Collection < Question
  has_many :options, class_name: 'Option', foreign_key: :question_id
end
