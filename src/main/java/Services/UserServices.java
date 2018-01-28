package Services;
import Entities.User;

public class UserServices extends GestionDB<User> {
    private static UserServices instancia;

    private UserServices() {
        super(User.class);
    }

    public static UserServices getInstancia() {
        if (instancia == null) {
            instancia = new UserServices();
        }
        return instancia;
    }
}
