**TupleServer** is designed as a local buffer for remote or latent local services. It supports read and write operations based on a simple line-oriented protocol. TupleServer uses libevent for I/O and fnmatch for pattern matching.

```
[trust:~] jayridge% telnet 0.0.0.0 5555
Trying 0.0.0.0...
Connected to 0.0.0.0.
Escape character is '^]'.
write foo bar
ok write
write foo dork
ok write
read foo *
ok foo bar
read foo *
ok foo dork
exit
ok bye
Connection closed by foreign host.
```