require "./directory"
require "./file_"

# Represents a file system composed of files and directories. FileSystemElement makes
# it possible to treat File and Directory uniformly.

puts "Create a file system..."

bin_dir = Directory.new("bin")
ls_file = File_.new("ls", 20)
bin_dir.add(ls_file)
mkdir_file = File_.new("mkdir", 40)
bin_dir.add(mkdir_file)

emily_dir = Directory.new("emily")
homework_file = File_.new("homework.doc", 60)
emily_dir.add(homework_file)

james_dir = Directory.new("james")
app_file = File_.new("app.exe", 80)
james_dir.add(app_file)

home_dir = Directory.new("home")
home_dir.add(emily_dir)
home_dir.add(james_dir)

root_dir = Directory.new("root")
root_dir.add(home_dir)
root_dir.add(bin_dir)

root_dir.print("")
