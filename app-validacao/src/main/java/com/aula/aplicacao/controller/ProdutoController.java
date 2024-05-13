package com.aula.aplicacao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aula.aplicacao.model.Produto;
import com.aula.aplicacao.service.ProdutoService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {
    
    @Autowired
    private ProdutoService produtoService;
    
    @GetMapping("/listar")
    public String listar(Model model) {
        List<Produto> produtos = produtoService.findAll();
        model.addAttribute("produtos", produtos);
        return "listaProdutos";
    }
    
    @GetMapping("/deletar/{id}")
    public String deletar(@PathVariable Long id) {
        // Check if the product exists before deleting
        if (produtoService.existsById(id)) {
            produtoService.deletar(id);
        } else {
      
            throw new IllegalArgumentException("Produto with ID " + id + " not found");
        }
        return "redirect:/produtos/listar";
    }
    
    @GetMapping("/atualizar/{id}")
    public String atualizar(@PathVariable Long id, Model model) {
        Produto produto = produtoService.findById(id);
        model.addAttribute("produto", produto);
        return "formAtualizarProduto";
    }

    @PostMapping("/atualizar")
    public String atualizarProduto(@ModelAttribute @Valid Produto produto, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "formAtualizarProduto";
        }
        produtoService.update(produto);
        return "redirect:/produtos/listar";
    }

    
    @GetMapping
    public String exibirPagina(Model model) {
        model.addAttribute("produto", new Produto());
        return "produto";
    }
    
    @PostMapping
    public String formProduto(@ModelAttribute @Valid Produto produto, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            return "produto";
        }
        System.out.println(produto);
        produtoService.save(produto);
        return "produto";
    }

}
