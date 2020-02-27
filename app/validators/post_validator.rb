require 'pry'
class PostValidator < ActiveModel:: Validator
    def validate(record)
        # binding.pry
        # If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.
        if record.title == nil
            record.errors[:name] << "Fuck off with that bullshit"
        elsif record.title.include?("Won't Believe") == false && record.title.include?("Top") == false && record.title.include?("Secret") == false && record.title.include?("Guess") == false
        
            record.errors[:name] << "Fuck off with that bullshit"
        end
    end
end