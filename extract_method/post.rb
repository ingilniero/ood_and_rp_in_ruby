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
    return_string = ''
    return_string << "Title: #{title}"
    return_string << "Date: #{date.strftime "%Y/%m/%d"}"

    return_string
  end

  def full_format
    return_string = ''
    return_string << "Title: #{title}"
    return_string << "Date: #{date.strftime "%Y/%m/%d"}"
    return_string << "--\n#{body}"

    return_string
  end
end
