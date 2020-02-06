class AddInfoToQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :questions, :question, :string
    add_column :questions, :full_answer, :string
  end
end
