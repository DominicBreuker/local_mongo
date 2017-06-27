# Local MongoDB

Docker scripts to start and stop a mongo db instance locally.

Stores data within project folder in `data/db`.

## How to use

You can use 3 scripts to manage MongoDB:
- `bin/start.sh`: Starts MongoDB and uses the project folder's `data/db` folder to store data.
- `bin/connect.sh`: Connects to MongoDB using the shell client.
- `bin/stop.sh`: Shuts down the container and cleans up.
- `bin/reset.sh`: Shuts down the container and cleans up.
