#------INSTRUCTIONS TO RUN-------#
#
# in terminal, run "ruby server.rb"
# open in web browser "localhost:4567"
#
#



require "sinatra"
require "csv"
require "pry"
require "shotgun"

array_of_hashes = []

CSV.foreach('lackp_starting_rosters.csv', headers: true) do |row|

  hash = {}

  hash[:first_name] = row[0]
  hash[:last_name] = row[1]
  hash[:position] = row[2]
  hash[:team] = row[3]

  array_of_hashes << hash


end

#returns a sub_array of the larger passed array from a specified
#beginning index and and end index
def retrieve(array, drop_this_many, print_this_many)
  new_array = array.drop(drop_this_many)

  final_array = new_array.first(print_this_many)

  final_array
end


#array of all the players in SIMPSON SLAMMERS
team_simpsons = retrieve(array_of_hashes,0, 9)
#array of all the players in JETSON JETS
team_jetson = retrieve(array_of_hashes, 9, 9)
#array of all the players in FLINESTONE FIRE
team_flinestone = retrieve(array_of_hashes,20, 7)
#array of all the players in GRIFFIN GOATS
team_griffin = retrieve(array_of_hashes, 27, 10)




#this is just for testing the structure
# count =0

# array_of_hashes.each do |x|
#   count += 1
#   p array_of_hashes[count][:first_name]+" "+array_of_hashes[count][:last_name] +" "+array_of_hashes[count][:position]

# end

#--------------------------------------------#

get '/' do
  @whole_list = array_of_hashes
  erb :whole_list
end

get '/team/:team' do
  @list = []

  array_of_hashes.each do |player|
    if player[:team] == params[:team]
      @list << player
    end
  end

  erb :show

end


# get '/team/Simpson Slammers' do
#   @part_list1 = team_simpsons
#   erb :simpson
# end

# get '/team/Jetson Jets' do
#   @part_list2 = team_jetson
#   erb :jetson
# end

# get '/team/Flinestone Fire' do
#   @part_list3 = team_flinestone
#   erb :flinestone
# end

# get '/team/Griffin Goats' do
#   @part_list4 = team_griffin
#   erb :griffin
# end

