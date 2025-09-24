# Physically

A block device, physically simply means a device that stores data in blocks or allocation units.
# Software

In software, by block device, we would be referring to the drivers for parsing block devices.
## In Linux

In Linux, you can only mount block devices.

### About reading block devices directly

I wrote in [[loop devices]] that you can only mount block devices, and loop devices are block devices created for disk images.

But someone asked a query about mounting a block device as a file, so that he doesn't have to make a disk image with `dd` for a recovery utility to read from it.

In this case, usually, you would be able to `cat` a block device to read the contents, and `dd` does pretty much that. But the block device descriptor file itself is not the same as the block device.

If you do `stat` on a block device, you will see that it has a size of `0` bytes, and it will be called a "block special file" as opposed to a "regular file" with a size.

#rough #advaita-analogy The above line gave me an analogy - we say Nirguna Brahman is without any utility - literally Nir-Guna. And I used to have analogies for why that isn't a bad thing. In this example, similarly, a block device has `0` file size. But if you `cat` a block device, you will get a lot of data. Because while a block device is empty in size, it is what allows you to read the physical block device.