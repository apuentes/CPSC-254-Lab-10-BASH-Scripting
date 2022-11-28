#!/bin/bash

dir=$(find -name CSUFRoomReservation -type d)

cd "$dir"

checkS=$(find . -type f -exec md5sum "{}" +| LC_ALL=C sort | md5sum)

echo -e "The checksum for all files downloaded in directory $dir is:
$checkS

**Confirm the checksum matches the given checksum provided in the README.md file."
