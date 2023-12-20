# Devcontainer-template

This repository contains a template for custom Dockerfile used by vscode devcontainer to start a development environment.

The template focuses on the commands used to generate a **non-root** user with sudoers privileges. This way, new or edited files will not belong to the user `root` but to the created users. This has the advantage that when accessing those files outside the container started with devcontainer they do not belong to the `root` user.

You can copy the Dockerfile provided in this repository, add your image at the beginning and append to the end your custom commands. We suggest to add your commands after this preliminary steps so that when rebuilding the image after some change the initial steps are cached. 