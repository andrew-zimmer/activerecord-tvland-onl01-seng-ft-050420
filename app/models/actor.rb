class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :character

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.collect{|obj| "#{obj.name} - #{obj.show.name}"}
    end
end
