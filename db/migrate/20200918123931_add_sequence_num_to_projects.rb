class AddSequenceNumToProjects < ActiveRecord::Migration[6.0]
  def self.up
    add_column :projects, :sequence_num, :integer,:null=>false
    update_sequence_num_values
    add_index :projects, [:sequence_num,:company_id], :unique=>true
  end

  def self.down
    remove_index :projects, column: [:sequence_num, :company_id]
    remove_column :projects, :sequence_num
  end

  def self.update_sequence_num_values
    Company.all.each do |parent|
      count = 1
      parent.projects.order('created_at').all.each do |num|
        nested.sequence_num = cntr
        count += 1
        num.save
      end
    end
  end
end
