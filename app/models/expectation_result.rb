class ExpectationResult < Action
  enum kind: {
    displayed: 0,
    current_link: 1
  }
end
