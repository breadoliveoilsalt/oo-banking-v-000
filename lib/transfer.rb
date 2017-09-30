class Transfer
  # your code here
  attr_accessor :status, :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"


  end
  
end
