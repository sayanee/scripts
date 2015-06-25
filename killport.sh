#!/bin/bash

# USAGE: $ killport {PORT_NUMBER}
# EXAMPLE: $ killport 3000

# GETTING STARTED: Add this function to your profile

killport() {
  kill -TERM `lsof -t -i:$1`
}
