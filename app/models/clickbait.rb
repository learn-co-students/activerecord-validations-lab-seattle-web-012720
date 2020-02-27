class Clickbait < ActiveModel::Validator
    def validate(post)
        if post.title
            unless post.title.match?(/Won't Believe|Secret|Top [0-9]|Guess/)
                post.errors[:title] << "Needs to contain: 'Won't Believe', 'Secret', 'Top [number]', or 'Guess'"
            end
        end
    end
  end