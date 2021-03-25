# Workstation Setup

This project automates the process of setting up a new Pivotal machine using a simple [Bash](https://www.gnu.org/software/bash/) script.

## Anti-goals

This project does not aim to do everything. Some examples:

 * We don't install everything that your project needs. These scripts should only install generally useful things, and prefer running quickly over being complete.
 * We avoid setting up and maintaining overly-custom configurations. When there is already a tool that will get us something in a conventional manner, such as [bash-it](https://github.com/Bash-it/bash-it), we prefer to use it instead of doing things ourselves.

**Warning: the automation script is currently aggressive about what it does and will overwrite vim configurations, bash-it configurations, etc.**

## Getting Started

- Run the latest version of macOS, currently [High Sierra](https://www.apple.com/macos/high-sierra/),
  unless you have a specific reason not to
- These scripts might work on previous versions, but are maintained with only the latest macOS in mind
- If you are not on High Sierra, you need to install the latest version of [Xcode](https://developer.apple.com/xcode/)
- On High Sierra, once you have used git (below), you will have installed the command line developer tools

Open up Terminal.app and run the following command:

```sh
mkdir -p ~/workspace &&
  cd ~/workspace &&
  git clone https://github.com/pivotal/workstation-setup.git &&
  cd workstation-setup
```

### Engineering Machine

If you're setting up an engineering machine choose which languages to install:

```sh
# For Labs developers (remove unnecessary languages when running command)
./setup.sh java ruby node golang python c docker

# For Data developers
./setup.sh c golang java docker

# For .net
./setup.sh dotnet

# For Solutions Architects/Platform Engineers
./setup.sh docker golang kubernetes terraform concourse
```

The list of Engineering applications is found in: [applications-common.sh](https://github.com/pivotal/workstation-setup/blob/master/scripts/common/applications-common.sh)

### Designer Machine

If you're setting up a design machine run the following:

```sh
./setup.sh designer
```

In addition to the Engineering applications, this script also installs the list of Design applications found in: [applications-designer.sh](https://github.com/pivotal/workstation-setup/blob/master/scripts/opt-in/designer.sh)
