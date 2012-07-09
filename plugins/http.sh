# Generic HTTP plugin for Slipm honeypot.

tcp=1
port=80

start() {
    local request
    local response

    read request
    if [[ $request =~ "GET / .*" || $request =~ "HEAD / .*" ]]; then
        echo "client: $request" >&2
        response="HTTP/1.1 200 OK"
    elif [[ $request =~ "GET /.*" || $request =~ "HEAD /.*" ]]; then
        echo "client: $request" >&2
        response="HTTP/1.1 404 Not Found"
    else
        response="HTTP/1.1 500 Internal Server Error"
        echo "client: $request" >&2
    fi

    while true; do
        read request
        if [[ $request == "" ]]; then
            echo "client: $request" >&2
            echo "$response"
            echo "server: $response" >&2
            break
        else
            echo "client: $request" >&2
        fi
    done
}
