package serviceImpl;

import dao.Studao;
import daoImpl.StudaoImpl;
import pojo.StudentInfo;

public class StuserviceImpl implements service.Stuservice {

	private Studao studao;
	//用户new service对象时才new studao，而不是一上来就new service对象
	public StuserviceImpl() {
		studao =  new StudaoImpl();
	}
	
	public void AddStu(StudentInfo stu) {

		studao.addstu(stu);
	}
}
