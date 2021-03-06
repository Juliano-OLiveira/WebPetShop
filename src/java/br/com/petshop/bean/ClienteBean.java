package br.com.petshop.bean;

import br.com.petshop.dao.ClienteDAO;
import br.com.petshop.dao.DAO;
import br.com.petshop.dao.JPAUtil;
import br.com.petshop.model.Cliente;
import br.com.petshop.service.FacesMessages;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.ViewScoped;
import javax.persistence.EntityManager;
import org.primefaces.PrimeFaces;

@ManagedBean
@ViewScoped
//@RequestScoped
public class ClienteBean implements Serializable {

    private EntityManager em = new JPAUtil().getEntityManager();
    private FacesMessages messages = new FacesMessages();

    private ClienteDAO clienteDAO = new ClienteDAO(em);
    private Cliente cliente;
    private Cliente clienteSelecionado;

    private DAO<Cliente> daoCliente = new DAO<>(Cliente.class);
    private List<Cliente> clientes = new ArrayList<Cliente>();

    public void prepararSalvar() {
        this.cliente = new Cliente();
    }

    public void salvar() {
        Integer id = this.cliente.getId();
        String operacao = "";

        if (id == 0) {
            clienteDAO.salvar(this.cliente);
            operacao = "salvo";
        } else {
            clienteDAO.alterar(this.cliente);
            operacao = "alterado";
        }
        messages.info("Cliente " + operacao + " com Sucesso!");

        PrimeFaces.current().ajax().update(
                Arrays.asList("frm:msgs", "frm:cliente-tabela")
        );
    }

    public void excluir() {
        clienteDAO.excluir(this.clienteSelecionado);
        this.clienteSelecionado = null;

        getClientes();
        messages.info("Cliente excluido com Sucesso!");
    }

    public List<Cliente> getClientes() {
        List<Cliente> listaClientes = clienteDAO.consultarPorNome("");
        return listaClientes;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

//    public Cliente getClienteSelecionado() {
//        return clienteSelecionado;
//    }
//
//    public void setClienteSelecionado(Cliente clienteSelecionado) {
//        this.clienteSelecionado = clienteSelecionado;
//    }
    
    public Cliente getClienteSelecionado() {
        return clienteSelecionado;
    }

    public void setClienteSelecionado(Cliente clienteSelecionado) {
        this.clienteSelecionado = clienteSelecionado;
    }

    public void setClientes(List<Cliente> clientes) {
        this.clientes = clientes;
    }

    public List<Cliente> completaNome(String query) {
        this.clientes = daoCliente.listaTodos();
        List<Cliente> nomes = new ArrayList<Cliente>();
        for (Cliente c : this.clientes) {
            if (c.getNome().startsWith(query)) {
                nomes.add(c);
            }
        }
        return nomes;
    }   

}
