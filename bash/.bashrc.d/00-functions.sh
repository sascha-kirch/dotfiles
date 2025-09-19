#############
# navigation
#############
up () {
    local d=""
    local limit="$1"

    # Default to limit of 1
    if [ -z "$limit" ] || [ "$limit" -le 0 ]; then
        limit=1
    fi

    for ((i=1;i<=limit;i++)); do
        d="../$d"
    done

    # perform cd. Show error if cd fails
    if ! cd "$d"; then
        echo "Couldn't go up $limit dirs.";
    fi
}



#############
# conda
#############
# Remove multiple conda environments using fzf and xargs multiprocessing.
rm_conda_envs () {
    conda info --envs \
        | sed -e '/#.*$/d' -e '/.*\/fs\/applications/d' \
        | fzf --multi --style full --header "Select all environments to be deleted with <Tab> and confirm with <Enter>" \
        | awk '{ print $1 }' \
        | xargs -P 10 -I {} bash -c "echo '[{}] removing...' && conda env remove -n {} -y &> /dev/null && echo '[{}] removed.'"
}
