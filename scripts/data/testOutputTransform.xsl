<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="text" indent="yes"/>

<xsl:template match="/">
==============================================================================
<xsl:value-of select="//testcase/@classname"></xsl:value-of> 
==============================================================================

<xsl:value-of select="//system-out"></xsl:value-of>

______________________________________________________________________________
</xsl:template>


</xsl:stylesheet>
