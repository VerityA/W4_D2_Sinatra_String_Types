require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative 'models/string_comp'

get '/' do
  erb(:home)
end

get '/palindrome' do
  erb(:palindrome)
end

get '/isogram' do
  erb(:isogram)
end

get '/anagram' do
  erb(:anagram)
end

get '/equal/:string1/:string2' do
  @result = is_equal(params[:string1], params[:string2])
  erb(:result)
end

get '/palindrome/:string1' do
  @result = is_palindrome(params[:string1])
  erb(:result)
end

get '/isogram/:string1' do
  @result = is_isogram(params[:string1])
  erb(:result)
end

get '/anagram/:string1/:string2' do
  @result = is_anagram(params[:string1], params[:string2])
  erb(:result)
end
