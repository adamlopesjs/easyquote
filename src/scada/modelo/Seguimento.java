package scada.modelo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import scada.hibernate.Entidade;

@Entity
public class Seguimento implements Entidade {

	@Id
	@GeneratedValue
	private Integer id;

    private String descricao;

	public Seguimento() {
	}

	public Seguimento(Integer id) {
		this.id = id;
	}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id){
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao){
        this.descricao = descricao;
    }
}
