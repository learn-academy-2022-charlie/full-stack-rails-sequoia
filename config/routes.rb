Rails.application.routes.draw do
 get 'blog_posts' => 'blog_post#index', as: 'blog_posts'
 get 'blog_posts/new' => 'blog_post#new', as: 'new_blog_post'
 delete 'blog_posts/:id' => 'blog_post#destroy', as: 'delete_blog_post'
 get 'blog_posts/:id' => 'blog_post#show', as: 'blog_post'
 post 'blog_posts' => 'blog_post#create'
 patch 'blog_posts/:id' => 'blog_post#update', as: 'update_blog_post'
 get 'blog_post/update/:id' => 'blog_post#edit', as: 'edit_blog_post'
 root 'blog_post#index'
end


