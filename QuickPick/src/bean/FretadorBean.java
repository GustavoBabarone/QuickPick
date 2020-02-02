package bean;

public class FretadorBean extends UsuarioBean {

	// ATRIBUTOS
	protected long numeroRegistro;
	protected String descricao;

	// SET & GET
	public long getNumeroRegistro() {
		return numeroRegistro;
	}

	public void setNumeroRegistro(long numeroRegistro) {
		this.numeroRegistro = numeroRegistro;
	}
	
	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
