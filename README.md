A template to quickly get you creating an open-source native-module micropython library with linting and CI to automatically build binaries.

# Usage

To use this template, click the green "Use this template" button in the github web interface.
Then run:

```bash
git clone YOUR_REPO
# then cd into your local repo, and run:
./bootstrap
```

And follow the on-screen prompts. ``bootstrap`` uses some git data (like detecting your username and repository name), so cloning the repo generated from the template is necessary.

General sanity checks and best practices are performed on provided responses. To disable these, run with the ``--no-verify`` flag:

```bash
./bootstrap --no-verify
```

The resulting repository will contain a terse [FNV1a32](http://www.isthe.com/chongo/tech/comp/fnv) hash-function implementation, demonstrating various native-module features.

Please reference the [official micropython native-module examples](https://github.com/micropython/micropython/tree/master/examples/natmod) for more documentation.

# Compatibility

This template's `bootstrap` functionality only works on MacOS/Linux/WSL, it *will not work natively on windows*.

# Features
* GitHub Actions to build & test native modules.
   * Prebuilt binaries will be automatically uploaded to the release page on semver tag (`vX.Y.Z`).
   * Go to your repo's github settings, go under `Actions>General>Workflow permissions` and check the radiobox for `Read and write permissions`.
* [Pre-commit](https://pre-commit.com) for various sanity checks.
* Preconfigured `Makefile` to automatically add python and C sources.
* Unix-port unit testing (with dev dependencies handled by [Belay](https://github.com/BrianPugh/belay)).
* A benchmark starter-script for measuring native module performance on a real micropython microcontroller board.

# Reference
If you find this in the git history of a project and you like the structure, visit
this template at https://github.com/BrianPugh/micropython-native-module-template .
