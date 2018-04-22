class CreateClones < ActiveRecord::Migration[5.1]
  def change
    create_table :clones do |t|
      t.text :content
    end
  end
end
