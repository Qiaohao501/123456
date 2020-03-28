package daoImpl;

import dao.BaseDao;
import dao.Studao;
import pojo.StudentInfo;

public class StudaoImpl extends BaseDao implements Studao {

	//增加一个学生信息
	@Override
	public void addstu(StudentInfo stu) {
		String sql = "INSERT INTO inforstudent "
				+ "(college,name,id,tel,teachertel,fever,hubei,infect,ConWithHubei)"
				+ " VALUES(?,?,?,?,?,?,?,?,?)";
		Object[] params = {stu.getCollege(),stu.getName(),stu.getId(),stu.getTel()
				,stu.getTeachertel(),stu.getFever(),stu.getHubei(),stu.getInfect(),stu.getConWithHubei()};
		int i = this.executeUpdate(sql, params);
		if(i>0){
			System.out.println("Success Add a stu");
		}
		else{
			System.out.println("Fail Add a stu");
		}
		this.closeResource();
	}

}
