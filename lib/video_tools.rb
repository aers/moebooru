require 'streamio-ffmpeg'

class VideoTools
  class Size < Array
    def to_s
      join('x')
    end
  end

  def initialize(path)
    FFMPEG.ffmpeg_binary = '/usr/bin/ffmpeg'
    @movie = FFMPEG::Movie.new(path)
    if valid?
      @width = @movie.width
      @height = @movie.height
    end
  end

  attr_reader :movie

  attr_reader :width
  alias :w :width

  attr_reader :height
  alias :h :height

  def valid?
    return @movie.valid?
  end

  def has_audio?
    if @movie.audio_stream
      return true
    else
      return false
    end
  end

  def allowed_codec?
    if @movie.video_stream
      return ((@movie.video_codec.include? 'h264') && (@movie.container.include? 'mp4')) ||
          ((@movie.video_codec.include? 'vp8') && (@movie.container.include? 'webm'))
    end
  end

  def size
    if valid?
      Size.new([width, height])
    end
  end

  def generate_preview(path, size)
    @movie.screenshot(path, resolution: "#{size[:width]}x#{size[:height]}")
  end
end