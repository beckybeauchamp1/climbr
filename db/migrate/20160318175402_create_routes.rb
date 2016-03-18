class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :title
      t.string :difficulty
      t.string :setter
      t.string :set_date
      t.references :gym, index: true, foreign_key: true
    end
  end
end
