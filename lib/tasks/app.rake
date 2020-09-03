namespace :app do 
    task :sample_users => :environment do  
        users = [['Ada Lovelace', 'ada@test.com'], ['Katie Carrel', 'katie@test.com']]
        users.each do |participant_data|
            user = User.create  name: participant_data.first,
                                email: participant_data.second,
                                password: 'test'
        end 
    end

    task :sample_data => :environment do 
        katie = User.find_by(name: "Katie Carrel")
        if !katie 
            puts "Katie is not a user. Run 'rails app:sample_users`."
            exit
        end

    
        collection = Collection.create(user_id: katie.id)
        items = [['Pro Filtr Soft Matte Longwear Foundation', 'Fenty', 'foundation'],['Pro Filtr Instant Retouch Concealer', 'Fenty', 'concealer'], ['Snap Shadows Palette', 'Fenty', 'eyeshadow']]
        items.each do |item_info|
            Item.create collection_id: collection.id,
                        name: item_info[0],
                        brand: item_info[1],
                        product_type: item_info[2]
        end

    end

end