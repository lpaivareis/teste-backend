class ContactMessageConsumer < Racecar::Consumer
  subscribes_to "contacts_message"

  def process(message)
    data = JSON.parse(message.value)

    log = Logs.new(
      name: data["name"],
      email: data["email"],
      sysdate: data["created_at"]
    )

    log.save
  end
end