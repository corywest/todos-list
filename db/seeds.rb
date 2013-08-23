require_relative '../app/models/task'
require_relative '../app/models/list'

require 'faker'

module TodoSeed
  
  def self.import_tasks
    Task.transaction do  
      10.times do
        Task.create!(
          :content => Faker::Lorem.sentence(word_count = 4),
          :list_id => 1
        )
      end
    end
  end
  
  def self.import_list
    List.transaction do
      List.create!
    end
  end

end

TodoSeed.import_list
TodoSeed.import_tasks
