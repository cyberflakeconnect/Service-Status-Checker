#!/bin/bash
#@cyberflakeconnect

# Define the service name
SERVICE_NAME="your_service_name"

# Function to check service status
check_service_status() {
    # Get the status of the service
    SERVICE_STATUS=$(systemctl is-active $SERVICE_NAME)

    # Check the service status
    if [ "$SERVICE_STATUS" = "active" ]; then
        echo "Service $SERVICE_NAME is running."
    else
        echo "Service $SERVICE_NAME is not running."
    fi
}

# Main function
main() {
    echo "Checking status of service: $SERVICE_NAME"
    check_service_status
}

# Execute the main function
main
