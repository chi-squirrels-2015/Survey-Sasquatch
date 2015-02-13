class CreateQuestions < ActiveRecord::Migration
  def change
  	create_table :choices do |t|
  	t.string  :content
  	t.integer :survey_id

  	t.timestamps
  	end
  end
end