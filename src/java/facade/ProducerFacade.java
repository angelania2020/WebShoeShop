/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import entity.Producer;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Angelina
 */
@Stateless  // Это бин - объект создается и управлется контейнером EJB
public class ProducerFacade extends AbstractFacade<Producer> {

    @PersistenceContext(unitName = "WebShoeShopPU")  // Через аннотацию происходит внедрение зависимостей
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProducerFacade() {
        super(Producer.class);
    }
    
}
