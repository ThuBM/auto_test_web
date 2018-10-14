FactoryGirl.define do
  factory :element do
    sequence(:name){|n| "Element_#{n}"}
    selector_type{Element.selector_types[:default]}
    selector_value "html_element_selector"

    trait :with_id do
      selector_type{Element.selector_types[:html_id]}
      selector_value "html_element_id"
    end

    trait :with_name do
      selector_type{Element.selector_types[:html_name]}
      selector_value "html_element_name"
    end
  end
end
