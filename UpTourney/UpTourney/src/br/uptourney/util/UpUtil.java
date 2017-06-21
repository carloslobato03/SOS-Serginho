package br.uptourney.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class UpUtil {

	private static Connection connection;

	static {

		try {
			Class.forName("org.hsqldb.jdbcDriver");
			connection = DriverManager.getConnection("jdbc:hsqldb:file:C:/UpTourney/WebContent/banco/banco", "SA", "");
//			PreparedStatement stmt = connection.prepareStatement("create table usuarios(" +
//   "+  id_usuario serial, " +
//   "+  login varchar(15)," +
//   "+  senha varchar(15)");
//			stmt.execute();
//			stmt.close();
			System.out.println("banco");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		return connection;
	}

}
