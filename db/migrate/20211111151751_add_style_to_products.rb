class AddStyleToProducts < ActiveRecord::Migration[6.1]
  def up
    add_reference :products, :style
  end

=begin
  # migration will not run because of the exception
  def down
    raise ActiveRecord::IrreversibleMigration
  end
=end

  # this will remove reference
  def down
    remove_reference :products, :style
  end
end
