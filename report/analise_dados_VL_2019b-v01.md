---
title: "Análise Estatística de ..."
author: '**De:** Felipe Figueiredo **Para:** Victor Lima'
date: '**Data: ** dd/mm/aaaa'
output:
  html_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    keep_md: yes
    number_sections: yes
    toc: yes
  pdf_document:
    number_sections: yes
    toc: yes
  word_document:
    fig_caption: yes
    fig_height: 6
    fig_width: 6
    reference_docx: misc/style.docx
    toc: yes
subtitle: 'RELATÓRIO: analise_dados_VL_2019-v01a'
toc-title: "Sumário"
---



---

**Histórico do documento**


Versão   Alterações     
-------  ---------------
01       Versão inicial 

---

# Assinaturas


Papel             Nome   Função   Assinatura                   Data          
----------------  -----  -------  ---------------------------  --------------
Elaborador        Nome   Função   __________________________   _____________ 
Revisado por                      __________________________   _____________ 
Aprovação final                   __________________________   _____________ 



# Lista de abreviaturas

# Introdução

## Objetivos

## Recepção e tratamento dos dados

# Metodologia

## Tamanho do estudo

Com base no levantamento piloto retrospectivo, os pacientes operados sem intervenção por TXA na face tiveram dreno médio de 10ml, com desvio padrão 6ml.
Assumindo que os drenos sejam normalmente distribuídos para este procedimento cirúrgico se espera que aproximadamente 65% dos pacientes tenham dreno entre 4 e 16ml.
Considerando que uma redução de 10ml para 5ml seja clinicamente relevante, esta é a diferença definida como alvo do estudo.
Se o dreno médio real for 10ml, contra 5ml sob intervenção do TXA, um estudo com 30 pacientes tem 99% de probabilidade de detectar esta diferença ao nível de 5% de significância (e 95% de probabilidade de detectá-la ao nível de 1% de significância).
Um estudo com apenas metade desse tamanho teria 85% ao nível de significância de 5% e apenas 60% ao nível de 1% de significância), que não é aceitável neste contexto.

## Variáveis coletadas

## Análise estatística

Esta análise foi realizada utilizando-se o software `R` versão 3.6.1.

# Resultados

## Descrição da amostra de estudo


-----------------------------
      Group          value   
----------------- -----------
  Observations               

                      38     

      SEXO                   

        F          100% (38) 

        M           0% (0)   

     missing        0% (0)   

      IDADE                  

       yes          0% (0)   

       no           0% (0)   

     missing       100% (38) 

     ALTURA                  

       yes          0% (0)   

       no           0% (0)   

     missing       100% (38) 

      PESO                   

       yes          0% (0)   

       no           0% (0)   

     missing       100% (38) 

       IMC                   

    Mean (SD)      NaN (NA)  

 valid (missing)    0 (38)   
-----------------------------

Table: **Tabela 1** Características demográficas da amostra do estudo piloto.

## Efetividade do tratamento


------------------------------------------------------------------------------
        &nbsp;                ctr             txa          p     test    SMD  
----------------------- --------------- --------------- ------- ------ -------
         **n**                38              38                              

 **dreno (mean (SD))**   52.71 (18.63)   46.58 (15.90)   0.127          0.354 
------------------------------------------------------------------------------

Table: **Tabela 2** Avaliação da efetividade do tratamento com áxido tranexâmico (txa) em comparação ao lado controle (ctr);
SMD = standardized mean difference -- estimativa do tamanho do efeito observado

<!-- # Exceções e Desvios do teste -->

# Conclusões


# Referências

# Apêndice

