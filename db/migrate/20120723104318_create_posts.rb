class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.text :body
      t.time :published_at
      t.timestamps
    end
  end
end

__END__

create table posts (
  id         serial primary key,
  title      character varying,
  body       text,
  published_at timestamp without time zone,
  created_at timestamp without time zone,
  updated_at timestamp without time zone,
);
