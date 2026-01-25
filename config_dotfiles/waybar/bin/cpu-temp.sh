#!/bin/bash

for temp_dir in /sys/class/hwmon/*; do
	[[ "$(<"${temp_dir}/name")" =~ (coretemp|fam15h_power|k10temp) ]] && {
		temp_dirs=("$temp_dir"/temp*_input)
		temp_dir=${temp_dirs[0]}
		break
	}
done

[[ -f "$temp_dir" ]] && deg="$(($(<"$temp_dir") * 100 / 10000))"

deg="${deg//./}"
deg="${deg/${deg: -1}/}"
echo "$deg"
