class AddLanguageToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :language, :string
  end
end
