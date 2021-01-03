package three.test.lost.Domain.user;

import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User,String> {
  User findByUserid(String loginUser);
}
