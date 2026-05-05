#!/bin/bash

# Drive boot and reset pins for the bridge and port processor low
pinctrl set 10 op dl
pinctrl set 9 op dl
pinctrl set 11 op dl
pinctrl set 7 op dl

# Turn 3.3v ON
pinctrl set 14 op dh

# Turn 12v ON
pinctrl set 26 op dh

# Turn flashing on
pinctrl set 20 op dh