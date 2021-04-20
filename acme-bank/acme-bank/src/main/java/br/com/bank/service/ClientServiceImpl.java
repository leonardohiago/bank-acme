/**
 * 
 */
package br.com.bank.service;

import java.util.List;
import br.com.bank.dao.ClientDaoImpl;
import br.com.bank.model.Client;
/**
 * @author cbgomes
 *
 */
public class ClientServiceImpl implements ClientService {
	
	private ClientDaoImpl dao;
	
	public ClientServiceImpl() {
		this.dao = new ClientDaoImpl();
	}

	@Override
	public Client getClient(String name) {
		
		return this.dao.getClient(name);
	}

	@Override
	public List<Client> getAll() {
		return this.dao.getAll();
	}

	@Override
	public Boolean save(Client client) {
		if (this.dao.getByEmail(client.getEmail())) {
			System.out.println("Email já existe.");
			return false;
			
		}
		if (this.dao.getByPhone(client.getPhone())) {
			System.out.println("Telefone já existe.");
			return false;
		}
		this.dao.save(client);
		return true;
		}

	@Override
	public void deleteById(Long idClient) {
		this.dao.deleteById(idClient);
	}	
}
