<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Аттестация студентов</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid #ddd;
                        padding: 8px;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    .low-grade {
                        background-color: red;
                    }
                    .high-grade {
                        background-color: green;
                    }
                </style>
            </head>
            <body>
                <h2>Аттестация студентов</h2>
                <table>
                    <tr>
                        <th>Имя</th>
                        <th>Предмет</th>
                        <th>Оценка</th>
                    </tr>
                    <xsl:for-each select="students/student">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="subject"/></td>
                            <td>
                                <xsl:attribute name="class">
                                    <xsl:choose>
                                        <xsl:when test="grade &lt; 4">low-grade</xsl:when>
                                        <xsl:when test="grade &gt; 8">high-grade</xsl:when>
                                    </xsl:choose>
                                </xsl:attribute>
                                <xsl:value-of select="grade"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
