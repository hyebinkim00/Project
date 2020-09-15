package shop.carrental.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import lombok.Data;
import lombok.Setter;
import shop.carrental.mapper.UserMapper;

@Component
@Data
public class UserVO {

	@Setter(onMethod_ = @Autowired)
	private UserMapper userMapper;

	private String id, password, name, role;

	public UserVO getAdmin() {
		UserVO vo = new UserVO();
		vo.id = userMapper.getAdmin();
		return vo;
	}

}