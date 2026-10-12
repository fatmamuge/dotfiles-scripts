# fuzzy change directory function
fcd() {
    local dir
    dir=$(fdfind --full-path --type d --hidden \
        -E ".cache"                            \
        -E ".matlab"                           \
        -E ".java"                             \
        -E ".ipython"                          \
        -E ".jdks"                             \
        -E ".jupyter"                          \
        -E ".pki"                              \
        -E ".MathWorks"                        \
        -E ".swt"                              \
        -E ".MATLAB"                           \
        -E ".ipynb_checkpoints"                \
        -E "snap"                              \
        -E ".config"                           \
        . "$HOME" | fzf)
    cd "$dir"
    history -s "cd ${dir}"
}

# open file with fuzzy fider
fvim() {
    local file
    file=$(fdfind --full-path --type f --hidden \
        -E ".cache"                            \
        -E ".matlab"                           \
        -E ".java"                             \
        -E ".ipython"                          \
        -E ".jdks"                             \
        -E ".jupyter"                          \
        -E ".pki"                              \
        -E ".MathWorks"                        \
        -E ".swt"                              \
        -E ".MATLAB"                           \
        -E ".ipynb_checkpoints"                \
        -e "java" -e "py" -e "txt" -e "bashrc"  \
        -e "m"    -e "vimrc" -e "md"  -e "c"    \
        . "$HOME" | fzf) || return 1
    [ -z "$file" ] && return 1
    cd "$(dirname "$file")" && vim "$(basename "$file")"
}

## create a directory and go to that directory
mkcd() {
    if [ "$#" -ne 1 ]; then
        echo "Usage: mkcd <directory_name>"
        return 1
    fi
    mkdir -p "$1" && cd "$1"
}
