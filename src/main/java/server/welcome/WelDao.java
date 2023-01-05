package server.welcome;

import java.sql.Connection;
import java.sql.SQLException;

import eventBean.UserInfo;

public class WelDao extends server.DataAccessObject {

	WelDao() {}
	
	final Connection openConnection() {
		return this.openConnect();
	}
	
	final void closeConnection(Connection connection) {
		this.closeConnect(connection);
	}
	
	final boolean setTrasaction(boolean tran, Connection connection) {
		return this.setTrans(tran, connection);
	}
	
	final void modifyTranStatus(Connection connection, boolean tran) {
		this.modifyTranState(connection, tran);
	}
	
	final boolean convertToBoolean(int value) {
		return this.convertBoolean(value);
	}
	
	final void getUserInfo(Connection connection, UserInfo user) {
		String query = "SELECT USERID, USERPW, IMAGE "
				+ "FROM EV "
				+ "WHERE USERID = ?";
		
		try {
			this.ps = connection.prepareStatement(query);
			ps.setNString(1, user.getUserId());
			this.rs = ps.executeQuery();
			while(rs.next()) {
				user.setUserId(rs.getNString("USERID"));
				user.setUserPw(rs.getNString("USERPW"));
				user.setImage(rs.getNString("IMAGE"));
			}
		} catch (SQLException e) {e.printStackTrace();}
	}
	
	final int isMember(Connection connection, UserInfo user) {
		int result = 0;
		String query = "SELECT COUNT(*) AS ISCOUNT "
				+ "FROM EV "
				+ "WHERE USERID = ? AND USERPW = ?";
		
		try {
			this.ps = connection.prepareStatement(query);
			ps.setNString(1, user.getUserId());
			ps.setNString(2, user.getUserPw());
			this.rs = ps.executeQuery();
			while(rs.next()){user.setCount(rs.getInt("ISCOUNT"));}
			result = user.getCount();
		} catch (SQLException e) {e.printStackTrace();}

		return result;
	}
	
	final int setRollingPaper(Connection connection, UserInfo user) {
		int result = 0;
		String query = "INSERT INTO HANAREUM.RP(EV_USERID, ROLLINGPAPER) "
				+ "VALUES(?, ?)";
		
		try {
			this.ps = connection.prepareStatement(query);
			ps.setNString(1, user.getUserId());
			ps.setNString(2, user.getPaper());
			result = this.ps.executeUpdate();
		} catch (SQLException e) {e.printStackTrace();}
		
		return result;
	}
	
}
