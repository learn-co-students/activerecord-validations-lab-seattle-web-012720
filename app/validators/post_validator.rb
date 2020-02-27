class PostValidator < ActiveModel::Validator


    def validate(record)
        if record[:title] 
        unless record[:title].match?(/(Won't Believe|Secret|Top [0-9]|Guess)/)
            record.errors[:title] << "nope!"
        end
     end
    end
end