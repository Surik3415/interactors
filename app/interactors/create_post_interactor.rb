# frozen_string_literal: true

class CreatePostInteractor < BaseInteractor
  def call
    post = Post.new(context.params)

    if post.save
      context.post = post
    else
      context.fail!(errors: post.errors)
    end
  end
end
