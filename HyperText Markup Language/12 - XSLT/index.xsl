<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>My first program on XSLT</title>
                <link rel="stylesheet" type="text/css" href="index.css"/>
            </head>
            <body>
                <h2>Some information</h2>
                <table border="1">
                    <tr bgcolor="#9acd32">
                        <th>first pack of information</th>
                        <th>Second pack of information</th>
                    </tr>
                    <xsl:for-each select="catalog/cd">
                        <xsl:sort select="people"/>
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="people"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
