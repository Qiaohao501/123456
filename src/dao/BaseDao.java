package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/*数据库操作基类*/
public class BaseDao {
	Connection connection = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public boolean getConnection(){
		try {
//			加载不同数据库厂商提供的驱动
			//Class.forName(ConfigerManager.getInstance().getString("jdbc.driver"));
//			（1）铺路（获取连接Connection）
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/precov";
			String username = "root";
			String password = "123456";
			connection = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
	// 增删改
	public int executeUpdate(String sql,Object[] params){
		int updateRows = 0;
		if(this.getConnection()){
			try {
				pstmt = connection.prepareStatement(sql);
				//填充占位符
				for(int i= 0;i<params.length;i++){
					pstmt.setObject(i+1, params[i]);
				}
				updateRows = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return updateRows;
	}
	
	
	//查
	public ResultSet executeSQL(String sql,Object[] params){
		if(this.getConnection()){
			try {
				pstmt = connection.prepareStatement(sql);
				//填充占位符
				for(int i= 0;i<params.length;i++){
					pstmt.setObject(i+1, params[i]);
				}
				rs = pstmt.executeQuery();
				//System.out.print("adadadfaf");
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return rs;
	}
	
	// 释放资源(注意释放资源的顺序)
	public boolean closeResource(){
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		if(connection!=null){
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return true;
	}
}
