Rails.application.routes.draw do
    root 'static_pages#home'

    get '/about',    to: 'static_pages#about'
    get '/news',     to: 'static_pages#news'
    get '/join',     to: 'static_pages#join'
    get '/contact',  to: 'static_pages#contact'
    get '/sponsors', to: 'static_pages#sponsors'
    get '/design',   to: 'static_pages#design'
    get '/team',     to: 'static_pages#team'
    get '/support',  to: 'static_pages#support'
end
