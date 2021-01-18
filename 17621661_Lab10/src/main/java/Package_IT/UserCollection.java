package Package_IT;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public class UserCollection {
	private static UserCollection mInstance;
	static ArrayList<User> values = null;
	
	 public UserCollection() {
		 values = new ArrayList<User>();
       }
	
	public boolean exist(User user) {
		if(values.contains(user)) {
		    return true;
		} return false;
	}
	
	 public static UserCollection getInstance() {
         if(mInstance == null)
             mInstance = new UserCollection();

         return mInstance;
     }
	 
	 public ArrayList<User> getArray() {
         return this.values;
     }
	 

	public void addToArray(User us) {
		 values.add(us);
     }
}
