package persistence;

import persistence.dao.*;

class PostgresDAOFactory extends DAOFactory {

	private static  DataSource dataSource;

	static {
		try {
			Class.forName("org.postgresql.Driver").getConstructor().newInstance();
			//questi vanno messi in file di configurazione!!!	
			//dataSource=new DataSource("jdbc:postgresql://52.39.164.176:5432/xx","xx","p@xx");
			//dataSource = new DataSource("jdbc:postgresql://horton.elephantsql.com:5432/njggtfej", "njggtfej","QgLyoMomCLcGAAbs9y3pCNNaTv1K9ADP"); //REMOTO NO GOOD
			dataSource= new DataSource("jdbc:postgresql://localhost:5432/Onebit", "postgres", "postgres"); //LOCALE
			//dataSource = new DataSource("jdbc:postgresql://postgresql-antyj1994.alwaysdata.net/antyj1994_improvegg", "antyj1994","antonio123"); //REMOTO
		} 
		catch (Exception e) {
			System.err.println("PostgresDAOFactory.class: failed to load MySQL JDBC driver\n"+e);
			e.printStackTrace();
		}
	}

	@Override
	public AccountDao getAccountDAO() {
		return new AccountDaoJDBC(dataSource);
	}
	
	@Override
	public FavouriteDao getFavouriteDAO() {
		return new FavouriteDaoJDBC(dataSource);
		
	}
	
	@Override
	public UtilDao getUtilDAO(){
		return new UtilDao(dataSource);
	}
}
