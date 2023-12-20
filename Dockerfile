# Select your starting image.
# FROM ...

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=${USER_UID}

# Create a user with the given name, UID and GID 
RUN groupadd --gid $USER_GID $USERNAME && \
    useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# Add the user to the sudoers, to allow to execute commands 
# requiring sudoers permissions (such as apt install).
RUN mkdir -p /etc/sudoers.d/ && \
    echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && \
    chmod 0440 /etc/sudoers.d/$USERNAME

# Set current user
USER ${USERNAME}

# Add here the commands specific for your image
# ...