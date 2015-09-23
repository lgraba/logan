class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :title
      t.text :content
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
