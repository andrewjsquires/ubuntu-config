#!/bin/bash

ssh-keygen -t ed25519 -C "andrewjsquires@gmail.com"

cat ~/.ssh/id_ed25519.pub
