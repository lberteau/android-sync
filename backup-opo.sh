#!/bin/bash

#adb_home=/home/lberteau/android/platform-tools
adb_sync_home=/home/lberteau/android-sync/adb-sync
source_home=/sdcard
target_home=/mnt/e/backup/android-phone

process_dir=.torque
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=DCIM
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=keepass
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=Movies
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=Music
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=Pictures
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=Ringtones
${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}

#process_dir=Android/data/com.bambuna.podcastaddict/files/podcast
#${adb_sync_home}/adb-sync --time --delete --reverse ${source_home}/${process_dir}/ ${target_home}/${process_dir}
