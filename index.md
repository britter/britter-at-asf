---
layout: default
---

# Welcome to britter at ASF

Hello, my name is Benedikt Ritter and this is my personal committer page at the
ASF. I'm living in Germany in the rhine-area in a city called Duisburg. I'm a
member of the Apache Commons PMC, where I work mainly on:

## Commons Lang

A library that provides a host of helper utilities for the
[java.lang API](http://docs.oracle.com/javase/7/docs/api/java/lang/package-summary.html).
If you're tied of writing code like

{% highlight java %}
if (myString != null && !myString.isEmpty()) {
  // do something with myString
}
{% endhighlight %}

then you should give Commons Lang a try and the above code will become

{% highlight java %}
if (StringUtils.isEmpty(myString)) {
  // myString is not null and not empty
}
{% endhighlight %}

## Commons CSV

A library for parsing [comma separated value](http://tools.ietf.org/html/rfc4180)
files. It has the most important CSV Formats already build in and provides a
rich fluent API to define custom CSV formats. Parsing CSV data becomes as easy as:

{% highlight java %}
Reader in = new FileReader("path/to/file.csv");
for (CSVRecord record : CSVFormat.EXCEL.parse(in)) {
    String lastName = record.get("Last Name");
    String firstName = record.get("First Name");
}
{% endhighlight %}

## Commons BeanUtils2

A rewrite of the Commons BeanUtils library which aims at simplifying the usage
of reflection in Java. It provides a fluent API for accessing and setting
properties of [JavaBeans](http://www.oracle.com/technetwork/java/javase/documentation/spec-136004.html).


{% highlight java %}
import static org.apache.commons.beanutils2.BeanUtils.on;

on(myBean).set("name").with("Peter")
          .set("age").with(33);
{% endhighlight %}
