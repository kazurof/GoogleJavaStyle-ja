#
# convert textile to html
#

require "RedCloth"
require "erb"

f = File.open("GoogleJavaStyle-ja.textile" , "r:utf-8")
result = RedCloth.new(f.read).to_html

erb = ERB.new(DATA.read)
out = File.open("index.html" , "w:utf-8")
out.write(erb.result)

__END__
<%# coding: UTF-8 %><!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%= result %>
</body>
</html>

