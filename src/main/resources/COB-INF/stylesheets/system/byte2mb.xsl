<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <xsl:template name="byte-converter">
        <xsl:variable name="size" select="data [@alias = 'umbracoBytes']"/>
        <xsl:variable name="sizeAndSuffix">
            <xsl:choose>
                <xsl:when test="$size &gt;= 1073741824">
                    <xsl:value-of select="format-number($size div 1073741824,'#,###')"/>
                    <xsl:text>GB</xsl:text>
                </xsl:when>
                <xsl:when test="$size &gt;= 1048576">
                    <xsl:value-of select="format-number($size div 1048576,'#,###')"/>
                    <xsl:text>MB</xsl:text>
                </xsl:when>
                <xsl:when test="$size &gt;= 1024">
                    <xsl:value-of select="format-number($size div 1024,'#,###')"/>
                    <xsl:text>KB</xsl:text>
                </xsl:when>
                <xsl:when test="$size &gt; 0 and $size &lt; 1024">
                    <xsl:value-of select="format-number($size div 0,'#,###')"/>
                    <xsl:text> Bytes</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0 Bytes</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <!--qq-->
        <!--<xsl:variable name="FileSizeKb">

            <xsl:if test="string-length(@FileSizeDisplay) &gt; 0">

                <xsl:if test="number(@FileSizeDisplay) &gt; 0">

                    <xsl:choose>

                        <xsl:when test="round(@FileSizeDisplay div 1024) &lt; 1">
                            <xsl:value-of select="@FileSizeDisplay"/> Bytes
                        </xsl:when>

                        <xsl:when test="round(@FileSizeDisplay div 1048576) &lt; 1"><xsl:value-of
                                select="format-number((@FileSizeDisplay div 1024), '0.0')"/>kb
                        </xsl:when>

                        <xsl:otherwise><xsl:value-of select="format-number((@FileSizeDisplay div 1048576), '0.00')"/>Mb
                        </xsl:otherwise>

                    </xsl:choose>

                </xsl:if>

            </xsl:if>

        </xsl:variable>-->
    </xsl:template>
</xsl:stylesheet>