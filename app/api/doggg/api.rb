class Doggg::API < Grape::API

  format :json
  default_format :json
  prefix 'api'
  version 'v1', using: :path
  default_error_status :'500'

  #mount Movie

  #series
  resource :series do
    desc "returns all series"
    get do
      Series.all
    end

    desc "return :id series"
    params do
      requires :id, type: Integer
    end
    get ':id' do
      Series.find(params[:id])
    end

    desc "return :id series => movies"
    get ':id/movies' do
      Series.find(params[:id]).movies.all
    end
  end

  resource :movies do
    desc "returns all Movies"
    get do
      Movie.all
    end

    desc "return :id movie"
    params do
      requires :id, type: Integer
    end
    get ':id' do
      Movie.find(params[:id])
    end
  end


  resource "users" do
    # es) OK: http://localhost:3000/api/v1/users/1
    desc "returns all users"
    get do
      User.all
    end

    # User name or id 
    # ex) OK: http://localhost:3000/api/v1/users/1
    # ex) OK: http://localhost:3000/api/v1/users/hoge
    desc "return a user name or id"
    params do
#      requires :id, type: Integer
    end
    get ':id' do
      User.find(params[:id])
      #User.find_by_name_or_id(params[:id])
    end
  end

  desc "return self-user data if authenticated"
  params do
    optional :access_token, type: String, desc: "token"
  end
  get :test do
    User.all
  end


  add_swagger_documentation base_path: "/api",
                            api_version: 'v1',
                            hide_documentation_path: true


end
