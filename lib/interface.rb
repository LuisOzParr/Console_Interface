require "interface/version"

module Interface

  class Interface
    def initialize
      @top = {
          start:"╔",
          mid:"╦",
          end:"╗",
      }
      @mid = {
          start:"╠",
          mid:"╬",
          end:"╣",
      }
      @bott = {
          start:"╚",
          mid:"╩",
          end:"╝",
      }

      @horizontal = "═"
      @vertical = "║"
    end

  end

  class Margin<Interface
    def initialize
      super
    end

    def create_margin(matrix)
      @matrix = matrix
      @size = @matrix.length

      print_board(@top)
      (0...@size).each do |i|
        print_value(@matrix[i])
      end
      print_board(@bott)
    end

    private
    def print_board(tipe)
      (0...@size).each  do |i|
        if i == 0
          print tipe[:start]
          print @horizontal

        elsif i == @size-1
          print @horizontal
          print tipe[:end]
        else
          print @horizontal
        end
      end
      puts ""
    end

    def print_value(data)
      print @vertical
      (0...@size).each  do |i|
        if data[i] == 1
          print "█"
        else
          print" "
        end
      end
      print @vertical
      puts ""
    end

  end

  class Board < Interface
    def initialize
      super
      @horizontal = @horizontal + @horizontal + @horizontal
    end

    def create_board(matrix)
      @matrix = matrix
      @size = @matrix.length

      print_coor_x
      print_board(@top)
      (0...@size).each do |i|
        print_value(@matrix[i], i)
        unless @size-1 == i
          print_board(@mid)
        end
      end
      print_board(@bott)
    end

    private
    def print_coor_x
      print "  "
      (0...@size).each {|cont| print"  #{cont} "}
      puts ""
    end

    def print_board(tipe)
      print "  "
      (0...@size).each  do |count|
        if count == 0
          print tipe[:start]
          print @horizontal
          print tipe[:mid]
        elsif count == @size-1
          print @horizontal
          print tipe[:end]
        else
          print @horizontal
          print tipe[:mid]
        end
      end
      puts ""
    end

    def print_value(data, index)
      print "#{index} "
      (0...@size).each do |count|
        value = if data[count].nil?
                  :" "
                else
                  data[count]
                end
        print "#{@vertical} #{value} "
      end
      print @vertical
      puts ""
    end
  end
end
