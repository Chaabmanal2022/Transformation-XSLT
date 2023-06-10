<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output indent="yes" method="html"/>
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
               <xsl:for-each select="//team">
                   <h1><xsl:value-of select="@name"></xsl:value-of></h1>
                   <b>Coach:</b><xsl:value-of select="coach/name"></xsl:value-of>(<xsl:value-of select="coach/country"></xsl:value-of>)
                   <ul>
                   <b>Players:</b>
                        <xsl:for-each select=".//player">
                            <xsl:sort select="upper-case(name)" order="ascending" />
                            <li><xsl:value-of select="name"></xsl:value-of></li>  
                            </xsl:for-each>
                   </ul>
               </xsl:for-each>
            </body>
        </html>  
    </xsl:template>
 
</xsl:stylesheet>