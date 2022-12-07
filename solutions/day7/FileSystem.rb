class FileSystem


  def initialize()
    @history = []
    @current_dir = 0
  end

  def parse_command(command, input)
    case command
    when 'cd'
      @current_dir = history.pop(2)[1]
      @history.append input
      @current_dir = @history.last

    when 'ls'
      @current_dir = new Directory()
    end



  end

end