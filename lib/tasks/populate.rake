FactoryGirl.define do
  factory :project do
    name { Faker::Company.catch_phrase }
  end
end

namespace :db do
  task populate: :environment do
    Project.destroy_all
    10.times { FactoryGirl.create(:project) }
  end
end
