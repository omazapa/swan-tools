#!/bin/bash


# Function to get the lists of containers in swan nodes
# You can to run grep to the output to filter user for example.
function swan_docker_ps()
{ 
	for i in $(seq 1 1 6);
	do 
		echo "==============================" SWAN NODE swan00$i "=============================="
		ssh root@swan00$i docker ps
	done
}

# Function to get the container output using journalctl
# parameters 
# $1 : swan node
# $2 : container id 
function swan_journalctl()
{
	ssh root@swan00$1 journalctl CONTAINER_ID=$2
}

# Function to connect to a container in a swan node
# parameters 
# $1 : swan node
# $2 : container id 
function swan_container_exec()
{
	ssh -t root@swan00$1 docker exec -it $2 /bin/bash
}

# Function to connect to a swan node and do cat over /var/log/messages
# you can to use it  with grep to filter the required information
# parameters None 
function swan_node_messages()
{ 
	for i in $(seq 1 1 6);
	do 
		ssh root@swan00$i cat /var/log/messages 
	done
}

# Function to connect to a swan node and do cat over /var/log/messages
# you can to use it  with grep to filter the required information
# parameters None 
function swan_node_df()
{ 
	for i in $(seq 1 1 6);
	do 
		echo "== SWAN node $i =="
		ssh -K root@swan00$i 'df -h | grep timed' 
	done
}
