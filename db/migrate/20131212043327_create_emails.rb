class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :emailid

      t.timestamps
    end
  end
end
