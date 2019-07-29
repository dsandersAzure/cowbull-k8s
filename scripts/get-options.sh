# Call getopt to validate the provided input. 
echo "Arguments passed --> $args"
options=$(
    getopt \
        -o "s:t:l:c:v:w:" \
        -l "load,delete,source:,target:,lbip:,storage-class:,cowbull-version:,webapp-version:" \
        -- "$args"
)
ret_stat="$?"
if [ "$ret_stat" != "0" ]
then 
    short_banner "Incorrect options provided; exit code: $ret_stat"
    usage
    exit 1
fi
