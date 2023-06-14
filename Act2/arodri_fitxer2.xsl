<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <body>
        <h2>Colegio</h2>

        <!--Se crea una tabla y le coloco un borde y el color a los cinco nodos-->
        <table border="1">

          <!--Coloco los nodos con los th para colocarlos en primera fila que se pusieron desde el XML de forma ordenada-->
          <tr bgcolor="#9acd32">
            <th>Grupo</th>
            <th>Profesor</th>
            <th>Delegado</th>
            <th>Subdelegado</th>
            <th>Alumno</th>
          </tr>

          <!--Se coloca el contenido del XML para que busque los hijos de los nodos correspondientes-->
          <xsl:for-each select="colegio/clase">
          <tr>
            <td class="primero">
              <xsl:value-of select="grupo"/></td>
            <td class="segundo">
              <xsl:value-of select="profesor"/></td>
            <td class="tercero">
              <xsl:value-of select="delegado"/></td>
            <td class="cuarto">
              <xsl:value-of select="subdelegado"/></td>
            <td class="quinto">
              <xsl:value-of select="alumno"/></td>
          </tr>
          </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
      
</xsl:stylesheet>
      