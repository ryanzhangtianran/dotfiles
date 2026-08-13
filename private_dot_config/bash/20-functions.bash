# ~/.config/bash/20-functions.bash

proxy() {

    case "${1:-}" in
        on)
            export http_proxy="http://${PROXY_HOST}:${PROXY_PORT}"
            export https_proxy="http://${PROXY_HOST}:${PROXY_PORT}"

            export HTTP_PROXY="http://${PROXY_HOST}:${PROXY_PORT}"
            export HTTPS_PROXY="http://${PROXY_HOST}:${PROXY_PORT}"

            ;;

        off)
            unset http_proxy
            unset https_proxy

            unset HTTP_PROXY
            unset HTTPS_PROXY

            ;;

        status)
            echo
            echo -n "🌍 Exit IP: "
            curl -s --max-time 10 https://api.ipify.org || echo "😭 Checking failed."
            echo
            ;;
    esac
}