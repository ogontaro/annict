# frozen_string_literal: true
# == Schema Information
#
# Table name: character_images
#
#  id                      :integer          not null, primary key
#  character_id            :integer          not null
#  user_id                 :integer          not null
#  attachment_file_name    :string           not null
#  attachment_file_size    :integer          not null
#  attachment_content_type :string           not null
#  attachment_updated_at   :datetime         not null
#  copyright               :string           default(""), not null
#  asin                    :string           default(""), not null
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
# Indexes
#
#  index_character_images_on_character_id  (character_id)
#  index_character_images_on_user_id       (user_id)
#

class CharacterImage < ApplicationRecord
  has_attached_file :attachment

  validates :attachment,
    attachment_presence: true,
    attachment_content_type: { content_type: /\Aimage/ }
  validates :asin, asin: true
  validates_with AsinOrCopyrightValidator

  belongs_to :character
  belongs_to :user
end
