class NetworkService
  def initialize
    @mock_mode = true
  end

  # @param entity [#x, #y] An object that behaves like a movable entity
  # @param dx [Integer]
  # @param dy [Integer]
  # @return [Hash]
  def attempt_move(entity, dx, dy)
    if @mock_mode
      target_x = entity.x + dx
      target_y = entity.y + dy

      { status: :ok, x: target_x, y: target_y }
    end
  end
end