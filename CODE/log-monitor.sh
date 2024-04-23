#!/bin/bash

# to remove all monitoring seesions before start
cleanup() {
    echo "Monitoring stopped."
    exit 0
}

# Trap Ctrl+C signal
trap cleanup INT

# when new entry is the below function will monitor 
monitor_log() {
    echo "Monitoring log file: $1"
    tail -F "$1" | while read line; do
        # Output new log entry
        echo "$line"

        #  basic log analysis
        analyze_log "$line"
    done
}

# to perform basic log analysis
analyze_log() {
    # give the keywords according to your requred search
    keywords=("password" "malfunction" "threat")

    # it will check the each keyword in each log entry 
    for keyword in "${keywords[@]}"; do
        if echo "$1" | grep -qi "$keyword"; then
            echo "Found keyword '$keyword' in log entry: $1"
        fi
    done
}

# Main function
main() {
    # to know if the path file to log is provided or not 
    if [ -z "$1" ]; then
        echo "Usage: $0 <log_file>"
        exit 1
    fi

    log_file="$1"

    # Call function to monitor log file
    monitor_log "$log_file"
}

# Call main function with provided arguments
main "$@"
