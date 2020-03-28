package dao;

import java.util.List;

import pojo.StudentInfo;

public interface Userdao {

		//查询学生的全部信息
		public List<StudentInfo> getStudetnInfo();
		//管理员查询本学院的学生信息
		public List<StudentInfo> getStudetnInfoBycollege(StudentInfo stu);
		
		//查询特定的学院的学生的感染信息
		public int GetStudetnInfoBycollegeAndInfect(StudentInfo stu);
}
