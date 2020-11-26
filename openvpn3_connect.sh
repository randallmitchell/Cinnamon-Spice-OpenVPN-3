#! /bin/bash

NOTIFICATION_DURATION_MS=2000

notify() {
    notify-send --hint=int:transient:1 -t $NOTIFICATION_DURATION_MS "OpenVPN 3" "$1"
}

openvpn3 session-start --config ~/System/vpn/client.ovpn
notify "Session Connected"
