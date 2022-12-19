obj-m:= pcd_n.o
ARCH=x86_64
HOST_KERN_DIR=/lib/modules/$(shell uname -r)/build/

all:
	make ARCH=$(ARCH) -C $(HOST_KERN_DIR) M=$(PWD) modules
clean:
	make ARCH=$(ARCH) -C $(HOST_KERN_DIR) M=$(PWD) clean
help:
	make ARCH=$(ARCH) -C $(HOST_KERN_DIR) M=$(PWD) help
host:
	make ARCH=$(ARCH) -C $(HOST_KERN_DIR) M=$(PWD) modules 
