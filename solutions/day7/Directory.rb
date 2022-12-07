class Directory

  def initialize(name, files, directories)
    @name = name
    @files = files
    @directories = directories
  end

  def size
    @files.sum
  end


end
