# Agent status

# This is sent by the agent in order to update
# their status

string agent_id

uint8 status

# Define enum for the status field
uint8 STATUS_IDLE=0
uint8 STATUS_MOVING=1
uint8 STATUS_PROCESSING=2
uint8 STATUS_SUPERVISING=3