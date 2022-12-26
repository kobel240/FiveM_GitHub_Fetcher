# FiveM GitHub Fetcher
A **very** simple script to fetch and pull your FiveM resources without having to SSH to your server. Simply create a systemd service to start your txAdmin at boot, setup your github repository and you'll never have to tunnel again.

Use the command `fetch` in the server console to fetch your latest commit, then use `pull` to pull them to your server. Don't forget to restart your server.

## Setup
- add this resource in your resources folder and give it a name
- ensure it in your server.cfg
- Open the server.lua file and change the path to the path your directory is in

## Requirements
- git installed on your server
- txAdmin to access the console *(or another remote access panel?)*
  - (you could also create a *client.lua script* to use without txAdmin and use the fetch/pull command from the client)
- Works on Linux and Windows
