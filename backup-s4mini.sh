#!/bin/bash

s4mini_ip=192.168.2.3
#rsync_args=(-vr --ignore-existing -e 'ssh -p 8022')
rsync_args=(-vr --delete-before --size-only -e 'ssh -p 8022')
source_home=${s4mini_ip}:/sdcard
target_home=/mnt/e/backup/android-phone

process_dir=keepass
rsync "${rsync_args[@]}" ${source_home}/${process_dir}/ ${target_home}/${process_dir}

process_dir=Android/data/com.bambuna.podcastaddict/files/podcast
rsync "${rsync_args[@]}" ${source_home}/${process_dir}/ ${target_home}/${process_dir}

