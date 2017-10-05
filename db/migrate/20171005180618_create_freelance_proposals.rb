class CreateFreelanceProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :freelance_proposals do |t|
      t.string :client
      t.string :portfolio_url
      t.string :tools
      t.decimal :estimated_hours
      t.decimal :hourly_rate
      t.integer :weeks_to_complete
      t.string :client_email

      t.timestamps
    end
  end
end
