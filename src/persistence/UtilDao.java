package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UtilDao {

	private DataSource dataSource;
	
	public UtilDao(DataSource dataSource) {
		this.dataSource=dataSource;
	}
	
	public void dropDatabase(){
		
		Connection connection = dataSource.getConnection();
		try {
			String delete = "drop SEQUENCE if EXISTS sequenza_id;"
					+ "drop table if exists account;"
					+ "drop table if exists favourite;";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.executeUpdate();
			System.out.println("Executed drop database");
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}
	
	public void createDatabase(){
		
		Connection connection = dataSource.getConnection();
		try {
			String delete = "create SEQUENCE sequenza_id;"
					+ "create table account (nome varchar(30) primary key, password varchar(30));"
					+ "create table favourite (nome varchar(30) primary key, account varchar(30));";
			PreparedStatement statement = connection.prepareStatement(delete);
			statement.executeUpdate();
			System.out.println("Executed create database");
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	}
	
	public  void resetDatabase() {
			
			Connection connection = dataSource.getConnection();
			try {
				
				String delete = "delete FROM account";
				PreparedStatement statement = connection.prepareStatement(delete);		
				delete = "delete FROM favourite";
				statement = connection.prepareStatement(delete);	
				
				statement.executeUpdate();
				
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			} finally {
				try {
					connection.close();
				} catch (SQLException e) {
					throw new PersistenceException(e.getMessage());
			}
		}
	}
}
