#!/bin/bash
APP_PORT=${PORT:-8001}

# activate virtual environment
cd
cd /opt/ && source venv/bin/activate

# nav to working directory and load environmenal variables

cd && cd /code
source .env

# Run SERVER
echo 🏹🏹 "Starting server........"
uvicorn main:app --reload    
