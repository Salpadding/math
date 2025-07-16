#!/usr/bin/env bash

echo "will operate on file ${1}, continue(y/n)?"

read -r line

if [[ "${line}" == "y" ]]; then
    echo "start processing ${1}"
else
    echo "quit"
    exit
fi

sed -E -i 's/\\e(\W)/\\mathrm{e}\1/g' "${1}"
sed -E -i 's/\\C(\W)/\\mathbb{C}\1/g' "${1}"
sed -E -i 's/\\R(\W)/\\mathbb{R}\1/g' "${1}"
sed -E -i 's/\\N(\W)/\\mathbb{N}\1/g' "${1}"
sed -E -i 's/\\i(\W)/\\mathrm{i}\1/g' "${1}"