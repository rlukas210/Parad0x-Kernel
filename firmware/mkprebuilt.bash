#!/bin/bash
for folder in $(find * -type d); 
do 
cd $folder;
	for ihex in $(find *.ihex);
	do 
	../mkfw $ihex ${ihex/.ihex/};
	done
cd ..;
done
if [ -e *.ihex ]; then
for newhex in $(find *.ihex);
do
	./mkfw $newhex ${newhex/.ihex/}.fw;
done
fi
