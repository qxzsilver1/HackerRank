
def rot13(secret_messages)
  # secret_messages.map {|c| c.tr("a-z", "n-za-m") }
  secret_messages.collect {|c| c.tr("a-z", "n-za-m") }
end
