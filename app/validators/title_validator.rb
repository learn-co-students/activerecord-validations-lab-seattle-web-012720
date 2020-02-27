class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title.nil?
            record.errors[:title] << "Needs a title"
        else
            unless record.title.match? /Won't Believe|Secret|Top [0-9]|Guess/
            record.errors[:title] << "Only clickbaity titles!"
            end
        end
      end
    end