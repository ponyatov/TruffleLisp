package mumbler;

import mumbler.Environment;

public class SimpleMumblerMain {

public static void main(String[] args) {
	assert args.length == 1 : "Mumbler file required";
	runMumbler(args[0]);
}

private static void runMumbler(String filename) {
	Environment topEnv = new Environment();//.getBaseEnvironment();
}

}

