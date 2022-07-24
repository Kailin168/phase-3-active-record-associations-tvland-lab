class Network < ActiveRecord::Base
  has_many :shows

#shows: should return a list of all the show instances associated with the network.
def shows
  container = []
  self.shows.map do |show|
    if network.id == show.network_id
      container << show
    end
  end
  puts container.inspect
  container
end

def sorry
  "We're sorry about passing on John Mulaney's pilot"
end


end
