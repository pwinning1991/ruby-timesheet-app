require "administrate/base_dashboard"

class AdminUserDashboard < Administrate::BaseDashboard
  ATTRIBUTE_TYPES = {
    posts: Field::HasMany,
    id: Field::Number,
    email: Field::String.with_options(searchable: true),
    encrypted_password: Field::String,
    password: Field::String.with_options(searchable: false),
    reset_password_token: Field::String,
    reset_password_sent_at: Field::DateTime,
    remember_created_at: Field::DateTime,
    first_name: Field::String,
    last_name: Field::String,
    type: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    phone: Field::String,
    ssn: Field::Number.with_options(searchable: true),
    company: Field::String,
  }.freeze

  COLLECTION_ATTRIBUTES = [
    :posts,
    :id,
    :email,
    :ssn,
  ].freeze

  SHOW_PAGE_ATTRIBUTES = [
    :ssn,
    :posts,
    :id,
    :email,
    :encrypted_password,
    :reset_password_token,
    :reset_password_sent_at,
    :remember_created_at,
    :first_name,
    :last_name,
    :company,
    :type,
    :created_at,
    :updated_at,
    :phone,
  ].freeze

  FORM_ATTRIBUTES = [
    :ssn,
    :email,
    :password,
    :first_name,
    :last_name,
    :company,
    :phone,
  ].freeze

end

