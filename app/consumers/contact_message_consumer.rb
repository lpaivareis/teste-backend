class ContactMessageConsumer < Racecar::Consumer
  subscribes_to "contacts_message"

  def process(message)
    data = JSON.parse(message.value)

    puts data
  end
end