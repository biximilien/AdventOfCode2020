require './lib/day3/map'

module Day3
  RSpec.describe Map do
    describe "#find_trees_on_path" do
      it "counts the trees on tobogan path" do
        @map_tiles = [
          '..##.......',
          '#...#...#..',
          '.#....#..#.',
          '..#.#...#.#',
          '.#...##..#.',
          '..#.##.....',
          '.#.#.#....#',
          '.#........#',
          '#.##...#...',
          '#...##....#',
          '.#..#...#.#'
        ]

        @map = Map.new(@map_tiles)

        expect(@map.find_trees_on_path(3, 1)).to eq(7)
        expect(@map.trees).to eq(7)
        expect(@map.clear_paths).to eq(3)
        expect(@map.trees + @map.clear_paths).to eq(@map.length - 1)
      end
    end
  end
end
