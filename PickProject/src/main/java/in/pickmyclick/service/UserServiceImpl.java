package in.pickmyclick.service;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.pickmyclick.dao.UserDAO;
import in.pickmyclick.info.UserInfo;
import in.pickmyclick.modal.UserDto;



@Service("userService")
public class UserServiceImpl implements UserService {
	
	private static final Logger logger = Logger.getLogger(UserServiceImpl.class);
	
	UserDAO userDao;

	
	@Autowired
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
	/*	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public List<User> findAll() {
		return userDao.findAll();
	}

	@Override
	public User findById(Integer id) {
		return userDao.findById(id);
	}
	*/
	
	@Override
	public Boolean isUserExists(String email) {
		return userDao.isUserExists(email);
	}
	
	@Override
	public void save(UserDto user) {
		logger.info("User "+user);
		if (!isUserExists(user.getEmail())) {
			userDao.save(user);
		} else {
		//	userDao.update(user);
		}

	}


	/*	@Override
	public void delete(int id) {
		userDao.delete(id);
	}*/

}