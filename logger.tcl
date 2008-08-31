set server localhost
set port 5555

proc handleCallback args {
    global connection
     if [catch {
         gets $connection line
         if {[lindex $line 0] == "ok"} {
             puts stdout [join [concat [clock seconds] [lrange $line 1 end]] "|"]
         } else {
             puts stderr $line
         }
     } err] {
         puts stderr $err
     }
     puts $connection "read numerius *"
}
proc roll {} {
    # noop
    after 60000 roll
}

set connection [socket $server $port]
fconfigure $connection -buffering line -encoding utf-8
fconfigure $connection -blocking false
fileevent $connection readable [list handleCallback]
puts $connection "read numerius *"
after 10000 roll

vwait forever
