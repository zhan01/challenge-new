require "administrate/base_dashboard"

class ChallengeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    user: Field::BelongsTo,
    id: Field::Number,
    title: Field::String,
    description: Field::Text,
    deadline: Field::DateTime,
    to_user_id: Field::Number,
    before_photo: Field::String,
    before_video: Field::String,
    after_photo: Field::String,
    after_video: Field::String,
    public: Field::Boolean,
    views: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :user,
    :id,
    :title,
    :description,
    :deadline,
    :to_user_id,
    :before_photo,
    :before_video,
    :after_photo,
    :after_video,
    :public,
    :views,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :user,
    :title,
    :description,
    :deadline,
    :to_user_id,
    :before_photo,
    :before_video,
    :after_photo,
    :after_video,
    :public,
    :views,
  ].freeze

  # Overwrite this method to customize how challenges are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(challenge)
  #   "Challenge ##{challenge.id}"
  # end
end
