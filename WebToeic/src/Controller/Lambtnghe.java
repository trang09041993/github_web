package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Listenquestion;
import BEAN.Readquestion;
import DAO.LambtngheDAO;
import DAO.LambtphandocDAO;
import DB.DBConnetion;


@WebServlet("/Lambtnghe")
public class Lambtnghe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Lambtnghe() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		try 
		{
			String listenexercisename = request.getParameter("listenexercisename");
		//	int listenexerciseid = Integer.parseInt(listenexerciseidstr);
			
			
			String pageidstr = request.getParameter("pageid");
			int pageid = Integer.parseInt(pageidstr);
			
			
			int count = 1;
			
			
			if (pageid == 1)
			{
				
			}
			else 
			{
				pageid = pageid -1;
				pageid = pageid * count +1;
			}
			
			
			Connection conn=null;
			try {
				conn = DBConnetion.getSQLServerConnection();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			List<Listenquestion> list = LambtngheDAO.Hienthicauhoibtnghe(request, pageid, count, conn, listenexercisename);
			
			
			int sumrow = LambtngheDAO.Demcauhoitheoma(conn, listenexercisename);
			
			int maxpageid= 0;
			
			if ((sumrow/count)%2==0)
			{
				maxpageid = (sumrow/count);
			}
			else
			{
				maxpageid = (sumrow/count)+1;
			}
			
			request.setAttribute("maxpageid",maxpageid);
			request.setAttribute("listenexercisename",listenexercisename);
			
			request.setAttribute("danhsachcauhoibtnghe",list);
			
			request.setAttribute("numberpage",Integer.parseInt(pageidstr));
			
			conn.close();
			
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("View/Lambtphannghe.jsp");
		rd.forward(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
		String kq = request.getParameter("kq");
		
		Connection conn=null;
		try {
			conn = DBConnetion.getSQLServerConnection();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String listenexercisename = request.getParameter("listenexercisename");
		//int listenexerciseid = Integer.parseInt(listenexerciseidstr);
		
		/*String numstr = request.getParameter("num");
		int num = Integer.parseInt(numstr);
		*/
		
		if (kq == "")
		{
			request.setAttribute("msglambtphannghe","Yêu cầu trả lời hết các câu hỏi");
			
			
			RequestDispatcher rd = request.getRequestDispatcher("View/Thongbaoloibtnghe.jsp");
			rd.forward(request,response);
		}
		else
		{	
			List<Listenquestion> list = LambtngheDAO.Xuatdapanbtnghe(request, conn, listenexercisename);
			
			request.setAttribute("dapandungbtnghe",list);
			request.setAttribute("kq",kq);
			if(list ==null){
				System.out.println("khong co danh sach");
			}
			
			else{	
				System.out.println("234");
				for (Listenquestion ls: list){
					System.out.println(ls.getQuestion());
					System.out.println("123");
				}
			RequestDispatcher rd = request.getRequestDispatcher("View/Ketquabtnghe.jsp");
			rd.forward(request,response);
			
			
			}
		}
		
	}

}
