//package controller;
//
//import java.util.Date;
//import java.util.logging.Logger;
//
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestBody;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.RestController;
//
//import model.bean.Employee;
//import tools.EmpRestURIConstants;
//
//@RestController
//public class restfulTest {
//@GetMapping(value = EmpRestURIConstants.DUMMY_EMP , consumes= {"application/json"})
//
//public @ResponseBody Employee onStart() {
//	System.out.println("Start getDummyEmployee");
//	Employee employee = new Employee();
//	employee.setId(99999);
//	employee.setName("Eric");
//	employee.setCreatedDate(new Date());
//	return employee;
//}
//
//
//}
