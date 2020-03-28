package service;

import java.util.List;

import pojo.StudentInfo;

public interface Userservice {

	//查询所有的学生信息
	public List<StudentInfo> GetStudetnInfo();
	
	//查询特定的学院的学生信息
	public List<StudentInfo> GetStudetnInfoBycollege(StudentInfo stu);
	
	//查询特定的学院的学生的感染信息
	public int GetStudetnInfoBycollegeAndInfect(StudentInfo stu);
}
