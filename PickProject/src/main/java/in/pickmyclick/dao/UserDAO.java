package in.pickmyclick.dao;

import in.pickmyclick.info.UserInfo;
import in.pickmyclick.modal.UserDto;

public interface UserDAO {
	//Create
    public void save(UserDto userDto);
    //Read
    public Boolean isUserExists(String email) ;
    //Update
    public void update(UserDto userDto);
    //Delete
   // void deleteById(int id);
    //Get All
   // List<UserDto> getAll();
    
    public UserInfo getUserInfo(String username);

}
