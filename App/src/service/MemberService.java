package service;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import dao.MemberDao;

@Service
public class MemberService {

	@Autowired
	private MemberDao memberdao;

	// public boolean login(Map<String, Object> login) {
	//
	// System.out.println("login : " +login);
	//
	//
	// String id = (String) login.get("id");
	// String pw = (String) login.get("pw");
	//
	// System.out.println("login : " + id);
	//
	// Map<String, Object> result = memberdao.selectOne(id);
	//
	// if (result != null) {
	//
	// /* id.equals(result.get("id")) */
	//
	// if (result.get("pw").equals(pw)) {
	//
	// return true;
	//
	// } else {
	// return false;
	// }
	//
	// } else {
	// return false;
	// }
	//
	// }

	public boolean login(Map<String, Object> member) {
		String id = (String)member.get("id");
		String pw = (String)member.get("pw");
		
		Map<String, Object> result = memberdao.selectOne(id);
		
		// Map<String, Object> aa = new HashMap<String, Object>();	->맵 생성
		
		System.out.println("들어오니???" + result);

		if (result != null) {
			System.out.println("ddd"+id);
			System.out.println("ddd"+pw);
			
			
			if (result.get("PW").equals(pw)) {
				System.out.println("들어오니??");

				return true;

			} else {
				System.out.println("들어오니??2");
				return false;
			}
		} else {
			System.out.println("들어오니??3");
			return false;
		}

	}


}
