CWD			= $(CURDIR)
JAVAHOME	= $(CWD)/labsjdk1.8.0_172-jvmci-0.48-fastdebug
JAVAC		= $(JAVAHOME)/bin/javac
JAVA		= $(JAVAHOME)/bin/java

go: SimpleMumblerMain.class
	$(JAVA) SimpleMumblerMain

%.class: %.java
	$(JAVAC) $<
