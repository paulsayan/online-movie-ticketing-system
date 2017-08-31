package com.movieticket.model;
import java.util.ArrayList;
import com.movieticket.dao.DAOClass;

public class Hall {

	private long hall_id,admin_id;
	private String hall_name,loc,addr;
	public Hall()
	{
		hall_id=0L;
		admin_id=0L;
		hall_name=new String();
		loc=new String();
		addr=new String();
	}
	
	public long getHallId()
	{
		return this.hall_id;
	}
	
	public void setHallId(long id)
	{
		this.hall_id=id;
	}
	
	public long getAdminId()
	{
		return this.admin_id;
	}
	
	public void setAdminId(long id)
	{
		this.admin_id=id;
	}
	public void setHallName(String name)
	{
		this.hall_name=name;
	}
	
	public String getHallName()
	{
		return this.hall_name;
	}
	
	public void setLoc(String l)
	{
		this.loc=l;
	}
	
	public String getLoc()
	{
		return this.loc;
	}
	
	public void setAddr(String adr)
	{
		this.addr=adr;
	}
	
	public String getAddr()
	{
		return this.addr;
	}
	
	public ArrayList<String> viewHallNames()
	{
		DAOClass obj=new DAOClass();
		ArrayList<Hall> hlist = new ArrayList<Hall>();
		ArrayList<String> hallnames = new ArrayList<String>();
		try
		{
			
			hlist=obj.fetchHallData();
			for(Hall ob:hlist)
				hallnames.add(ob.hall_name);
				
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return hallnames;
		
	}
	
	public ArrayList<String> viewHallNames(String loc)
	{
		
		DAOClass obj=new DAOClass();
		ArrayList<Hall> hlist = new ArrayList<Hall>();
		ArrayList<String> hallnames = new ArrayList<String>();
		try
		{
			
			hlist=obj.fetchHallData();
			for(Hall ob:hlist)
				if(ob.loc==loc)
					hallnames.add(ob.hall_name);
				
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
		return hallnames;
		
	}
	
	public Hall getHallByAdminId(long id)
	{
		
		DAOClass obj=new DAOClass();
		Hall h=new Hall();
	    try
	    {
	    	h=obj.getHallByAdminId(id);
	    }
		catch(Exception e)
	    {
			e.printStackTrace();
	    }
		
	    return h;
	}
	
	
}
	