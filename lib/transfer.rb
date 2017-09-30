class Transfer
  # your code here
  attr_accessor :status, :sender, :receiver, :transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @transfer_amount = transfer_amount
    @status = "pending"

  end

  def valid?
    sender.valid? &&  receiver.valid? && sender.balance >= self.transfer_amount
    # do I need to check that sender's balance is ok? -- sender.balance >= sender.ba...
  end

  def execute_transaction
    if self.valid?
      sender.balance -= self.transfer_amount
      receiver.balance += self.transfer_amount
      self.status = "complete"
    elsif !self.valid?
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transaction
    if self.status = "complete"
      self.status = "reversed"
      sender.balance += self.transfer_amount
      receiver.balance -= self.transfer_amount
  end

end
