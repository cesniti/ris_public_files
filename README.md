# RIS public website

The architecture of the www.ris.eu is presented here in the Master branch of the projet. The file have been extracted from the current web site in order to facilitate the transfer of the most important file to the new architecture.

The new order branch proposes a new set up of the files and page description.


The Goal is to obtain the following tree of information in the dedicated page for CESNI/TI : 

	.
	├── docs
	|	├── File								# all the files are stored in this folder for download
	|	└── Image		
	├── CESNI/TI								# wordpress page dedicated to CESNI/TI
		├── mission
		├── RIS directive 
		├── Definition RIS
		├── Temporary working group				# abstract problem analysis TI-1 to TI-4
		├── ecdis Standard 						# ref vers EU-lex  ou pdf ?
		├── nts Standard						# ref vers EU-lex  ou pdf ?
		├── vtt standard 						# ref vers EU-lex  ou pdf ?
		├── eri	standard 						# pdf 
		└── reference data
	├── Temporary working groups				# subsite dedicated to working groups
		├── ecdis 
		├── nts
		├── vtt
		└── eri


The current folder architecture is the following the tree : 

	.
	├── background							# Background information on EU
	|	└── european_union__eu_
	|		└── eu_support_programmes        
	├── contact_us                    			# contact form (not in use)				
	├── docs
	|	├── File								# all the files are stored in this folder for download
	|	└── Image
	├── events									# list of past relevant events to RIS
	├── expert_groups
	|	├── ecdis
	|	├── eri
	|	├── introduction
	|	├── joint_task_force
	|	├── nts
	|	└── vtt
	├── general
	|	├── contact_us
	|	└── european_union__eu_
	|		├── eu_involvement
	|		└── eu_support_programmes
	|	└── parties_involved
	|		├── business
	|		├── eu_member_states
	|		├── eu_organisations
	|		├── european_river_commissions
	|		├── expert_groups
	|		└── other_international_organisations
	|	└── what_is_ris_
	|		├── ais
	|		├── description
	|		├── electronic_navig_charts__enc_
	|		├── electronic_reporting
	|		├── history
	|		└── notice_to_skippers__nts_
	├── home                     				# starting page
	├── library                    				# 
	|	└── expert_groups
	|		└── ecdis
	|			├── general_ecdis
	|			├── inland_ecdis_2_0
	|			├── inland_ecdis_2_1
	|			├── inland_ecdis_2_2
	|			├── inland_ecdis_2_3
	|			├── inland_ecdis_2_4
	|			└── water_level_information
	|		└── eri
	|			├── eri_documents
	|			├── general_eri
	|			├── official_standards
	|			└── reference_data
	|		└── nts
	|			├── general_nts
	|			├── guides
	|			├── implementation_status
	|			├── nts_version_1x
	|			├── nts_version_2_0
	|			├── nts_version_2_0
	|			├── nts_version_3_0
	|			├── nts_version_4_0
	|			└── reference_data
	|		└── ris_index
	|			└── ris_index
	|		└── vtt
	|			├── asm
	|			├── aton
	|			├── general_vtt
	|			├── standards
	|				├── old_standards
	|					├── vtt_edition_1_0
	|					└── vtt_edition_1_01
	|				└── vtt_edition_1_2
	|			└── visualisation
	├── news                   					# list of past relevant news broadcasted on the RIS website
	├── projects								# list of past relevant projects listed on the RIS website
	├── services
	|	├── european_hull_data_base__ehdb_
	|	├── european_reference_data_management_system__erdms_
	|	├── maintenance_of_inland_enc__electronic_navigational_charts__register_and_the_digital_parts_of_the_inland_enc_standard
	|	└── services_at_european_level
	├── submit_your_project
	└── README.md
