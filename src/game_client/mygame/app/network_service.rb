class NetworkService
  def initialize(room)
    @mock_mode = true
    @room = room
  end

  def attempt_move(entity, dx, dy)
    if @mock_mode
      rect = entity.rect

      @room.walls.each do |wall|
        if rect.merge({ x: rect.x + dx }).intersect_rect?(wall)
          dx = dx > 0 ? (wall.left - rect.right) : (wall.right - rect.left)
        end
        if rect.merge({ x: rect.x + dx, y: rect.y + dy }).intersect_rect?(wall)
          dy = dy > 0 ? (wall.bottom - rect.top) : (wall.top - rect.bottom)
        end
      end

      { status: :ok, x: rect.x + dx, y: rect.y + dy }
    end
  end
end