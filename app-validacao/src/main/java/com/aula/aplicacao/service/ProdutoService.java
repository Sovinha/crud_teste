package com.aula.aplicacao.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aula.aplicacao.model.Produto;
import com.aula.aplicacao.repository.ProdutoRepository;

@Service
public class ProdutoService {
    
    @Autowired
    private ProdutoRepository produtoRepository;
    
    public List<Produto> findAll(){
        return (List<Produto>) produtoRepository.findAll();
    }
    
    public void save(Produto produto) {
        produtoRepository.save(produto);
    }
    
    public void deletar(long id) {
        produtoRepository.deleteById(id);
    }
    
    public void update(Produto produto){
        Optional<Produto> optionalProduto = produtoRepository.findById(produto.getId());
        if (optionalProduto.isPresent()) {
            Produto existingProduto = optionalProduto.get();
            if (!existingProduto.equals(produto)) { // Check if attributes have changed
                existingProduto.setNome(produto.getNome());
                existingProduto.setQtde(produto.getQtde());
                existingProduto.setPreco(produto.getPreco());
                existingProduto.setDescricao(produto.getDescricao());
                save(existingProduto);
            }
        } else {
           
            throw new IllegalArgumentException("Produto with ID " + produto.getId() + " not found");
        }
    }

    public Produto findById(long id) {
        Optional<Produto> optionalProduto = produtoRepository.findById(id);
        return optionalProduto.orElse(null); // Return null if the product does not exist
    }

    public boolean existsById(Long id) {
        return produtoRepository.existsById(id);
    }

	

}
