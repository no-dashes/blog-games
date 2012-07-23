class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :body
      t.references :post
      t.timestamps
    end
  end
end

__END__

  ...
  post_id integer references posts(id)
  ...
