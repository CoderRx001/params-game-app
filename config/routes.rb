Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/query_game_url' => 'params_game#query'
          # the query_game

    get '/name' => 'params_example#name'

    get '/guess' => 'params_example#guess'

    get 'url_segment_params/:this_is_a_key' => 'params_example#url_segment'

    get 'url_segment_names/:this_is_a_key' => 'params_example#url_names_2'

    get '/segment_guess/:turkey' => 'params_example#segment_guess'


end
