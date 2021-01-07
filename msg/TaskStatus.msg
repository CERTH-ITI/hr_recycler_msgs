# Task status

# This is sent both by the orchestration engine
# as well as by agents.

# In the first case, in order to update task status
# In the second case, in order to signal accept/reject
# or an error in task execution

# Listeners to this message should use namespaces
# to distinguish types of sources. Namely, the namespaces
# should be as follows:
# /agent , if the message is sent by an agent
# /engine , if the message is sent by the orchestration engine

# Accordingly, nodes should subscribe to the namespaced message
# of their interest, i.e. agents to /engine/TaskStatus and
# the orchestration engine to /agent/TaskStatus and so on

string process_id
string task_instance_id

uint8 status

# Define enum for the status field
# Next to each enum is shown which type of node is
# supposed to publish each 
uint8 STATUS_PENDING=0 # Engine
uint8 STATUS_REQUESTED=1 # Engine
uint8 STATUS_ACCEPTED=2 # Agent
uint8 STATUS_ASSIGNED=3 # Engine
uint8 STATUS_PROCESSING=4 # Agent
uint8 STATUS_COMPLETED=5 # Agent
uint8 STATUS_ABORTED=6 # Agent