class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      #ruby rails puts the primary keys in automatically 
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps  #this line of code comes built in but if you delete it then there wont be a timestamp 
    end
  end
end
