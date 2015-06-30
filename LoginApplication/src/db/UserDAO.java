package db;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

import db.User;

public class UserDAO {


	/**
	 * 用户录入
	 */
	public static void save(User user) {
		System.out.println("save");
		BufferedWriter fw = null;
		try {
			File file = new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+user.getName()+".txt");//根据账号建立文件(其实需要前端正则限定，并且这种方式并不安全)
			fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8")); // 指定编码格式，以免读取时中文字符异常
			fw.append(user.getPassword());
			fw.flush(); // 全部写入缓存中的内容
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (fw != null) {
				try {
					fw.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	/**
	 * 用户查找
	 */
	public static User findByName(String username) {
		String password="";
		try {
            String encoding="GBK";
            File file=new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+username+".txt");
            if(file.isFile() && file.exists()){ //判断文件是否存在
                InputStreamReader read = new InputStreamReader(
                new FileInputStream(file),encoding);//考虑到编码格式
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while((lineTxt = bufferedReader.readLine()) != null){
                    password+=lineTxt;
                }
                read.close();
                return new User(username,password);
		    }else{
		        System.out.println("找不到指定的文件");
		        return null;
		    }
		    } catch (Exception e) {
		        System.out.println("读取文件内容出错");
		        e.printStackTrace();
		        return null;
		    }
	}
	
	/**
	 * 判断用户是否已经存在
	 */
	public static boolean isExistUser(String username) {
         File file=new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+username+".txt");
		return file.isFile() && file.exists();
	}

}
