module Day3
  class Map
    attr_accessor :trees, :clear_paths

    def initialize(map_tiles)
      @map_tiles = map_tiles
      @trees = 0
      @clear_paths = 0
    end

    def find_trees_on_path(right, down)
      @trees = 0
      @clear_paths = 0

      y = 0
      x = 0
      loop do
        x += right
        y += down
        break if y >= @map_tiles.length
        tile = @map_tiles[y][x % @map_tiles[y].length]
        if tile == '#'
          @trees += 1
        elsif tile == '.'
          @clear_paths += 1
        end
      end

      return @trees
    end

    def length
      @map_tiles.length
    end
  end
end
