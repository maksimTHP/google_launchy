require 'launchy'

#This def will check if the ARGV is full or not. If its not, it will puts an Error Message.
def check_if_user_gave_input
  abort("Missing input : You have to tell me what to search on Google, dude!") if ARGV.empty?
end


#This def will put the ARGV as a sentence of concatened words joined by + string
def what_to_search
  ARGV.join("+")
end

#This def will set the url by concatenate the common part of all urls search (https://www.google.com/search?q=) and what is return in what_to_search (word+word+word)
def url
  "https://www.google.com/search?q=#{what_to_search}"
end


#This def will test if my research is empty or not with the other def check_if_user_gave_input then it will put my url into the launchy command
def perform
  check_if_user_gave_input
  Launchy.open(url)
end

perform
