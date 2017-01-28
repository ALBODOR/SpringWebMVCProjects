package com.ensakh.jee.persistence;

import java.sql.SQLException;
import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Component;

import com.ensakh.jee.entities.Client;
import com.ensakh.jee.utils.HibernateJpaUtil;
import javax.naming.InitialContext;
import javax.transaction.UserTransaction;

@Component
public class ClientDAO implements DAO<Client>{

	private EntityManager em;

        public ClientDAO() {
            em = HibernateJpaUtil.getEntityManager();
        }
	
	@Override
	public void persist(Client entity) throws Exception {
            UserTransaction transaction = (UserTransaction) 
                        new InitialContext().lookup("java:comp/UserTransaction");
            transaction.begin();
	    em.persist(entity);
            transaction.commit();
	}

	@Override
	public void remove(Long id) throws SQLException {
		em.remove(em.find(Client.class, id));
	}

	@Override
	public Client find(Long id) throws SQLException {
		return em.find(Client.class, id);
	}

	@Override
	public List<Client> findAll() throws SQLException {
		return em.createNamedQuery("Client.findAll", Client.class).getResultList();
	}

}
