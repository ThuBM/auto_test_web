class InteractionAction < Action
  enum kind: {
    input: 0,
    select_multi: 1,
    select_single: 2,
    click: 3,
    access: 4,
    wait: 5
  }
end
