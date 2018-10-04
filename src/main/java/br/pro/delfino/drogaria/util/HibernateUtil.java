package br.pro.delfino.drogaria.util;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtil {
	private static SessionFactory fabricaDeSessoes = criarFabricaDeSessoes();

	//Para utilizar a fabrica de sessões o usuario ira chamar o metodo GET abaixo
	public static SessionFactory getFabricaDeSessoes() {
		return fabricaDeSessoes;
	}

	private static SessionFactory criarFabricaDeSessoes() {
        try {
        		
        	//Abaixo: Lê e Carrega todas as propriedade configuradas no arquivo Hbernate.cfg
        	Configuration configuracao = new Configuration().configure();
        	
        	//Abaixo: realiza o registro dos serviços
        	ServiceRegistry registro = new StandardServiceRegistryBuilder().applySettings(configuracao.getProperties()).build();
        	
        	//Constroi a fabrica de sessões
        	SessionFactory fabrica = configuracao.buildSessionFactory(registro);
        	
        	//Retorna a fabrica criada
        	return fabrica;
        } catch (Throwable ex) {
        	System.err.println("A fábrica de sessões não pode ser criada." + ex);
            throw new ExceptionInInitializerError(ex);
        }		
	}
}
