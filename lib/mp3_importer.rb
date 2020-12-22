class MP3Importer
    attr_accessor :path

    @@all = []

    def initialize(path)
        @path = path
        @@all << self
    end

    def files
        Dir.chdir(self.path) do
            filenames = Dir.glob("*.mp3")
        end
    end

    def import
        files.each do |filename|
            Song.new_by_filename(filename)
        end 
    end







end