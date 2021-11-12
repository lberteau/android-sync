#!/bin/bash

#adb_home=/home/lberteau/android/platform-tools
adb_sync_home=/home/lberteau/android-sync/adb-sync
source_home=/mnt/e/backup/podcast-addict
target_home=/sdcard

process_dir=Android/data/com.bambuna.podcastaddict/files/podcast
${adb_sync_home}/adb-sync --delete ${source_home}/${process_dir}/ ${target_home}/${process_dir}

