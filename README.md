# HOME-automation

## Description:

This repository contains a collection of scripts designed to streamline the initial setup process for a new macOS device. These scripts automate the installation of essential command-line tools, applications, and configurations, allowing users to quickly tailor their system to their preferences without the hassle of manual setup.


## List of ready-to-deploy articles:

- 💻 [MacOS pre-configured host](#MacOS/)


## MacOS pre-install Setup:

Clone the Repo

```bash
git clone https://github.com/DrPalmeritta/HOME-automation.git && cd HOME-automation
```

Run the .dots Script with Command Line Arguments

Since you probably don't want to install every section, the .dots script supports command line arguments to run only specified sections. Simply pass in the scripts that you want to install. Below are some examples.

For more customization, you can clone or fork the repo and tweak the .dots script and its associated components to suit your needs.

Run all:

```bash
./.dots all
```

Run specified scripts like bootstrap.sh, osxprep.sh, brew.sh, and osx.sh:

```bash
./.dots bootstrap osxprep brew osx
```
