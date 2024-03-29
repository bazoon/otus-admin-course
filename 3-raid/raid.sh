mdadm --create /dev/md0 -l 10 -n 5 /dev/sd{b,c,d,e,f}

parted -s /dev/md0 mklabel gpt

parted /dev/md0 mkpart primary ext4 0 20%
parted /dev/md0 mkpart primary ext4 20% 40%
parted /dev/md0 mkpart primary ext4 40% 60%
parted /dev/md0 mkpart primary ext4 60% 80%
parted /dev/md0 mkpart primary ext4 80% 100%

for ((i = 0; i < 5; i++)); do
	mkfs.ext4 /dev/md0p$i
done

mkdir -p /raid/part{1,2,3,4,5}

for ((i = 0; i < 5; i++)); do
	mount /dev/md0p$i /raid/part$i
done
