package com.aula.aplicacao.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.aula.aplicacao.model.Produto;

@Repository
public interface ProdutoRepository extends CrudRepository<Produto, Long> {

}
