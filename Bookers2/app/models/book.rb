class Book < ApplicationRecord

  belongs_to :user

  def change
    create_table :books do |t|

      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end

  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200}

end
