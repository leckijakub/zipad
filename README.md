## Building

```
cargo build
```

## Flashing

```
cargo objcopy -- -O ihex zipad.hex # or arm-none-eabi-objcopy -O ihex target/thumbv7em-none-eabihf/debug/zipad zipad.hex
./uf2conv.py -c -f 0xADA52840 -o zipad.uf2 zipad.hex
# enter uf2 mode
cp zipad.uf2 /media/jale/XIAO-SENSE/CURRENT.UF2
```


## (Experimental) Flashing with rust tools

```
cargo objcopy -- -O binary zipad.bin
uf2conv zipad.bin -f 0xADA52840 --base 0x27000 -o zipad.uf2
```
