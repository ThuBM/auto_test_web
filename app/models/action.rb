class Action < ApplicationRecord
  belongs_to :element
  belongs_to :group_action
end
