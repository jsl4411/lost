package three.test.lost.Domain.user;

public interface UserService {
    String findByUserid(User userid);

    String createUser(User user);
}
