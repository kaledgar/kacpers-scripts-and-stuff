#!/bin/bash
# Example usage:
# . merge_mp4.sh ./Tst\ dir/ output.mp4
# . merge_mp4.sh "/path/to/smth/" "output_filename.mp4"

echo "Passed Directory: $1"
echo "Passed Output Filename: $2"
cd "$1" || { echo "Cannot enter directory"; exit 1; }

read -p "Continue merging? (y/n): " answer
case "$answer" in
    [Yy]* ) echo "Starting merge...";;
    * )
        echo "Merge canceled."
        exit 0
        ;;
esac

echo "Checking ffmpeg version ..."
if ! command -v ffmpeg &> /dev/null; then
    echo "FFmpeg not available."
    exit 1
fi

files=(*.mp4)
IFS=$'\n' files=($(sort -V <<<"${files[*]}"))
unset IFS

echo "The following files will be merged in this order:"
printf "  %s\n" "${files[@]}"
echo ""
printf "file '%s'\n" "${files[@]}" > list.txt

ffmpeg -f concat -safe 0 -i list.txt -c copy $2.mp4
echo "Merge complete and saved to: $2"
