class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    include ActiveModel::Validations
    validates_with TitleValidator
end

class TitleValidator < ActiveModel::Validator
    def validate(object)
        if object.title
            unless object.title.match?(/(Won't Believe|Secret|Top|Guess)/)
                object.errors[:title] << "Not clickbaity enough!"
            end
        end
    end
end