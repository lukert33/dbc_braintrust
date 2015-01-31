class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text       :prompt
      t.string     :source
      t.references :category

      t.timestamps null: false
    end
  end
end
