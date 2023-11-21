class ChangeReviewedToApprovedInCampaigns < ActiveRecord::Migration[7.0]
  def up
    # First, rename the column
    rename_column :campaigns, :reviewed, :approved

    # Then, change the type to integer with a default value
    change_column :campaigns, :approved, :integer, default: 0

    # Optionally, you can update existing records to set the new enum values if needed
    # Campaign.reset_column_information
    # Campaign.find_each do |campaign|
    #   campaign.update(approved: <appropriate_value_based_on_old_reviewed>)
    # end
  end

  def down
    # Convert back to boolean if rolling back
    change_column :campaigns, :approved, :boolean, default: false
    rename_column :campaigns, :approved, :reviewed
  end
end
