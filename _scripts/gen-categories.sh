#!/bin/sh

PROJECT_DIR="."
_SITE_DIR="$PROJECT_DIR/_site"
_SCRIPTS_DIR="$PROJECT_DIR/_scripts"
CATEGORY_DIR="$PROJECT_DIR/category"

contains() {
    echo "$1" | grep -wq "$2"
}

categories="`grep -P -o '(?<=CATEGORY:\[)[^\[\]]+(?=\])' "$_SITE_DIR/category-list/index.html"`"

category_files="`cd "$CATEGORY_DIR" && (echo *.md | sed 's/\.md\( \|$\)/ /g')`"

for c in $category_files ; do
    if ! contains "$categories" "$c" ; then
        echo "=> Removing category file for $c"
        rm "$CATEGORY_DIR/$c.md"
    fi
done

for c in $categories ; do
    target_file="$CATEGORY_DIR/$c.md"
    new_content="`sed "s/__CATEGORY__/$c/" "$_SCRIPTS_DIR/category-page-template.md"`"
    old_content=""
    if [ -f "$target_file" ] ; then
        old_content="`cat "$target_file"`"
    fi
    if [ x"$new_content" != x"$old_content" ] ; then
        echo "=> Updating category file for $c"
        echo "$new_content" > "$target_file".tmp && mv "$target_file".tmp "$target_file"
    fi
done
