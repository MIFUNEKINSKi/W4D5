require_relative "mystack"
class StackQueue
  def initialize
    @store1 = MyStack.new
    @store2 = MyStack.new
  end 

  def size
    @store1.size + @store2.size
  end 

  def empty?
    @store1.empty? + @store2.empty?
  end 

  def enqueue(item)
   @store1.push(item)
  end 

  def dequeue
    return nil if self.empty?
    #Do the work upfront
    if @store2.empty?
      until @store1.empty?
        @store2.push(@store1.pop)
      end
    end
    @store2.pop
  end 
end 

sq = StackQueue.new 
sq.enqueue(1)
sq.enqueue(2)
sq.enqueue(3)
sq.enqueue(4)
p sq.dequeue
p sq.dequeue
p sq.dequeue
p sq.dequeue