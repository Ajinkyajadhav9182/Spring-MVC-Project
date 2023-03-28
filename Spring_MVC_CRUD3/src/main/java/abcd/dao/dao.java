package abcd.dao;

import abcd.modal.modal;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class dao {

	public static Connection getConneton() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "9309");

		} catch (Exception e) {
		}

		return con;
	}

	public void save(modal m) {
		try {
			Connection con = getConneton();
			PreparedStatement pts = con
					.prepareStatement("insert into student1 (name,mobile_no,email,address)values(?,?,?,?) ");
			pts.setString(1, m.getName());
			pts.setLong(2, m.getMobileno());
			pts.setString(3, m.getEmail());
			pts.setString(4, m.getAddress());
			pts.execute();
		} catch (Exception e) {
		}
	}

	public List<modal> getAll() {
		List<modal> modalList = new ArrayList();
		try {
			Connection con = getConneton();
			PreparedStatement pts = con.prepareStatement("select * from student1 ");
			ResultSet set = pts.executeQuery();
			while (set.next()) {
				modal mod = new modal();
				mod.setId(set.getInt(1));
				mod.setName(set.getString(2));
				mod.setMobileno(set.getLong(3));
				mod.setEmail(set.getString(4));
				mod.setAddress(set.getString(5));
				modalList.add(mod);
			}
		} catch (Exception e) {
		}
		return modalList;
	}

	public void delete(int id) {
		try {
			Connection con = getConneton();
			PreparedStatement pts = con.prepareStatement("delete from student1 where id=? ");
			pts.setInt(1, id);

			pts.execute();
		} catch (Exception e) {
		}

	}

	public modal update(int id) {

		modal mod = new modal();
		try {
			Connection con = getConneton();
			PreparedStatement pts = con.prepareStatement("select * from student1 where id=? ");
			pts.setInt(1, id);
			ResultSet set = pts.executeQuery();
			set.next();
			mod.setId(set.getInt(1));
			mod.setName(set.getString(2));
			mod.setMobileno(set.getLong(3));
			mod.setEmail(set.getString(4));
			mod.setAddress(set.getString(5));

		} catch (Exception e) {
		}
		return mod;
	}

	public void updateRow(modal m) {
		try {
			Connection con = getConneton();
			PreparedStatement pts = con
					.prepareStatement("update student1 set name=?,mobile_no=?,email=?,address=? where id=? ");
			pts.setString(1, m.getName());
			pts.setLong(2, m.getMobileno());
			pts.setString(3, m.getEmail());
			pts.setString(4, m.getAddress());
			pts.setInt(5, m.getId());
			pts.execute();

		} catch (Exception e) {
			System.out.print(e.getMessage());
		}

	}
}
