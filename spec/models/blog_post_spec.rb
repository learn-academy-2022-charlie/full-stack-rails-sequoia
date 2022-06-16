require 'rails_helper'

RSpec.describe BlogPost, type: :model do

  it 'is not valid without a title' do
    post = BlogPost.create title: nil , content: 'Some content'
    expect(post.errors[:title]).to_not be_empty
  end

  it 'is not valid without content' do
    post = BlogPost.create title: 'New Blog Post' , content: nil
    expect(post.errors[:content]).to_not be_empty
  end

  it 'Title must be unique ' do
    BlogPost.create title: 'New Blog Post' , content: 'First Blog Content'
    post = BlogPost.create title: 'New Blog Post' , content: 'Second Blog Content'
    expect(post.errors[:title]).to_not be_empty
  end

  it 'Title must be longer than 10 characters ' do
    post = BlogPost.create title: 'New' , content: 'Second Blog Content'
    expect(post.errors[:title]).to_not be_empty
  end

end
