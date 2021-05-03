# McAfee ENS ATP Rules Documentation

## Overview

JTIClientRules.xsl is a XSL-Transform document to use with the JTIClientRules.xml file distributed by McAfee within the Adaptive Threat Prevention (ATP) module for Endpoint Security.

JTIClientRules.bat is provided to simlify the application of this XSLT template via Microsoft XSL parse (msxsl.exe - from MSXML add-on)

## Requirements

You need an XSL-Transform parser. Here I used msxsl.exe from Microsoft XML Library. Once MSXML is installed on your system, locate msxsl.exe.

## How to use it

1. Clone this github repository
2. Copy the JTIClientRules.xml file from your McAfee ePolicy Orchestrator (ePO) Master / Distributed repository in your local folder.

   On your ePO Server, the file is located here:
   ```
   C:\Program Files (x86)\McAfee\ePolicy Orchestrator\DB\Software\Current\JTICLIENTMETA\Content\0000
   ```
3. Copy the msxsl.exe file in your local folder.
4. Run the script JTIClientRules.bat to generate the ATP Rules documentation in all languages.
