class Player
  attr_accessor :x, :y, :w, :h

  def initialize
    @x = 640
    @y = 360
    @w = 32
    @h = 32
    @speed = 5
  end

  def rect
    { x: @x, y: @y, w: @w, h: @h }
  end

  def draw(args)
    args.outputs.solids << {
      x: @x,
      y: @y,
      w: @w,
      h: @h,
      r: 0, g: 0, b: 255
    }
  end

  def handle_input(args, network)
    dx = 0
    dy = 0

    dx -= @speed if args.inputs.left
    dx += @speed if args.inputs.right
    dy += @speed if args.inputs.up
    dy -= @speed if args.inputs.down

    if dx != 0 || dy != 0
      response = network.attempt_move(self, dx, dy)
      if response[:status] == :ok
        @x = response[:x]
        @y = response[:y]
      end
    end
  end
end
