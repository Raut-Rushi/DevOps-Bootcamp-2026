
#!/bin/bash

service_name="$1"

if [ -z "$service_name" ]; then
    echo "Usage: bash service-check.sh <service-name>"
    exit 1
fi

echo "Checking service: $service_name"

if command -v "$service_name" >/dev/null 2>&1; then
    echo "$service_name command is available"
    exit 0
else
    echo "$service_name command is not installed or not in PATH"
    exit 1
fi

