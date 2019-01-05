require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String,
    encrypted_password: Field::String,
    password: Field::String,
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :posts,
    :id,
    :email,
    :encrypted_password,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :posts,
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
    :type,
    :created_at,
    :updated_at,
  ].freeze

  FORM_ATTRIBUTES = [
    :email,
    :password,
    :first_name,
    :last_name,
  ].freeze

end

