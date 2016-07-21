class Person
  def initialize distance

  end
  def messages
    ['Ice man at position 1100']
  end
end

class MOINI
  def register_user person

  end

  def register_iceman iceman

  end
end

class IceMan
  def initialize position: pos

  end

  def move_to new_pos

  end
end

When(/^Imogen sets her walking distance for MOINI to (\d+)m$/) do |dist|
  @moini = MOINI.new
  @imogen = Person.new distance: 1200
  @moini.register_user @imogen
end

And(/^there is an ice man close enough$/) do
  @location = 80
  @iceman = IceMan.new(position: @location)
  @moini.register_iceman @iceman
end

Then(/^Imogen receives a message where the iceman is exactly$/) do
  # expect Imogen to be notified when iceman is moved into imogens range
  @iceman.move_to 1100
  expect(@imogen.messages).to include "Ice man at position 1100"
end


And(/^the iceman is out of range, no message is sent$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^the iceman stays out of range$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^no message is sent$/) do
  pending # Write code here that turns the phrase above into concrete actions
end