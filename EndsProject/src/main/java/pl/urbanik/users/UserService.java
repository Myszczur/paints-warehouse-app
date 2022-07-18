package pl.urbanik.users;

public interface UserService {
    User findByUserName(String name);

    void saveUser(User user);
}
