class CreatePostings < ActiveRecord::Migration[7.1]
  def change
    create_table :postings do |t|
t.string :nama
t.text :deskripsi

      t.timestamps
    end
  end
end
