class RemoveQuestionReference < ActiveRecord::Migration[6.0]
  def change
    remove_reference :questions, :quiz, index: true, foreign_key: true
  end
end
