class RenamePosterUrlInMovies < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :posterurl, :poster_url
  end
end
