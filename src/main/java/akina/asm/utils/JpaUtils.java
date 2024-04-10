package akina.asm.utils;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JpaUtils {
	public static EntityManagerFactory factory;

	public static EntityManager getEntityManager() {
		if (factory == null || !factory.isOpen()) {
			factory = Persistence.createEntityManagerFactory("SqlServerPU");
		}
		return factory.createEntityManager();
	}

	public static void close() {
		factory.close();
	}
}
