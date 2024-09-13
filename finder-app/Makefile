
writer:
ifeq ("$(strip $(CROSS_COMPILE))","aarch64-none-linux-gnu-")
	$(CROSS_COMPILE)gcc writer.c -o writer
else
	echo "compiling default"
	gcc writer.c -o writer

endif

clean:
	-rm writer
