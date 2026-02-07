require 'app/network_service.rb'
require 'app/player.rb'
require 'app/room.rb'

def tick args
  args.state.player ||= Player.new
  args.state.room ||= Room.new
  args.state.network ||= NetworkService.new(args.state.room)

  args.state.room.draw(args)
  args.state.player.handle_input(args, args.state.network)
  args.state.player.draw(args)
  
  args.outputs.labels << [30, 700, "Mock mode. Use arrow keys to move!"]
end