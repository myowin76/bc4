class Admin::BestPracticeLink < ActiveRecord::Base
  belongs_to :best_practice

  self.table_name = "best_practice_links"
end
