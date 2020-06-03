package ControllerServlet;

import ControllerAction.Action;
import ControllerAction.deletemovie;
import ControllerAction.deletereserve;
import ControllerAction.insertmovie;
import ControllerAction.login;
import ControllerAction.reservemovie;
import ControllerAction.reservemovieform;
import ControllerAction.selectmovie;
import ControllerAction.selectmoviem;
import ControllerAction.selectreservemovie;
import ControllerAction.signup;
import ControllerAction.updatemovie;
import ControllerAction.updatemovieform;
import ControllerAction.viewmore;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
		super();
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory :" + command);
		if (command.equals("login")) {
			action = new login();
			System.out.println(command + "로 이동");
		} else if (command.equals("signup")) {
			action = new signup();
			System.out.println(command + "로 이동");
		} else if (command.equals("insertmovie")) {
			action = new insertmovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("selectmovieformember")) {
			action = new selectmoviem();
			System.out.println(command + "로 이동");
		} else if (command.equals("updatemovieform")) {
			action = new updatemovieform();
			System.out.println(command + "로 이동");
		} else if (command.equals("updatemovie")) {
			action = new updatemovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("selectmovieformanager")) {
			action = new selectmovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("deletemovie")) {
			action = new deletemovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("viewmore")) {
			action = new viewmore();
			System.out.println(command + "로 이동");
		} else if (command.equals("reservemovieform")) {
			action = new reservemovieform();
			System.out.println(command + "로 이동");
		} else if (command.equals("reservemovie")) {
			action = new reservemovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("selectreservemovie")) {
			action = new selectreservemovie();
			System.out.println(command + "로 이동");
		} else if (command.equals("deletereserve")) {
			action = new deletereserve();
			System.out.println(command + "로 이동");
		}
		return action;
	}
}
