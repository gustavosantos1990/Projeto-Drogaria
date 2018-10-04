package br.pro.delfino.main;

import org.hibernate.Session;

import br.pro.delfino.drogaria.util.HibernateUtil;

public class HibernateUtilTest {
	//A fabrica de sessòes será testada com o metodo MAIN. Mas não é a melhor forma para se realizar os testes
	public static void main(String[] args) {
		//Iremos capturar uma fabrica de sessão
		Session sessao =  HibernateUtil.getFabricaDeSessoes().openSession();
		//Fecha fabrica de sessões
		sessao.close();
		
		//Distroi a conexão
		HibernateUtil.getFabricaDeSessoes().close();
	}
}
