# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Message.count == 0

    Message.create(m_text: "Ayylmao what is love, baby don't hurt me")
    Message.create(m_text: "We're no strangers to love, you know the rules and so do I")
    Message.create(m_text: "A full commitment's what I'm looking for, you couldn't get this from?")
    Message.create(m_text: "Any other guy!")
    Message.create(m_text: "IIIIIII just wanna tell you how I'm feeling")
    Message.create(m_text: "Just wanna make you understand")
    Message.create(m_text: "Never gonna give you up")
    Message.create(m_text: "Never gonna let you down")
    Message.create(m_text: "Never gonna run around and desert you")

end