# CP-Script
This is a script to compile with g++ and run C++ files for Competitive Programming with recommendable flags. It compiles files if it's modified after its latest compilation. 

## Instalation
Run the following commands in the Terminal.
```bash
git clone https://github.com/Wh4rp/CP-Script.git
cd CP-Script
sudo ./install.sh
```
Otherwise, you can copy [script](CP.sh) without the line 48 in your `.bashrc` (or `.zshrc`) file 😉.

## Usage
To run the program, open the file `HelloWorld.cpp` and use the following command in the Terminal.
```bash
CP HelloWorld.cpp
``` 
If `HelloWorld` hasn't been compiled before, it will be compiled to `HelloWorld` on `~/.cache`. Then the program will run. 

It also accepts input and output files with the follows format:
```bash
CP HelloWorld.cpp in.txt out.txt
```

### Options
- `-f`: Forces the compilation.
- `-d`: uses the Input and Output paths defined on lines 6 and 7. By default, `CP` waits until the files `in.txt` and `out.txt`are in the current directory.

```bash
CP -fd HelloWorld.cpp
```
Executable files go to the `cache_path` defined in line 5. By default the cache path is `~/.cache`.

## To do
- [ ] Add illustrative gifs of script on README to explain better how the program works.
- [ ] Add a Help option.
- [ ] Edit the Paths option.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests.

## License
[MIT](https://choosealicense.com/licenses/mit/)
