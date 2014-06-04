name              "app_breaking_java"
maintainer        "Socrata, Inc."
maintainer_email  "chefs@socrata.com"
license           "Apache 2.0"
description       "Installs Java runtime."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.22.2"

recipe "app_breaking_java::default", "Installs Java runtime"
recipe "app_breaking_java::default_java_symlink", "Updates /usr/lib/jvm/default-java"
recipe "app_breaking_java::ibm", "Installs the JDK for IBM"
recipe "app_breaking_java::ibm_tar", "Installs the JDK for IBM from a tarball"
recipe "app_breaking_java::openjdk", "Installs the OpenJDK flavor of Java"
recipe "app_breaking_java::oracle", "Installs the Oracle flavor of Java"
recipe "app_breaking_java::oracle_i386", "Installs the 32-bit jvm without setting it as the default"
recipe "app_breaking_java::oracle_rpm", "Installs the Oracle RPM flavor of Java"
recipe "app_breaking_java::purge_packages", "Purges old Sun JDK packages"
recipe "app_breaking_java::set_attributes_from_version", "Sets various attributes that depend on jdk_version"
recipe "app_breaking_java::set_java_home", "Sets the JAVA_HOME environment variable"
recipe "app_breaking_java::windows", "Installs the JDK on Windows"

%w{
    debian
    ubuntu
    centos
    redhat
    scientific
    fedora
    amazon
    arch
    oracle
    freebsd
    windows
    suse
    xenserver
    smartos
}.each do |os|
  supports os
end

suggests "windows"
suggests "aws"
