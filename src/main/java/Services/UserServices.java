package Services;
import Entities.User;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

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

    public User findByUsername(String username){
        EntityManager em = getEntityManager();
        Query query = em.createQuery("select u from User u where u.username like :username");
        query.setParameter("username", username );
        List lista = query.getResultList();
        if (lista.size() != 0){
            return (User) lista.get(0);
        }
        return null;
    }
}
