CWD			= $(CURDIR)

JAVA_HOME	= $(CWD)/labsjdk1.8.0_172-jvmci-0.48-fastdebug
JAVAC		= $(JAVA_HOME)/bin/javac
JAVA		= $(JAVA_HOME)/bin/java

CLASSES		 = bin/mumbler/SimpleMumblerMain.class
CLASSES		+= bin/mumbler/Environment.class

SOURCES		 = src/mumbler/SimpleMumblerMain.java
SOURCES		+= src/mumbler/Environment.java

go: $(CLASSES)
	$(JAVA) -cp $(CWD)/bin mumbler.SimpleMumblerMain no.lisp

$(CLASSES): $(SOURCES) Makefile
	$(JAVAC) -sourcepath $(CWD)/src -d $(CWD)/bin $(SOURCES)
#-sourcepath $(CWD) 
