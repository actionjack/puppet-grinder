Name:          grinder
Summary:       Distributed load testing framework - Java, Jython, or Clojure scripts.
Version:       3.11 
Release:       1
License:       Copyright 2011 Sonian, Inc. and contributors.
Group:         System Environment/Libraries
Source0:       %{name}-%{version}-binary.zip
URL:           http://sourceforge.net/projects/grinder
Buildarch:     noarch 
BuildRoot:     %{_tmppath}/%{name}-%{version}-%{release}-root
Requires:      java >= 1.6.0
 

%description
The Grinder is a load testing framework that makes it easy to run a distributed test using many load injector machines.
Test scripts are written in Jython, and can call out to arbitrary Java code, providing support for testing a large range of network protocols.

%prep

%setup -q 

%build
%install

rm -rf "${RPM_BUILD_ROOT}"
mkdir -p $RPM_BUILD_ROOT/usr/share/grinder
rsync -av $RPM_BUILD_DIR/%{name}-%{version}/ $RPM_BUILD_ROOT/usr/share/grinder

%clean
rm -rf "${RPM_BUILD_ROOT}"

%files

%defattr(-, root, root, -)
%dir /usr/share/grinder
/usr/share/grinder/*

%changelog
