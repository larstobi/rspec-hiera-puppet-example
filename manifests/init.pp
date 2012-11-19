class example {
  notify {
    "foo":
      message => hiera("foo_message"),
  }
}
