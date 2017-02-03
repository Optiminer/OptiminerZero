# How to Powertune with Optiminer

Optiminer itself does not currently have builtin controls for GPU fan, clocks or voltages. You can though use external controls to set those and they will be left unchanged by the miner.

## Powertune and Fan Control under Linux

### Running fgrlx driver

The fgrlx driver works with a tool called 'atitweak'. You can download it from https://github.com/mjmvisser/adl3

Basic commands:
```bash
# Set fan speed to 80% for all cards:
atitweak -f 80

# Reset fan speed to default for all cards:
atitweak -d

# Set powertune +50% for card 1:
atitweak -A 1 -p 50

```

Use `atitweak -h` to print a list of all options.

### Running amdgpu driver

TODO

## Powertune and Fan Control under Windows


The MSI afterburner allows control of various aspects of the GPUs for all AMD cards: https://www.msi.com/page/afterburner

## Custom BIOS

The golden way for optimal performance are custom BIOS. This allows you to also change clock and voltage when running
the miner under Linux. You can use Windows tools to download, change and upload modified card BIOS. As this is written to
the card's flash the settings will be preserved between reboots and even when running under Linux.

TODO add links to tools
