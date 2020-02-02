package bean;

public class ConversaBean {

	// ATRIBUTOS
	private int id;
	private String nomeCliente;
	private String nomeFretista;
	private String transmissor;
	private String receptor;
	private String conteudo;
	private String data, hora;
	
	// SET & GET
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	public String getNomeFretista() {
		return nomeFretista;
	}
	public void setNomeFretista(String nomeFretista) {
		this.nomeFretista = nomeFretista;
	}
	public String getTransmissor() {
		return transmissor;
	}
	public void setTransmissor(String transmissor) {
		this.transmissor = transmissor;
	}
	public String getReceptor() {
		return receptor;
	}
	public void setReceptor(String receptor) {
		this.receptor = receptor;
	}
	public String getConteudo() {
		return conteudo;
	}
	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
}
