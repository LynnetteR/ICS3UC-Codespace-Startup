# Use Microsoft's updated container registry and a modern Debian variant
ARG VARIANT="bookworm"
FROM ://microsoft.com{VARIANT}

# Install C++ build tools, system utilities, and text editors in one clean step
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y upgrade \
    && apt-get -y install --no-install-recommends \
        build-essential \
        gdb \
        neofetch \
        vim \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*
