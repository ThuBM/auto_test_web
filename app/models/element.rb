class Element < ApplicationRecord
  enum selector_type: {
    default: 0,
    html_id: 1,
    html_name: 2
  }
end
