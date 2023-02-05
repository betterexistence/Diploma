import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@Stateless
public class JavaBean {

    @PersistenceContext(unitName = "myUnit")
    EntityManager entityManager;

    public void saveItem(Item item){
        entityManager.persist(item);

    }

}