package CompanyMailer;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

public class ComposeDao {
	public static int save(String sender,String receiver,String subject,String message){
		int status=0;
		try{
			Connection con=ConProvider.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into COMPANY_MAILER_MESSAGE(sender,receiver,subject,message,trash,messagedate) values(?,?,?,?,?,?)");
			ps.setString(1,sender);
			ps.setString(2,receiver);
			ps.setString(3,subject);
			ps.setString(4,message);
			ps.setString(5,"no");
			ps.setDate(6,getCurrentDate());
			
			status=ps.executeUpdate();
						
		}catch(Exception e){System.out.println(e);}
				
		return status;
	}

	private static Date getCurrentDate() {
		// TODO Auto-generated method stub
		return null;
	}

}