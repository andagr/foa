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
    # Define how big the sprite should look on screen
    visual_w = 96
    visual_h = 96
    
    # Calculate offset so the sprite is centered over the hitbox
    offset_x = (visual_w - @w) / 2
    offset_y = (visual_h - @h) / 2

    args.outputs.sprites << {
      x: @x - offset_x,
      y: @y - offset_y,
      w: visual_w,
      h: visual_w,
      path: 'sprites/characters/knights/swordman.png',
      tile_x: 0,
      tile_y: 8,
      tile_w: 48,
      tile_h: 48
    }

    args.outputs.borders << { x: @x, y: @y, w: @w, h: @h, r: 255, g: 0, b: 0 }
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
