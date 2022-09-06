DATABASE logix

GLOBALS
  DEFINE g_ies_ambiente        CHAR(01),
         g_ies_grafico         SMALLINT,
         p_cod_empresa         LIKE empresa.cod_empresa,
         p_user                LIKE usuario.nom_usuario,
         p_status              SMALLINT,
         p_versao              CHAR(18) #Favor Nao Alterar esta linha (SUPORTE)

END GLOBALS

#----------------------------------------------#
 FUNCTION tst0002_function_logix()
#----------------------------------------------#

 CALL conout("[FRAMEWORK] Entrou na funcao - tst0002_function_logix")
 CALL conout("[FRAMEWORK] Teste execucao EPL [FUNCTION] ")

 IF LOG_existe_epl("tst0003y_epl_teste") THEN
    CALL tst0003y_epl_teste()
 END IF

 END FUNCTION
