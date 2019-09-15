package com.pack.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.pack.JdbcConnection;
import com.pack.model.BookingDetails;

public class BookingDaoImpl {

	public List<BookingDetails> checkBooking(BookingDetails b) {
		// TODO Auto-generated method stub
		Connection con = null;
		boolean val = false;
		List<BookingDetails> l = new ArrayList<>();
		try {
			System.out.println("ado impl");
			con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("select food_fee,bus_fee,stay_fee from tour where from_place=? and to_place=?");
			ps.setString(1, b.getFrom_place());
			ps.setString(2, b.getTo_place());
            ResultSet rs = ps.executeQuery();
            //ps.setQueryTimeout(2);
			System.out.println(rs);
			int total=0;
			int totalFare=0;

			while (rs.next()) {
				BookingDetails bd = new BookingDetails();
				System.out.println("hi");
				System.out.println(rs.getInt("food_fee"));
				bd.setFood_fee(rs.getInt("food_fee"));
				bd.setBus_fee(rs.getInt("bus_fee"));
				bd.setStay_fee(rs.getInt("stay_fee"));
				int numberOfPersons=b.getNo_of_persons();
				 total=rs.getInt("food_fee")+rs.getInt("bus_fee")+rs.getInt("stay_fee");
				 totalFare=numberOfPersons*total;
				bd.setTotalFare(totalFare);
				l.add(bd);

			}
			
			
			System.out.println(l);
		} catch (Exception e) {
			System.out.println(e);
		}
		return l;
	}

}
