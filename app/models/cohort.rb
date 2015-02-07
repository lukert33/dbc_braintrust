class Cohort < ActiveRecord::Base
  has_many :users

    def self.votesCount
      hash_votes = {}
      self.all.each do |cohort|
        sum = 0
        cohort.users.each do |user|
          user.answers.each do |answer|
            sum+=answer.votes.length
          end
        end
        hash_votes["#{cohort.name}"] = sum
      end
      hash_votes
    end

    def self.max_cohort
      hash_votes=  self.votesCount

    end


end
