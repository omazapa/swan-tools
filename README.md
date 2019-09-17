# swan-tools
Some tools  for the Rota in SWAN

# usege
* init your kerberos session with kinit user@CERN.CH
* source swan_env.sh

Run the next command to  get container by node, use grep to filter users or the needed information
```.sh
swan_docker_ps
```

```.sh

To get the journalctl output run
```.sh
swan_journalctl 6 2f01da4ea995
```

Where 6 is the swan node 6 and 2f01da4ea995 is the container id 

