package ExamplePackage;

import java.sql.Connection;

public interface iBaseDAO {

	
	 public Connection getConnection(String host,String username,String password);
	 
	 
}
