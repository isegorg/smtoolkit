# SmToolkit

Scenario Modelling Toolkit is a modelling environment that empowers you to make software systems using scenarios as source of truth for encoded knowledge instead of traditional programming languages.
## Installation

```st
Metacello new
	repository: 'github://isegorg/smtoolkit:main/src';
	baseline: 'SmToolkit';
	load
```

## Load Lepiter

After installing with Metacello, you will be able to execute

```
#BaselineOfSmToolkit asClass loadLepiter
```
