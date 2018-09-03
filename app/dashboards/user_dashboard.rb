require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    challenges: Field::HasMany,
    id: Field::Number,
    first_name: Field::String,
    last_name: Field::String,
    username: Field::String,
    email: Field::String,
    password: Field::String,
    country: Field::String,
    newsletter: Field::Boolean,
    role: Field::Number,
    avatar: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :challenges,
    :id,
    :first_name,
    :last_name,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :challenges,
    :id,
    :first_name,
    :last_name,
    :username,
    :email,
    :password,
    :country,
    :newsletter,
    :role,
    :avatar,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :challenges,
    :first_name,
    :last_name,
    :username,
    :email,
    :password,
    :country,
    :newsletter,
    :role,
    :avatar,
  ].freeze

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end
