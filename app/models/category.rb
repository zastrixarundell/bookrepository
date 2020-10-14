# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Category < ApplicationRecord
end
