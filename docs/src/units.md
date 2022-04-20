# Working with Units

Unit conversion can be tedious when working with simulation
of real experiments, all the Bloqade variable supports using explicit units from [Unitful](https://github.com/PainterQubits/Unitful.jl).
When using explicit units, they will be converted to our
default unit set at construction automatically, e.g we can
use a different unit set to create the hamiltonian

```@repl units
using Bloqade
using Unitful: kHz, µm
rydberg_h([(1, ), (2, )], C=109.2kHz * µm^6)
```

the parameter `C` is automatically converted to default unit `MHz * µm^6`

You can also specify units on waveforms

```@repl units
using Unitful: rad, ms
wf = piecewise_linear(clocks=[0.0ms, 0.1ms, 0.2ms], values=[0.1, 1.1, 2.1] .* (rad/ms))
```