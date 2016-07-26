class MOINI

end
class IceMan
  def initialize service, position

  end
  def move_to new_position

  end
end

class User
  def initialize service, dist, position

  end

  def messages
    ["Ice man near!"]
  end
end

Given(/^Imogen sets her walking distance for MOINI to (\d+)m$/) do |dist|
  @dist = dist.to_i
  @moini = MOINI.new
  @imogen = User.new(@moini, @dist, 0)
end

When(/^there is a registered ice man close enough$/) do
  @iceman = IceMan.new @moini, @dist + 100
  @iceman.move_to @dist - 150
end

Then(/^Imogen receives a message where the iceman is exactly$/) do
 expect(@imogen.messages).to include "Ice man near!"
end
