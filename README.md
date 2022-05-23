# CP-Script
A script to compile (whit `g++`) and run C++ files for Competitive Programming with recomendable flags. Just compile files if it modifique since the last complation of itself. 

## Instalation
Just run
```bash
git clone https://github.com/Wh4rp/CP-Script.git
cd CP-Script
sudo ./install.sh
```

### Alternative
Copy [script](CP.sh) in your `.bashrc` (or `.zshrc`) file 😉.

## Usage
To you want run `HelloWorld.cpp` is such to done 
```bash
CP HelloWorld.cpp
``` 
If `HelloWorld` hasn't been compiled before, it will compile to `HelloWorld` on `~/.cache`. Then the program runs. 

Too acepts input and output file with the follows formar:
```bash
CP HelloWorld.cpp in.txt out.txt
```

### Options
- `-f`: forces compilation.
- `-d`: uses Input and Output path defined on lines 6 and 7. By default `CP` wait to are there files `in.txt` and `out.txt` at the actual directory.

```bash
CP -fd HelloWorld.cpp
```
Executable files goes to `cache_path` defined in line 5. By default is `~/.cache`.

## To do
- [ ] Ilustrative gifs of script on README.
- [ ] Help option.
- [ ] Edit paths option.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)