def convert_to_object(arg1)
  if md = arg1.match(/^'([^']*)'$/)
    md[1]
  else
    Integer(arg1)
  end
end

Given(/^the operands (.+) and (.+)$/) do |arg1, arg2|
  @op1 = convert_to_object(arg1)
  @op2 = convert_to_object(arg2)
end

When(/^the two are processed using (\w+)$/) do |operation|
  @op = operation
end

Then(/^the result should be (.+)$/) do |result|
  service = BOAAS.new
  expect(service.calculate(@op1, @op2, @op).to_s).to eq result
end
