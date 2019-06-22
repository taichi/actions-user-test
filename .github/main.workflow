workflow "Sample" {
  on = "push"
  resolves = ["taichi/actions-test"]
}

action "taichi/actions-test" {
  uses = "taichi/actions-test@master"
}
