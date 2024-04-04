#!/bin/sh

PROJECT_DIR="."
_SITE_DIR="$PROJECT_DIR/_site"
_SCRIPTS_DIR="$PROJECT_DIR/_scripts"
TAG_DIR="$PROJECT_DIR/tag"

contains() {
    echo "$1" | grep -wq "$2"
}

tags="`grep -P -o '(?<=TAG:\[)[^\[\]]+(?=\])' "$_SITE_DIR/tag-list/index.html"`"

tag_files="`cd "$TAG_DIR" && (echo *.md | sed 's/\.md\( \|$\)/ /g')`"

for t in $tag_files ; do
    if ! contains "$tags" "$t" ; then
        echo "=> Removing tag file for $t"
        rm "$TAG_DIR/$t.md"
    fi
done

for t in $tags ; do
    target_file="$TAG_DIR/$t.md"
    new_content="`sed "s/__TAG__/$t/" "$_SCRIPTS_DIR/tag-page-template.md"`"
    old_content=""
    if [ -f "$target_file" ] ; then
        old_content="`cat "$target_file"`"
    fi
    if [ x"$new_content" != x"$old_content" ] ; then
        echo "=> Updating tag file for $t"
        echo "$new_content" > "$target_file".tmp && mv "$target_file".tmp "$target_file"
    fi
done
