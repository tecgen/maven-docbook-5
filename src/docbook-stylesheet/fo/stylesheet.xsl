<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<!-- 
	**************************************** 
	* style sheet for the PDF generation  *
	****************************************
	-->
	<xsl:import href="urn:docbkx:stylesheet" />
	<!-- http://www.sagehill.net/docbookxsl/ http://docbkx-tools.sourceforge.net/ -->
	<!--  
	TODO use the same docbook version to generate this file!
	<xsl:import href="titlepage-1and1.xsl"/>
	-->
	
	<!-- custom xsl configuration -->
	<xsl:import href="urn:docbkx:stylesheet/highlight.xsl" /> 
	<xsl:param name="highlight.source" select="1" />
	<xsl:param name="paper.type" select="A4" />
	<xsl:param name="use.extension" select="1" />
	<xsl:param name="section.autolabel" select="1" />
	<!-- Do section labels include the component label? 
	   If non-zero, section labels are prefixed with the label of the component that contains them -->
	<xsl:param name="section.label.includes.component.label" select="1"></xsl:param>
	<xsl:param name="section.autolabel.max.depth">4</xsl:param>
	<xsl:param name="body.start.indent">0</xsl:param>
	<xsl:param name="ulink.show" select="0" />
	<!-- Customize layout of xref links: http://docbook.sourceforge.net/release/xsl/current/doc/fo/xref.properties.html -->
	<!-- Underlining links in pdf -->
	<xsl:attribute-set name="xref.properties">
		<xsl:attribute name="text-decoration">underline</xsl:attribute> 
		<xsl:attribute name="color">black</xsl:attribute>
	</xsl:attribute-set>
	<xsl:param name="shade.verbatim" select="0" />
	<xsl:param name="callouts.extension" select="1" />
	<xsl:param name="callout.graphics" select="1" />
	<xsl:param name="callout.icon.size">7pt</xsl:param>
	<xsl:param name="callout.graphics.path">src/docbook-stylesheet/images/callouts/</xsl:param>
	<xsl:param name="callout.graphics.extension">.png</xsl:param>
	<xsl:param name="admon.graphics" select="1"></xsl:param>
	<xsl:param name="admon.graphics.path">src/docbook-stylesheet/images/</xsl:param>
	<xsl:param name="admon.graphics.extension">.png</xsl:param>
	<xsl:param name="admon.textlabel" select="1"></xsl:param>
	<xsl:attribute-set name="graphical.admonition.properties">
		<!--  <xsl:attribute name="border">1px dotted grey</xsl:attribute> -->
		<xsl:attribute name="border">2pt outset grey</xsl:attribute>
		<xsl:attribute name="background-color">#f1f1f1</xsl:attribute>
		<xsl:attribute name="padding">0.5em</xsl:attribute>
		<xsl:attribute name="padding-right">1em</xsl:attribute>
  		<xsl:attribute name="space-before.optimum">1em</xsl:attribute>
  		<xsl:attribute name="space-before.minimum">0.8em</xsl:attribute>
  		<xsl:attribute name="space-before.maximum">1.2em</xsl:attribute>
  		<xsl:attribute name="space-after.optimum">1em</xsl:attribute>
  		<xsl:attribute name="space-after.minimum">0.8em</xsl:attribute>
  		<xsl:attribute name="space-after.maximum">1.2em</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="admonition.title.properties">
  		<xsl:attribute name="font-size">10pt</xsl:attribute>
  		<xsl:attribute name="font-weight">bold</xsl:attribute>
	</xsl:attribute-set>
	<xsl:attribute-set name="section.properties">
		<!-- 
		><xsl:attribute name="font-family">
    		<xsl:value-of select="$title.fontset"></xsl:value-of>
  		</xsl:attribute>
  		-->
	</xsl:attribute-set>
	<xsl:attribute-set name="figure.properties" use-attribute-sets="formal.object.properties">
		<!-- <xsl:attribute name="border">2pt outset grey</xsl:attribute>  -->
	</xsl:attribute-set>
	
</xsl:stylesheet>
