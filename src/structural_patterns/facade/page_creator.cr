# ˅
require "file_utils"
require "./data_library"
require "./html_writer"

# ˄

class PageCreator
  # ˅

  # ˄

  INSTANCE = new

  private def initialize
    # ˅
    # ˄
  end

  def create_simple_homepage(mail_address : String, html_file_name : String)
    # ˅
    address_book = DataLibrary::INSTANCE.get_properties("addressbook.txt")
    user_name = address_book[mail_address]

    writer = HtmlWriter.new(html_file_name)
    writer.heading("#{user_name}'s homepage")
    writer.paragraph("Welcome to #{user_name}'s homepage.")
    writer.paragraph("Please email me at this address.")
    writer.mailto(mail_address, user_name)
    writer.close
    puts "#{html_file_name} is created for #{mail_address} (#{user_name})"
    puts "Output File: #{FileUtils.pwd}/#{html_file_name}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
