class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record[:title]
            unless record[:title].match?(/(Won't Believe|Secret|Top [0-9]|Guess)/)
                record.errors[:title] << "Your title is clickbait."
            end
        end
    end
end