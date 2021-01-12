
#!/bin/bash
for y in `seq 254`;
do
        let x=21
        while [ $x -lt 81 ]
        do nc -w1 -nvz 10.20.0.$y $x > /dev/null 2>&1
                if [[ $? == 0 ]]; then
                        echo "$x is open on 10.20.0.$y" >> /home/results.txt
                fi
        done
        let x=(x+1)
done
