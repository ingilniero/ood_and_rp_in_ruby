class Post
  attr_reader :title, :date

  def initialize title, date
    @title = title
    @date = date
  end

  def body
    <<-RETURN
    RANDOM TEXT Lorem ipsum dolor sit amet
    consectetur adipisicing elit, sed do eiusmod
    tempor incididunt ut labore et dolore magna aliqua.
    RETURN
  end

  def condensed_format
    metadata
  end

  def full_format
    return_string = metadata
    return_string << "--\n#{body}"
  end

  private

  def metadata
    return_string = "Title: #{title}"
    return_string << "Date: #{date.strftime "%Y/%m/%d"}"
  end
end
