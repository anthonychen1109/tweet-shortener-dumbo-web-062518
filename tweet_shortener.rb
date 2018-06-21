# Write your code here.

def word_substituter(tweet)
  my_dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  arr = tweet.split(" ")
  keys_arr = my_dict.keys
  new_arr = []
  for i in 0...arr.length
    if keys_arr.include? arr[i]
      new_arr.push(my_dict["#{arr[i]}"])
    else
      new_arr.push(arr[i])
    end
  end
  new_arr.join(' ')
end