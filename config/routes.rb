Rails.application.routes.draw do
 get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
 root 'blog_post#index'
end
