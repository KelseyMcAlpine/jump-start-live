#Day 1

### Terminal Commands
| Command | Description |
| :--- | :--- |
| `cmd` + `K` | clear your screen |
| `touch <filename>` | creates a new file named filename |
| `pwd` | <b>p</b>rints the <b>w</b>orking <b>d</b>irectory (displays the full path of the current directory) |
| `cd` | <b>c</b>hoose a <b>d</b>irectory |
| `..cd` | go back a directory |
| `cd ~` | choose home directory |
| `ls` and `ls -l`| list the items in the directory |
| `ls -a` | list the items in the directory, including hidden files |
| `mkdir` | make a new directory |
| `rm <filename>` | removes the file named filename |
| `rm -r <dirname>` | removes the directory (and everything in it) named dirname |
| &#8593; | view the previous command |
| `mv` | rename
| `ctrl` + `a` | go to beginning of line |
| `ctrl` + `e` | go to end of line |
| `alt` + &#8594; | move to the right, one word |
| `alt` + &#8592; | move to the left, one word |
| `ctrl` + `c` | interrupt or stop a command |
| `ruby` | open ruby files by typing `ruby filename.rb`|
| `atom` | launch atom by typing `atom filename.txt` |
| `command` + `/` | comment out highlighted section in atom |

### Git Commands
| Command | Description |
| :---------- | :-------------- |
| `git` + `clone` + `url` | clones repository from GitHub |
| `git` + `status` | checks status / checks for changes |
| `echo` + `"Text Goes Here"` + `>> filename.txt` | writes file with text |
| `cat` + `filename.txt` | shows contents of file |
| `git` + `add` + `filename.txt` | adds file |
| `git` + `commit` + `-m` + `"Message"` | commits changes with comments |
| `git` + `push` + `origin` + `master` | commits changes to github |
| `git` + `init` + `new-project-folder-name` | initialtes new repository locally |
| `git` + `pull` | updates local file to match remote file |

### irb Commands
| Command | Description |
| :--- | :--- |
| `irb` | start interactive ruby session |
| `exit` | exit an `irb` session |
| `ctrl` + `c` | interrupt or stop a command |


### Ruby Style
| Concept | Description |
| :----- | :------ |
| File naming | use `snake_case` |
| Whitespace | separte thoughts and ideas with line breaks |
| Variable names | make descriptive |
| Comments | Describe what the code does not how it does it |
| Large Numbers | use underscores to make large numbers easier to read i.e. `num = 3_000_000` |

### Keyboard Commands
| Keyboard Input | Description |
| :--------- | :---------- |
| `gets` | short for "gets string" |
| `chomp` | removes the newline character |
| `to_i` | converts data type to an integer |
| `to_f` | converts data type to a float |
**Best Practice** i.e. age = gets.chomp.to_i

### Strings
| Concept | Description |
| :--------- | :----------|
| Escape Sequences | `\n` new line `\\` single backslash `\"` double quote |
| String Interpolation | Allows ruby code to appear within a string i.e. `puts "1 + 2 = #{1 + 2}` |
| String Concatenation | Combine strings using concatenation with either the `+` operator, or the `<<` operator|
| `+` | Creates a new string in memory |
| `<<` | Modifies the original string |
| % Notation | A method for creating an array of strings |
| `%w` | Use to create a non-interpolated array of strings |
| `%W` | to create an interpolated array of strings |

**Resources**
* [Crowd-sourced Ruby style guide](https://github.com/bbatsov/ruby-style-guide)
