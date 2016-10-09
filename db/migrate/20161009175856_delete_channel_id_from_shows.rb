class DeleteChannelIdFromShows < ActiveRecord::Migration[5.0]
  def change
    remove_column :shows, :channel_id
  end
end
