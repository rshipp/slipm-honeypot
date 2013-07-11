# Generic HTTP plugin for Slipm honeypot.

tcp=1
port=80

start() {
    local request
    local response

    read request
    if [[ $request =~ "GET / .*" || $request =~ "HEAD / .*" ]]; then
        log "client: $request"
        response="HTTP/1.1 200 OK"
    elif [[ $request =~ "GET /.*" || $request =~ "HEAD /.*" ]]; then
        log "client: $request"
        response="HTTP/1.1 404 Not Found"
    else
        response="HTTP/1.1 500 Internal Server Error"
        log "client: $request"
    fi

    while true; do
        read request
        if [[ $request == "" ]]; then
            log "client: $request"
            echo "$response"
            log "server: $response"
            break
        else
            log "client: $request"
        fi
    done
}
