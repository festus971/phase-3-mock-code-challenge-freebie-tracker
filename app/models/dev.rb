class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one(item_name)
        if(Freebie.find_by(item_name:item_name) == self.freebies)
            true
        else
            false
        end
    end

end
