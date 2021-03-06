package easyquote.modelo;

import java.util.GregorianCalendar;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;

import easyquote.hibernate.Entidade;




@Entity
public class Cotacao implements Entidade {

	@Id
	@GeneratedValue
	private Integer id;

    private GregorianCalendar dataAbertura;
    private GregorianCalendar dataLimiteResposta;
    
    @ManyToOne(fetch = FetchType.LAZY)
    private Status status;
    
    @ManyToOne(fetch = FetchType.LAZY)
    private Setor setor;
    
    private String obs;
    
    @ManyToOne(fetch = FetchType.LAZY)
	private Operador responsavel;
    
    @Transient
    private Integer quantidadePropostas;

	public Cotacao() {
	}

	public Cotacao(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


    public GregorianCalendar getDataAbertura() {
        return dataAbertura;
    }

    public void setDataAbertura(GregorianCalendar dataAbertura){
        this.dataAbertura = dataAbertura;
    }

    public GregorianCalendar getDataLimiteResposta() {
        return dataLimiteResposta;
    }

    public void setDataLimiteResposta(GregorianCalendar dataLimiteResposta){
        this.dataLimiteResposta = dataLimiteResposta;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status){
        this.status = status;
    }
    
    public Setor getSetor() {
        return setor;
    }

    public void setSetor(Setor setor){
        this.setor = setor;
    }

    public String getObs() {
        return obs;
    }

    public void setObs(String obs){
        this.obs = obs;
    }
    
    public Operador getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(Operador responsavel) {
		this.responsavel = responsavel;
	}

	public Integer getQuantidadePropostas() {
		return quantidadePropostas;
	}

	public void setQuantidadePropostas(Integer quantidadePropostas) {
		this.quantidadePropostas = quantidadePropostas;
	}

}
