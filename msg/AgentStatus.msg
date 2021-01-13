Header header

# Agent status

# Provides information about the status of an agent

# Agent ID
string agent_id
# Agent Name
string agent_name
# Agent state (see enum below)
uint8 state
# Assigned workstation (if any)
string workstation_id

# Define enum for the state field
uint8 STATE_IDLE=0
uint8 STATE_MOVING=1
uint8 STATE_PROCESSING=2
uint8 STATE_SUPERVISING=3