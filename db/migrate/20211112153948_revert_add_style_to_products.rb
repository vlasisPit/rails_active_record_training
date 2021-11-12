require_relative '20211111151751_add_style_to_products'

class RevertAddStyleToProducts < ActiveRecord::Migration[6.1]
  def change
    revert AddStyleToProducts
  end
end
