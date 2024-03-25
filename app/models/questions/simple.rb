class Questions::Simple < Question
  after_save_commit :remove_all_collection_options

  def remove_all_collection_options
    Option.where(question_id: self.id).delete_all if type_previously_changed?(to: 'Questions::Simple')
  end
end
