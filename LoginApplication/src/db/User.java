package db;

public class User {
	private String name;
	private String password;
	public User(String name,String password){
		this.name=name;this.password=password;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getPassword(){
		return password;
	}
}
