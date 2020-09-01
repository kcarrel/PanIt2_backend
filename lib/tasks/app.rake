namespace :app do 
    task :sample_users => :environment do  
        users = [['Ada Lovelace', 'ada@test.com'], ['Katie Carrel', 'katie@test.com']]
        users.each_with_index do |participant_data, index|
            user = User.create  name: participant_data.first,
                                email: participant_data.second,
                                password: 'test'
        end 
    end

end