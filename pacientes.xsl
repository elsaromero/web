<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <head>
      <style>
        table {
          border-collapse: collapse;
          width: 80%;
        }
        th, td {
          border: 1px solid black;
          padding: 8px;
          text-align: center;
        }
        th {
          background-color: #a0d468;
        }
      </style>
    </head>
    <body>
      <h2>Mis pacientes</h2>
      <table>
        <tr>
          <th>Patient</th>
          <th>Name</th>
          <th>Sex</th>
          <th>Year of Birth</th>
          <th>Age</th>
          <th>Weight (kg)</th>
        </tr>
        <xsl:for-each select="Patient_Report/Patient">
          <tr>
            <td><xsl:value-of select="PatientID"/></td>
            <td><xsl:value-of select="Name"/></td>
            <td><xsl:value-of select="sex"/></td>
            <td><xsl:value-of select="substring(Birth_Date, 1, 4)"/></td>
            <td><xsl:value-of select="Age"/></td>
            <td><xsl:value-of select="Weigth"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </body>
  </html>
</xsl:template>

</xsl:stylesheet>
