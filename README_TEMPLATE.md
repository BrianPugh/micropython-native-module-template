pythontemplate is a micropython native module.

---

# Installation
To use a precompiled micropython native module, download the appropriate architecture/micropython-version [from the release page](https://github.com/GIT_USERNAME/GIT_REPONAME/releases).
Requires MicroPython `>1.22.0`.

# Usage
```
import pythontemplate
```

# Development
pythontemplate uses [Belay](https://github.com/BrianPugh/belay) for managing dependencies.
The following sections require Belay to be installed and the unix port of `micropython` to be available.

The `Makefile` in this repo also assumes `MPY_DIR` to be set. E.g:

```bash
export MPY_DIR=~/micropython
```

### Unit Testing
```bash
make clean
make

belay run micropython -m unittest
```

### Benchmark
To benchmark pythontemplate, run the following commands:
```bash
make clean
ARCH=armv6m make  # Change the arch if running on different hardware.

belay install /dev/ttyUSB0 --with=dev
belay sync /dev/ttyUSB0 pythontemplate.mpy
belay run /dev/ttyUSB0 benchmark.py
```
