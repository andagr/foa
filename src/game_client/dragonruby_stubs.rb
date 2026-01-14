# DRAGONRUBY API STUBS (2026 Edition)
# This file is for IDE/Language Server autocomplete only. 
# It is never executed by the DragonRuby engine.

class GTK
  # The main game loop entry point
  # @param args [Args]
  def tick(args); end
  
  # Useful for debugging and system-level calls
  def reset; end
  def stop; end
  def request_quit; end
  def open_url(url); end
end

class Args
  # @return [State] Persisted game state
  attr_reader :state
  # @return [Inputs] User input (keyboard, mouse, controller)
  attr_reader :inputs
  # @return [Outputs] The rendering pipeline
  attr_reader :outputs
  # @return [Grid] Screen and grid dimensions
  attr_reader :grid
  # @return [Audio] Sound and music controls
  attr_reader :audio
  # @return [String] Current frame tick count
  attr_reader :tick_count
  # @return [GTK] Access to engine-level functions
  attr_reader :gtk
end

class State
  # Example: Add your game-specific variables here for autocomplete
  attr_accessor :player, :score, :level_name
end

class Outputs
  # DragonRuby outputs accept Arrays or Hashes. 
  # Hashes are faster and recommended.
  
  # @return [Array<Hash, Array>] 
  # Example: args.outputs.labels << { x: 0, y: 0, text: "hi", size_px: 20 }
  attr_reader :labels
  
  # @return [Array<Hash, Array>] 
  # Example: args.outputs.solids << { x: 0, y: 0, w: 100, h: 100, r: 255 }
  attr_reader :solids
  
  # @return [Array<Hash, Array>]
  attr_reader :sprites, :borders, :lines, :primitives
end

class Inputs
  # @return [Keyboard]
  attr_reader :keyboard
  # @return [Mouse]
  attr_reader :mouse
  # @return [Controller] First connected controller
  attr_reader :controller_one
end

class Mouse
  attr_reader :x, :y, :click, :up, :down, :moved
  # @return [Boolean]
  def inside_rect?(rect); end
end

class Keyboard
  # Common keys
  attr_reader :up, :down, :left, :right, :space, :enter, :escape
  # Key states
  attr_reader :key_down, :key_up, :key_held
end

# Global helper for the main entry point
# @param args [Args]
def tick(args); end