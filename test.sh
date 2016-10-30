if [ -d ~/.zshrc ]; then
    echo source ./abc.sh >> ~/.zshrc
fi

linecount=$(find ~/.zshrc|xargs grep -c 'source')
if [[ ${linecount} -gt 0 ]] 
then
    echo "line "
fi
