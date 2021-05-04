#!/bin/bash
cd ~/"$1"
du -hs * | sort -hr | head -"$2"
