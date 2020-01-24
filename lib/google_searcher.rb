require 'launchy'

#This def will check if the ARGV is full or not. If its not, it will puts an Error Message.
def check_if_user_gave_input

  abort("Missing input : You have to tell me what to search on Google, dude!") if ARGV.empty?
end


#This def will put the ARGV into a variable (search_phrase), set this variable as an array (to_a) then join all my array as a string sentence where words are separated by "+" then return the sentence with "+".
def what_to_search
  search_phrase = ARGV.to_a
  search_phrase_with_plus = search_phrase.join("+")

  return search_phrase_with_plus
end

#This def will set the url by concatenate the common part of all urls search (https://www.google.com/search?q=) and what is return in what_to_search (word+word+word)
def url
  url_is = ""
  url_is = "https://www.google.com/search?q=#{what_to_search}"
  return url_is
end


#This def will test if my research is empty or not with the other def check_if_user_gave_input then it will put my url into the launchy command
def perform
  check_if_user_gave_input
  Launchy.open("#{url}")
end

perform
