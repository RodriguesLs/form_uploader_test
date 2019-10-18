class AddDocumentsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :documents, :json
  end
end
