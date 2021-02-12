# JumpCloud Test
1. [About](#about)
1. [Installation](#installation)
1. [Documentation](#documentation)
    1. [Getting started](#getting-started)
    1. [Handling selection changes (optional)](#handling-selection-changes-optional)
    1. [Providing default search results (optional)](#providing-default-search-results-optional)
    1. [Saving form state when creating new records (optional)](#saving-form-state-when-creating-new-records-optional)
1. [Reference](#reference)

## About

This is a generic &amp; customizable component built using Salesforce [Lightning Web Components](https://developer.salesforce.com/docs/component-library/documentation/lwc) and [SLDS](https://www.lightningdesignsystem.com/) style.<br/>
It does not rely on third party libraries and you have full control over its datasource.

<b>Features</b>

The component provides the following features:

-   Item one
-   Item two
-   Item three

## Installation

The default installation installs the lookup component and a sample application available under this URL (replace the domain):<br/>
`https://YOUR_DOMAIN.lightning.force.com/c/SampleLookupApp.app`

If you wish to install the project without the sample application, edit `sfdx-project.json` and remove the `src-sample` path.

Install the sample app by running this script:

**MacOS or Linux**

```
./install-dev.sh
```

**Windows**

```
install-dev.bat
```

## Documentation

### Getting Started

Follow these steps in order to use the lookup component:

1. **Write the search endpoint**
