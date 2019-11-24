package test;

import persistence.DAOFactory;
import persistence.UtilDao;
import persistence.dao.*;
import model.*;

public class TestDatabaseMain {

	public static void main(String[] args) {

		DAOFactory factory = DAOFactory.getDAOFactory(DAOFactory.POSTGRESQL);
		UtilDao util = factory.getUtilDAO();
		util.dropDatabase();
		util.createDatabase();
		System.out.println("Suka");
		
		AccountDao accountDao = factory.getAccountDAO();

		Account account1 = new Account("Michele","michele123");
		Account account2 = new Account("Michelino","michele1234");
		Account account3 = new Account("Minchiele","michele12345");
		Account account4 = new Account("Robo", "ech");
		
		accountDao.save(account1);
		accountDao.save(account2);
		accountDao.save(account3);
		accountDao.save(account4);
		
		System.out.println("Retrieve all accounts");
		for(Account a : accountDao.findAll()) {
			System.out.println(a.getNome());
			System.out.println(".-.-.-.");
		}

		
	}
	//prova

}
