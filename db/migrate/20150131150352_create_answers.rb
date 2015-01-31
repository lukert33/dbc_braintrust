class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user
      t.text       :code
      t.text       :prose

      t.timestamps null: false
    end
  end
end
