# VirtualBox Preserver

This program saves the state of running VirtualBox VMs for all users
at shutdown and restores them at boot.


## Installation

### Prerequisites

Your system needs the following:

 * VirtualBox
 * A POSIX Bourne shell and command-line utilities
 * Make
 * Systemd

### Build and Install

In this directory, run `make install`.

For building packages to be used by package managers, `make` can be
given a `PREFIX` variable.
