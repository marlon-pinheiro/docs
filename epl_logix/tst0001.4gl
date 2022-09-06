DATABASE logix

GLOBALS
  DEFINE g_ies_ambiente        CHAR(01),
         g_ies_grafico         SMALLINT,
         p_cod_empresa         LIKE empresa.cod_empresa,
         p_user                LIKE usuario.nom_usuario,
         p_status              SMALLINT,
         p_versao              CHAR(18) #Favor Nao Alterar esta linha (SUPORTE)

END GLOBALS

MAIN

   CALL tst0001()

END MAIN

#----------------------------------------------#
 FUNCTION tst0001()
#----------------------------------------------#

 CALL conout("*** [FRAMEWORK] INICIO ***")
 CALL conout(" ")

 CALL tst0001_inicia_processamento()

 CALL conout("*** [FRAMEWORK] FIM ***")

 END FUNCTION

#----------------------------------------------#
 FUNCTION tst0001_inicia_processamento()
#----------------------------------------------#

 CALL conout("[FRAMEWORK] Entrou na funcao - tst0001_inicia_processamento")
 CALL conout("[FRAMEWORK] Teste execucao EPL [MAINSOURCE] ")

 IF LOG_existe_epl("tst0003y_epl_teste") THEN
    CALL tst0003y_epl_teste()
 END IF

 CALL tst0002_function_logix()

 END FUNCTION
