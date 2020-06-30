class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string   "name"
      t.string   "person"
      t.string   "post"
      t.string   "address1"
      t.string   "address2"
      t.string   "tel1"
      t.string   "tel2"
      t.string   "fax"
      t.string   "mail"
      t.string   "post_address"
      t.timestamps
    end
  end
end
