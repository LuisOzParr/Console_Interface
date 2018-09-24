# Interface

Welcome to gem Interface. This gem contain some features that will help you to create tables and margins in console.

## Installation

Download this repository. Open the main folder and run the next command in the console

    gem build interface.gemspec

After run this command

    gem install ./interface-0.0.1.gem.

## Usage

### Usage Board

This class create a board (Table) of n*n

    matrix = [
        [nil,nil,nil],
        [nil,nil,nil],
        [nil,nil,nil]
    ]
    
    board = Interface::Board.new
    board.create_board(matrix)
    
The result or this code is:
    
        0   1   2
      ╔═══╦═══╦═══╗
    0 ║   ║   ║   ║
      ╠═══╬═══╬═══╣
    1 ║   ║   ║   ║
      ╠═══╬═══╬═══╣
    2 ║   ║   ║   ║
      ╚═══╩═══╩═══╝


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/interface. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Interface project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/interface/blob/master/CODE_OF_CONDUCT.md).
