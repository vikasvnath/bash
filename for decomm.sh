cat list | while read output; do ping -c 1 "$output" > /dev/null; if [ $? -eq 0 ]; then echo " $output up" ; else echo " $output down" ; fi; done
