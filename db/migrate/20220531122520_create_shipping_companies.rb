class CreateShippingCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_companies do |t|
      t.string :legal_name
      t.string :trade_name
      t.string :domain_name
      t.string :cnpj
      t.text :billing_address
      t.boolean :active

      t.timestamps
    end
  end
end
