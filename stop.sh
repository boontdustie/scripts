#! /bin/bash
osascript -e "tell application \"iTunes\" to set sound volume to 100";
osascript -e "tell application \"iTunes\" to set sound volume to 90";
osascript -e "tell application \"iTunes\" to set sound volume to 80";
osascript -e "tell application \"iTunes\" to set sound volume to 70";
osascript -e "tell application \"iTunes\" to set sound volume to 60";
osascript -e "tell application \"iTunes\" to set sound volume to 50";
osascript -e "tell application \"iTunes\" to set sound volume to 40";
osascript -e "tell application \"iTunes\" to set sound volume to 30";
osascript -e "tell application \"iTunes\" to set sound volume to 20";
osascript -e "tell application \"iTunes\" to set sound volume to 10";
osascript -e "tell application \"iTunes\" to set sound volume to 0";
osascript -e 'tell application "iTunes" to play';
osascript -e 'tell application "NiceCast" to stop broadcast '