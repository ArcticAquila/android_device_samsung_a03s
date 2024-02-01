#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Usage: change-version.sh <new_version>"
    exit 1
fi

new_version="$1"

# Rename the file
mv aosp_a03s.mk "${new_version}_a03s.mk"

# Replace all occurrences of "aosp" with the new version in the renamed file
sed -i "s/aosp/${new_version}/g" "${new_version}_a03s.mk"
sed -i "s/aosp/${new_version}/g" "BoardConfig.mk"
sed -i "s/aosp/${new_version}/g" "AndroidProducts.mk"

echo "File renamed and text replaced successfully!"
echo "git reset --hard"
echo "For resetting all changes" 