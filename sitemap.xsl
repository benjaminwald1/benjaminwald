<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  exclude-result-prefixes="s image">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta name="robots" content="noindex"/>
<title>Sitemap | Benjamin Wald</title>
<style>
body{margin:0;background:#fff;color:#111;font:400 16px/1.6 -apple-system,BlinkMacSystemFont,"SF Pro Text","Segoe UI","Helvetica Neue",Helvetica,Arial,sans-serif;-webkit-font-smoothing:antialiased}
.wrap{max-width:880px;margin:0 auto;padding:64px 24px}
h1{font-size:28px;letter-spacing:-.02em;font-weight:650;margin:0 0 8px}
p{color:#5c5c5c;margin:0 0 32px}
p a{color:#111}
table{width:100%;border-collapse:collapse;border-top:1px solid #e6e6e6}
th,td{text-align:left;padding:14px 8px;border-bottom:1px solid #e6e6e6;vertical-align:top}
th{white-space:nowrap;font-size:13px;font-weight:600;letter-spacing:.08em;text-transform:uppercase;color:#8a8a8a}
td a{color:#111;overflow-wrap:anywhere}
td.m{color:#8a8a8a;white-space:nowrap;width:1%}
@media (max-width:720px){.wrap{padding:40px 16px}}
</style>
</head>
<body>
<div class="wrap">
<h1>Sitemap</h1>
<p>This is the XML sitemap for <a href="/">benjaminwald.me</a>, used by search engines. It lists <xsl:value-of select="count(s:urlset/s:url)"/> URL(s).</p>
<table>
<tr><th>URL</th><th>Images</th><th>Last modified</th></tr>
<xsl:for-each select="s:urlset/s:url">
<tr>
<td><a href="{s:loc}"><xsl:value-of select="s:loc"/></a></td>
<td class="m"><xsl:value-of select="count(image:image)"/></td>
<td class="m"><xsl:value-of select="s:lastmod"/></td>
</tr>
</xsl:for-each>
</table>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
