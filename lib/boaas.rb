# Binary Operations as a Service
class BOAAS
  OP_MAP = {
      'addition' => :+,
      'multiplication' => :*
  }.freeze

  def calculate(op1, op2, operation)
    op1.send(OP_MAP[operation], op2)
  end
end
