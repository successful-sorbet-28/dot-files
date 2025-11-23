# locally installed binarys
fish_add_path -aP $HOME/.local/bin

# STM programmer
fish_add_path -aP /opt/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin/

# ARM cross compilation tools
fish_add_path -aP /opt/gcc-arm-none-eabi-8-2018-q4-major/bin

# cargo binary - rust tool-chain
fish_add_path -aP $HOME/.cargo/bin

# tfenv
fish_add_path -aP $HOME/.tfenv/bin

# pyenv
fish_add_path -aP $HOME/.pyenv/bin
