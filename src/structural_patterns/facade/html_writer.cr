# ˅

# ˄

class HtmlWriter
  # ˅

  # ˄

  @file_name : String

  def initialize(file_name : String)
    # ˅
    @file_name = file_name
    # ˄
  end

  # Write a title
  def heading(title : String)
    # ˅
    File.write(@file_name, "<html>", mode: "a")
    File.write(@file_name, "<head><title>#{title}</title></head>", mode: "a")
    File.write(@file_name, "<body>\n", mode: "a")
    File.write(@file_name, "<h1>#{title}</h1>\n", mode: "a")
    # ˄
  end

  # Write a paragraph
  def paragraph(message : String)
    # ˅
    File.write(@file_name, "<p>#{message}</p>\n", mode: "a")
    # ˄
  end

  # Write a mail address
  def mailto(mail_address : String, user_name : String)
    # ˅
    anchor("mailto:#{mail_address}", user_name)
    # ˄
  end

  def close
    # ˅
    File.write(@file_name, "</body>", mode: "a")
    File.write(@file_name, "</html>\n", mode: "a")
    # ˄
  end

  # Write a link
  private def anchor(url : String, text : String)
    # ˅
    paragraph("<a href=\"#{url}\">#{text}</a>")
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
