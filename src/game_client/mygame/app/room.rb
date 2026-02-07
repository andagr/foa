class Room
  attr_reader :walls

  def initialize
    @walls = [
      # Top wall + opening
      { x: 0,   y: 650, w: 500,  h: 50 },
      { x: 780, y: 650, w: 500,  h: 50 },

      #Bottom wall
      { x: 0,   y: 20,  w: 1280, h: 50 },
      
      # Box in the middle
      { x: 600, y: 200, w: 80,   h: 80 }
    ]
  end

  def draw(args)
    @walls.each do |w|
      args.outputs.solids << w.merge(r: 100, g: 100, b: 100)
    end
  end
end