package in.pickmyclick.service;

import in.pickmyclick.modal.UserDto;



public interface UserService {

	Boolean isUserExists(String email);
	
	//List<UserDto> findAll();
	
	
	void save(UserDto user);
	
	//void delete(int id);
	
}