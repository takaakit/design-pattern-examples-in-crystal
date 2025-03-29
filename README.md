[<img src="./screenshots/AllPatterns.svg">](https://raw.githubusercontent.com/takaakit/design-pattern-examples-in-crystal/master/screenshots/AllPatterns.svg)

Design Pattern Examples in Crystal
===

Model and code examples of GoF Design Patterns for Crystal.  
This project is available for the following objectives:  

* To understand GoF Design Pattern examples in Crystal.
* To understand the mapping between UML model and Crystal code.
* To try model-driven development (MDD) using Astah and m plus plug-in.

> UML model example:

![](./screenshots/CompositePattern.svg "Composite Pattern")

<a id="code-example"></a>
> Crystal code example:

```crystal
# ˅
require "./file_system_element"

# ˄

# Since class name of "File" can not be used duplicately, the class name is "File_".
class File_ < FileSystemElement
  # ˅

  # ˄

  @name : String

  @size : Int32

  def initialize(name : String, size : Int32)
    # ˅
    @name = name
    @size = size
    # ˄
  end

  def name : String
    # ˅
    return @name
    # ˄
  end

  def size : Int32
    # ˅
    return @size
    # ˄
  end

  # Print this element with the "upperPath".
  def print(upper_path : String)
    # ˅
    puts "#{upper_path}/#{self.to_s}"
    # ˄
  end

  # ˅
  # ˄
end

# ˅
# ˄
```

Installation on Ubuntu
------------
This has been confirmed on Ubuntu 22.04 / 20.04.2 / 18.04.5, not confirmed on macOS and Windows.

**UML Modeling Tool**
* Download the modeling tool [Astah](https://astah.net/download) UML/Professional **ver.10.0.0** or higher, and install.  
* Download [m plus](https://sites.google.com/view/m-plus-plugin/download) plug-in **ver.3.1.3-preview.1** or higher, and add it to Astah.  
  [How to add plugins to Astah](https://astahblog.com/2014/12/15/astah_plugins/)

**Crystal Development Environment**  
* Install [Crystal](https://crystal-lang.org/install/) ver.1.0.0 or higher.
* Download and install [VS Code](https://code.visualstudio.com/download).  
* Install [Crystal Language](https://marketplace.visualstudio.com/items?itemName=crystal-lang-tools.crystal-lang) and [Native Debug](https://marketplace.visualstudio.com/items?itemName=webfreak.debug) extensions for VS Code.
* Run this command to install the GTK and GDK development packages.  
  Ubuntu 20.04 / 18.04
  ```bash
  sudo apt-get install libgirepository1.0-dev libgtk-3-dev libcairo-gobject2 gir1.2-freedesktop
  ```
  Ubuntu 22.04
  ```bash
  sudo apt-get install libgirepository1.0-dev libgtk-3-dev libcairo-gobject2 gir1.2-freedesktop
  sudo apt-get install gcc pkg-config git tzdata libpcre3-dev libevent-dev libyaml-dev libgmp-dev libssl-dev libxml2-dev
  ```
* Run this command in the project root directory to install [crystal-gobject](https://github.com/jhass/crystal-gobject) and [cairo-gobject](https://github.com/viachpaliy/cairo-gobject) shards.  
  ```bash
  shards install
  ```
  *Note:* The following error (File::AlreadyExistsError) occurs when running the shards command, but the installation seems to succeed.  
  ```bash
  Unhandled exception: Error creating symlink: '..' -> '/path_to_app/lib/cairo-gobject/lib': File exists (File::AlreadyExistsError)
  ```
* If you use Ubuntu18.04 based distributives, uncomment *Rectangle* structure in *lib/cairo-gobject/src/cairo/lib_cairo.cr* file (lines 7...12). *Source:* [cairo-gobject](https://github.com/viachpaliy/cairo-gobject#installation)

Usage on Ubuntu
-----
This has been confirmed on Ubuntu 22.04 / 20.04.2 / 18.04.5, not confirmed on macOS and Windows.

**Code Generation from UML**
  1. Open the Astah file (model/DesignPatternExamplesInCrystal.asta).
  2. Select model elements on the model browser of Astah.
  3. Click the **Generate Code** button.  
  ![](./screenshots/GenerateCode.gif "Generate Code")  
  The generated code has **User Code Area**. The User Code Area is the area enclosed by "˅" and "˄". Handwritten code written in the User Code Area remains after a re-generation. [View code example](#code-example).  
  For detailed usage of the tools, please see [Astah Manual](https://astah.net/manual) and [m plus plug-in tips](https://sites.google.com/view/m-plus-plugin-tips).

**Build and Run (in Debug Mode)**
  1. Open the workspace file (design-pattern-examples-in-crystal.code-workspace) in VS Code.
  2. Open `main.cr` for the pattern you want to run, and click **Run > Start Debugging** (or press F5).  
     ![](./screenshots/BuildAndRun.gif "Build and Run")  

References
----------
* Gamma, E. et al. Design Patterns: Elements of Reusable Object-Oriented Software, Addison-Wesley, 1994
* Hiroshi Yuki. Learning Design Patterns in Java [In Japanese Language], Softbank publishing, 2004

License
-------
This project is licensed under the Creative Commons Zero (CC0) license. The model and code are completely free to use.

[![CC0](https://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](https://creativecommons.org/publicdomain/zero/1.0/deed)

Other Language Examples
-----------------------
[C++](https://github.com/takaakit/design-pattern-examples-in-cpp), [C#](https://github.com/takaakit/design-pattern-examples-in-csharp), [Go](https://github.com/takaakit/design-pattern-examples-in-golang), [Java](https://github.com/takaakit/design-pattern-examples-in-java), [JavaScript](https://github.com/takaakit/design-pattern-examples-in-javascript), [Kotlin](https://github.com/takaakit/design-pattern-examples-in-kotlin), [Python](https://github.com/takaakit/design-pattern-examples-in-python), [Ruby](https://github.com/takaakit/design-pattern-examples-in-ruby), [Scala](https://github.com/takaakit/design-pattern-examples-in-scala), [Swift](https://github.com/takaakit/design-pattern-examples-in-swift), [TypeScript](https://github.com/takaakit/design-pattern-examples-in-typescript)
