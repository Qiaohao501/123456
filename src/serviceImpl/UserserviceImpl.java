package serviceImpl;

import java.util.List;

import dao.Userdao;
import daoImpl.UserdaoImpl;
import pojo.StudentInfo;
import service.Userservice;

public class UserserviceImpl implements Userservice {

	private Userdao userdao;
	public UserserviceImpl() {
		userdao =  new UserdaoImpl();
	}
	@Override
	public List<StudentInfo> GetStudetnInfo() {
		List <StudentInfo> list = userdao.getStudetnInfo();
		return list;
	}
	@Override
	public List<StudentInfo> GetStudetnInfoBycollege(StudentInfo stu) {
		List <StudentInfo> list = userdao.getStudetnInfoBycollege(stu);
		return list;
	}
	@Override
	public int GetStudetnInfoBycollegeAndInfect(StudentInfo stu) {
		//List <StudentInfo> list = userdao.GetStudetnInfoBycollegeAndInfect(stu);
		int count = userdao.GetStudetnInfoBycollegeAndInfect(stu);
		return count;
	}

}
