require 'pry'

def my_all1(collection)
  i = 0
  block_return_value = []
  while i < collection.length
    block_return_value << yield(collection[i])
    i += 1
  end
  block_return_value.include?(false) ? false : true
end

def my_all?(collection)
  i = 0
  block_return_value = []
  while i < collection.length
    return false if !yield(collection[i])
    i += 1
  end
  true
end

