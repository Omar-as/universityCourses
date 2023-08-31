obj-m += mymodule.o

all:
	make -C /lib/modules/$(shell uname -r)/build M="$(PWD)" modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M="$(PWD)" clean

nix:
	make -C /nix/store/i69v4g3l1nqg8qw0riffrg4hny5sv0gg-linux-6.2.10-dev/lib/modules/*/build M=$(PWD) modules

nixclean:
	make -C /nix/store/i69v4g3l1nqg8qw0riffrg4hny5sv0gg-linux-6.2.10-dev/lib/modules/*/build M=$(PWD) clean 

# for compiling:
# make nix

# for loading insmod:
# sudo insmod mymodule.ko name="omar" age=21

# for reading the logs
# dmesg

# for unloading:
# sudo rmmod mymodule
