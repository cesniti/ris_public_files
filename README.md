# RIS public / members website

The architecture of the www.ris.eu is presented here in the Master branch of the projet. The file have been extracted from the current web site in order to facilitate the transfer of the most important file to the new architecture.

The new set up of the files and website structure.
The content docs/File structure has been maintained to avoid duplication and simplify the usage of file links. 
The content (all files individually) of the whole website is time-stamped you can find the history of all changes / update here https://github.com/cesniti/ris_public_files/commits/master

The current tree of the content is : 

	.
	├── Subsite Temporary working groups					# Sub website dedicated to working groups ie. ris.cesni.eu
		├── home
		├── RIS												# Definition of RIS / RIS objectives / Services / operational perspective
			├── ecdis 										# Group definition / mandate / Standard editions
			├── ecdis download area							# ECDIS DOCUMENTATION
			├── eri											# Group definition / mandate / Standard editions
			├── eri download								# ERI DOCUMENTATION
			├── nts											# Group definition / mandate / Standard editions
			├── nts download 								# NtS DOCUMENTATION
			├── vtt											# Group definition / mandate / Standard editions
			├── vtt download area  							# VTT DOCUMENTATION
			└── reference data 								# On going
		├── _assets
			├── ERI-ERINOT									# ERINOT xsd file as asset
			├── ERI-ERIVOY									# ERIVOY xsd file as asset
			├── ERI-PAXLST									# PAXLST xsd file as asset
			├── NtS-MS										# NtS web service definition
			├── NtS_XSD										# NtS XSD files
			├── NtS_NtS_XML_Schema_Definition_XSD			# NtS Schema in an excel file
			└── NtS_NtS_web_service_specification_WSDL		# NtS the web service specification
		├── docs
			├── File										# Inherited files are stored in this folder for download
			└── Image										# All image stored in this folder are related (previous website)
		├── css												# web css files
		├── images											# Images related to current template
		└── scripts											# Script related to current template


# how to download a local version of the website on my desktop?
- Download the newest version of github desktop on your computer https://desktop.github.com/
- Install the software 
- clone the repository (CTRL+SHIFT+O)
![](images/admin/clone_repo.png)

# how to update the website with the content of github ? 
**FOR CESNI secretartiat administrator**: Login to the shell (using ssh / putty) of the website and execute the following command :

```console
cd www
git pull
```

# the structure will contain submodule that the Temporary working group can update themselves :
- creation of cesniti twg repositories 
- list repository here 
- modify the git file to allow an update

Temporary working group ERI 

# Usefull
https://stackoverflow.com/questions/7813030/how-can-i-have-linked-dependencies-in-a-git-repo

# link to the dedicated website cesni/ti

	├── CESNI/TI											# Wordpress page dedicated to CESNI/TI (under activities/)
		├── Mission
		├── RIS Directive 
		├── Work programme
		└── Site Temporary working group					# Abstract work programme TI-1 to TI-4

