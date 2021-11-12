class AddStyleToProducts < ActiveRecord::Migration[6.1]
  def change
    add_reference :products, :style
  end
end
