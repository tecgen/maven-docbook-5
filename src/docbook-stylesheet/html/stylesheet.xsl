<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="1.0">
	<!-- 
	**************************************** 
	* style sheet for the HTML generation  *
	****************************************
	-->
	
	<xsl:import href="urn:docbkx:stylesheet" />
	<!-- http://www.sagehill.net/docbookxsl/ http://docbkx-tools.sourceforge.net/ -->
	
	<!-- custom xsl configuration -->
	<!-- 
	<xsl:import href="urn:docbkx:stylesheet/highlight.xsl" /> 
	<xsl:param name="highlight.source" select="1" />
	 -->
	<xsl:param name="paper.type" select="A4" />
	<xsl:param name="use.extension" select="1" />
	<xsl:param name="callouts.extension" select="1"></xsl:param>
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
	<xsl:param name="callout.graphics" select="1" />
	<xsl:param name="callout.icon.size">7pt</xsl:param>
	<xsl:param name="callout.graphics.path">images/callouts/</xsl:param>
	<xsl:param name="callout.graphics.extension">.png</xsl:param>
	<xsl:param name="admon.graphics" select="1" />
	<xsl:param name="admon.graphics.path">images/</xsl:param>
	<xsl:param name="admon.graphics.extension">.png</xsl:param>
	<!-- 
	<xsl:param name="admon.style">
  		<xsl:value-of select="concat('margin-', $direction.align.start,            ': 0.5in; margin-', $direction.align.end, ': 0.5in;')"></xsl:value-of>
	</xsl:param>
	 -->
	<xsl:param name="graphicsize.extension" select="1"></xsl:param>
	<xsl:param name="textinsert.extension" select="1"></xsl:param>
	<xsl:param name="linenumbering.extension" select="1"></xsl:param>
	<xsl:param name="ignore.image.scaling" select="1"></xsl:param>
	<!-- <xsl:param name="nominal.image.width" select="6 * $pixels.per.inch"></xsl:param>  -->
	<xsl:param name="generate.css.header" select="1"></xsl:param>
</xsl:stylesheet>
