class Element < ApplicationRecord
  enum selector_type: {
    html_id: 1,
    html_name: 2,
    xpath: 3
  }
end
