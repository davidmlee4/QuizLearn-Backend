class CreateUserLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :user_languages do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :language, null: false, foreign_key: true

      t.timestamps
    end
  end
end
