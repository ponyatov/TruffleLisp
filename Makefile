CWD			= $(CURDIR)

JAVA_HOME	= $(CWD)/labsjdk1.8.0_172-jvmci-0.48-fastdebug
JAVAC		= $(JAVA_HOME)/bin/javac
JAVA		= $(JAVA_HOME)/bin/java

CLASSES		 = mumbler/SimpleMumblerMain.class
CLASSES		+= mumbler/Environment.class

SOURCES		 = SimpleMumblerMain.java
SOURCES		+= Environment.java

go: $(CLASSES)
	$(JAVA) -cp $(CWD) mumbler.SimpleMumblerMain no.lisp

$(CLASSES): $(SOURCES) Makefile
	$(JAVAC) -d $(CWD) $(SOURCES)
#-sourcepath $(CWD) 
