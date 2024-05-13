package com.aula.aplicacao.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Entity
@Table(name = "tb_produtos")
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message = "O nome é obrigatório.")
	@Column(length = 80)
	private String nome;
	@Column(length = 145)
	private String descricao;
	@NotNull(message = "Informe um valor válido.")
	@Min(value = 1, message = "Informe um valor válido.")
	private Integer qtde;
	@NotNull(message = "Informe um valor válido.")
	@Min(value = 1, message = "Informe um valor válido.")
	private Float preco;

	public Produto() {
		super();
	}

	public Produto(String nome, String descricao, Integer qtde, Float preco) {
		super();
		this.nome = nome;
		this.descricao = descricao;
		this.qtde = qtde;
		this.preco = preco;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Integer getQtde() {
		return qtde;
	}

	public void setQtde(Integer qtde) {
		this.qtde = qtde;
	}

	public Float getPreco() {
		return preco;
	}

	public void setPreco(Float preco) {
		this.preco = preco;
	}

	@Override
	public String toString() {
		return "Produto [nome=" + nome + ", descricao=" + descricao + 
				", qtde=" + qtde + ", preco=" + preco + "]";
	}

}
