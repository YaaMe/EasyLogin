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
	 * �û�¼��
	 */
	public static void save(User user) {
		System.out.println("save");
		BufferedWriter fw = null;
		try {
			File file = new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+user.getName()+".txt");//�����˺Ž����ļ�(��ʵ��Ҫǰ�������޶����������ַ�ʽ������ȫ)
			fw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8")); // ָ�������ʽ�������ȡʱ�����ַ��쳣
			fw.append(user.getPassword());
			fw.flush(); // ȫ��д�뻺���е�����
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
	 * �û�����
	 */
	public static User findByName(String username) {
		String password="";
		try {
            String encoding="GBK";
            File file=new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+username+".txt");
            if(file.isFile() && file.exists()){ //�ж��ļ��Ƿ����
                InputStreamReader read = new InputStreamReader(
                new FileInputStream(file),encoding);//���ǵ������ʽ
                BufferedReader bufferedReader = new BufferedReader(read);
                String lineTxt = null;
                while((lineTxt = bufferedReader.readLine()) != null){
                    password+=lineTxt;
                }
                read.close();
                return new User(username,password);
		    }else{
		        System.out.println("�Ҳ���ָ�����ļ�");
		        return null;
		    }
		    } catch (Exception e) {
		        System.out.println("��ȡ�ļ����ݳ���");
		        e.printStackTrace();
		        return null;
		    }
	}
	
	/**
	 * �ж��û��Ƿ��Ѿ�����
	 */
	public static boolean isExistUser(String username) {
         File file=new File("D://ProjectSpace//JavaProject//LoginApplication//WebRoot//db//"+username+".txt");
		return file.isFile() && file.exists();
	}

}
