set connection [socket localhost 5555]
fconfigure $connection -buffering line -encoding utf-8
while (1) {
    puts $connection "write numerius incr a b c 1"
}
