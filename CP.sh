function CP () {

    cache_path="~/.cache"       # Directory where compiled files goes
    input_path="./in.txt"       # Input file
    output_path="./out.txt"     # Output file
    FORCE="false"
    DEFAULT="false"
    OK=0

    local OPTIND
    local OPTARG
    while getopts ":fi:" opt; do
        case $opt in
            f)
                FORCE="true"
                ;;
            d)
                DEFAULT="true"
                ;;
        esac
    done

    while [[ $1 == -* ]]; do
        shift
    done
    
    FILENAME="${1%.*}"

    if [ ! -f $cache_path/$FILENAME.exe ] || [ $1 -nt $cache_path/$FILENAME.exe ] || [ "$FORCE" = "true" ];
    then
        echo "Compiling ${1}..."
        g++ -std=c++17 -g -O2 -Wshadow -Wall -Wextra -o "$cache_path/$FILENAME.exe" "$1"
        OK=$?
    fi

    if [ -n "$2" ] && [ -n "$3" ]; then
        (exit $OK) && echo "Running ${1}..." && printf '%s\n' -------------------- && $cache_path/$1.exe <"$2"> "$3"
    else
        if [ $DEFAULT = "true" ]; then
            (exit $OK) && echo "Running ${1}..." && printf '%s\n' -------------------- && time $cache_path/$FILENAME.exe <"$input_path"> "$output_path"
        else
            (exit $OK) && echo "Running ${1}..." && printf '%s\n' -------------------- && time $cache_path/$FILENAME.exe
        fi
    fi

}

CP "$1" "$2" "$3" "$4"
