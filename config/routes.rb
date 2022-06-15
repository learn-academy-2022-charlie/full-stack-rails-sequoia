Rails.application.routes.draw do
 get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
 get 'blog_posts/:id' => 'blog_post#show', as: 'blog_post'
 root 'blog_post#index'
end


