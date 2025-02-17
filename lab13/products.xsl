<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Products</title>
                <style type="text/css">
                    body {
                        font-family: sans-serif;
                    }
                    .product {
                        margin-bottom: 10px;
                        border: 1px solid #eee;
                        padding: 10px;
                    }
                    .product-name {
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h1>Products</h1>
                <xsl:apply-templates select="products/product">
                    <xsl:sort select="number(price)" order="ascending" data-type="number"/>
                </xsl:apply-templates>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="product">
        <div class="product">
            <p class="product-name"><xsl:value-of select="name"/></p>
            <p>Price: <xsl:value-of select="price"/></p>
        </div>
    </xsl:template>

</xsl:stylesheet>