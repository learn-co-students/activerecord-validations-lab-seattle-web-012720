class RecordValidator < ActiveModel::Validator

    def validate(record)
        if record.title !=nil
        unless record.title.match?(/(Won't Believe|Secret|Top|Guess)/)
          record.errors[:title] << "please add a clickbait"
        end
    end
    end


end
   