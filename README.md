# Four-bit binary counter

This TTGF26d workshop project counts clock edges from 0 to 15 on four output pins. Open the [saved Wokwi circuit](https://wokwi.com/projects/481736260616826881) to try it, or see the [datasheet and test procedure](docs/info.md) for pin behavior and reset timing.

The Tiny Tapeout workflow fetches the circuit from Wokwi and builds the GF180MCU layout. Build artifacts and precheck results are available in [GitHub Actions](https://github.com/rohen97/ttgf26d-polarity-inverter/actions/workflows/gds.yaml).

## Shuttle submission

Tiny Tapeout confirmed the four-bit binary counter submission to TTGF26d on 26 November 2026 and assigned one tile. The submitted design is [commit 3cc354d](https://github.com/rohen97/ttgf26d-polarity-inverter/commit/3cc354d6dc381fd172b8360ef0b6152b402beba8). Its [counter simulation](https://github.com/rohen97/ttgf26d-polarity-inverter/actions/runs/45777656179), [GDS build and precheck](https://github.com/rohen97/ttgf26d-polarity-inverter/actions/runs/45777656187), and [datasheet build](https://github.com/rohen97/ttgf26d-polarity-inverter/actions/runs/45777656191) passed.

See the [submission receipt](https://app.tinytapeout.com/projects/6813) and [shuttle pull request #73](https://github.com/TinyTapeout/tinytapeout-gf-26d/pull/73) for current status.
