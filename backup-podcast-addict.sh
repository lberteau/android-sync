#!/bin/bash

adb_sync_home=/home/lberteau/android-sync/adb-sync
#source_home=/sdcard
source_home=/storage/extSdCard
target_home=/mnt/e/backup/podcast-addict

process_dir=Android/data/com.bambuna.podcastaddict/files/podcast
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}
