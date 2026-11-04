#!/bin/bash
# seal.sh <folder>: packs the folder into job.age for the key below
tar -czf - -C "$1" . | age -r "$(cat job.pub)" -o job.age
