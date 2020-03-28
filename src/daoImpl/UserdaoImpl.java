package daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.BaseDao;
import dao.Userdao;
import pojo.StudentInfo;

public class UserdaoImpl extends BaseDao implements Userdao {

	//查询学生的全部信息
	@Override
	public List<StudentInfo> getStudetnInfo() {
		String sql = "SELECT college,name,id,tel,teachertel,fever,hubei,infect,ConWithHubei "
				+ "FROM inforstudent";
		Object[] params = {};
		ResultSet rs = this.executeSQL(sql, params);
		List<StudentInfo> list = new ArrayList<>();
		try {
			while(rs.next())
			{
				String college = rs.getString("college");
				String name = rs.getString("name");
				int id = rs.getInt("id");
				String tel = rs.getString("tel");
				String teachertel = rs.getString("teachertel");
				String fever = rs.getString("fever");
				String hubei = rs.getString("hubei");
			    String infect = rs.getString("infect");
			    String ConWithHubei= rs.getString("ConWithHubei");
			    
			    StudentInfo stuinfo = new StudentInfo();
			    stuinfo.setCollege(college);
			    stuinfo.setName(name);
			    stuinfo.setId(id);
			    stuinfo.setTel(tel);
			    stuinfo.setTeachertel(teachertel);
			    stuinfo.setFever(fever);
			    stuinfo.setHubei(hubei);
			    stuinfo.setInfect(infect);
			    stuinfo.setConWithHubei(ConWithHubei);
			    
			    list.add(stuinfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	//管理员查询本学院的学生信息
	@Override
	public List<StudentInfo> getStudetnInfoBycollege(StudentInfo stu) {
	
		String sql = "SELECT college,name,id,tel,teachertel,fever,hubei,infect,ConWithHubei "
				+ "FROM inforstudent WHERE college = ?";
		Object[] params = {stu.getCollege()};
		ResultSet rs = this.executeSQL(sql, params);
		List<StudentInfo> list = new ArrayList();
		try {
			while(rs.next())
			{
				String college = rs.getString("college");
				String name = rs.getString("name");
				int id = rs.getInt("id");
				String tel = rs.getString("tel");
				String teachertel = rs.getString("teachertel");
				String fever = rs.getString("fever");
				String hubei = rs.getString("hubei");
			    String infect = rs.getString("infect");
			    String ConWithHubei= rs.getString("ConWithHubei");
			    
			    StudentInfo stuinfo = new StudentInfo();
			    stuinfo.setCollege(college);
			    stuinfo.setName(name);
			    stuinfo.setId(id);
			    stuinfo.setTel(tel);
			    stuinfo.setTeachertel(teachertel);
			    stuinfo.setFever(fever);
			    stuinfo.setHubei(hubei);
			    stuinfo.setInfect(infect);
			    stuinfo.setConWithHubei(ConWithHubei);
			    
			    list.add(stuinfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int GetStudetnInfoBycollegeAndInfect(StudentInfo stu) {
		
		int count = 0;
		String sql="select count(*) "
				+ "from inforstudent WHERE college=? and infect=?";
		Object[] params = {stu.getCollege(),stu.getInfect()};
		//this.getConnection()
		ResultSet rs = this.executeSQL(sql, params);
		List<StudentInfo> list = new ArrayList();
		try {
			while(rs.next())
			{
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}

}
