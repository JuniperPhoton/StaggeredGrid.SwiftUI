# Run the xcodebuild command
xcodebuild docbuild -scheme StaggeredGrid \
    -derivedDataPath ./.build/derived-data \
    -destination 'generic/platform=iOS' \
    DOCC_HOSTING_BASE_PATH='StaggeredGrid.SwiftUI'

# Check if the command was successful
if [ $? -eq 0 ]; then
    rm -rf ./docs
    # Find and copy the .doccarchive to the current directory, renaming it to 'docs'
    find ./.build/derived-data -type d -name 'StaggeredGrid.doccarchive' -exec cp -R {} ./docs \;
else
    echo "xcodebuild command failed."
fi
