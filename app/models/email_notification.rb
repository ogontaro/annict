# frozen_string_literal: true
# == Schema Information
#
# Table name: email_notifications
#
#  id                         :integer          not null, primary key
#  user_id                    :integer          not null
#  unsubscription_key         :string           not null
#  event_followed_user        :boolean          default(TRUE), not null
#  event_liked_record         :boolean          default(TRUE), not null
#  event_friends_joined       :boolean          default(TRUE), not null
#  event_next_season_came     :boolean          default(TRUE), not null
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  event_favorite_works_added :boolean          default(TRUE), not null
#  event_related_works_added  :boolean          default(TRUE), not null
#
# Indexes
#
#  index_email_notifications_on_unsubscription_key  (unsubscription_key) UNIQUE
#  index_email_notifications_on_user_id             (user_id) UNIQUE
#

class EmailNotification < ApplicationRecord
end
