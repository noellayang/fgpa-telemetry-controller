# fgpa-telemetry-controller
Small Verilog project to learn and demo RTL design, sim, and verification fundamentals.
The first stage currently implements a synchronous sample timer that generates a one-clock-cycle pulse after a configurable number of clock cycles.


## Current functionality
![One clock cycle in GTKWave](images/clock_cycle.png "One clock cycle").

- Synchronous counter-based timer
- Configurable sampling interval using a Verilog parameter
- One-cycle `sample_tick` output
- Synchronous reset
- Testbench-generated clock and reset signals
- Simulation with Icarus Verilog
- Waveform inspection using GTKWave

Compile:

```bash
iverilog -g2012 -o sim rtl/sample_timer.v tb/timer_tb.v
