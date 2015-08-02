require 'sinatra/base'
require 'sqlite3'

class FavoriteLinks < Sinatra::Base
  CONNECTION = SQLite3::Database.new("store.sqlite3")

  CONNECTION.execute <<-SQL
    CREATE TABLE IF NOT EXISTS "links"(
      "id" INTEGER PRIMARY KEY AUTOINCREMENT,
      "name" VARCHAR,
      "url" VARCHAR, 
      "description" VARCHAR
    )
SQL

  get '/' do
    @title = "Recent Favorite Links"
    @results = CONNECTION.execute(
      "SELECT id, name, url, description FROM links ORDER BY id DESC limit 10")

    erb :recent_links
  end
  
  get '/links' do
    @title = "Links"
    @results = CONNECTION.execute(
      "SELECT id, name, url, description FROM links ORDER BY id DESC")
    @tablerows 
    
    erb :links
  end


  post '/links' do
    id = params[:id]
    name = params[:name]
    url = params[:url]
    description = params[:description]

    @add_link = CONNECTION.execute(
      "INSERT INTO links (name, url, description) VALUES (?, ?, ?)", 
        [name, url, description])

    redirect "/links"
  end


  get '/links/:id' do
    @title = "Selected Link"
    id = params[:id]
    name = params[:name]
    url = params[:url]
    description = params[:description]

    @results = CONNECTION.execute("
      SELECT id, name, url, description FROM links
      WHERE id=(?)", 
      [id])
    
    erb :link_by_id

  end

end