#!/usr/bin/env bash

# Purpose: Run admin linux commands
# Date: March 8, 2026

today=$(date)
company="MachineX"

top | head -10
echo""
df -h
echo""
free -m
echo""
uptime
echo ""
echo "Running admin commands $today - $company"
echo ""
date
