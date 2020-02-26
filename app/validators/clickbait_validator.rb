class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record[:title]
            unless record[:title].match?(/(Won't Believe|Secret|Top [0-9]|Guess)/)
                record.errors[:title] << "Your title is not clickbaity enough."
            end
        end
    end
end