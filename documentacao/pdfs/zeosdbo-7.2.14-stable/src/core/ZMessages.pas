{*********************************************************}
{                                                         }
{                 Zeos Database Objects                   }
{             Constant messages used by Zeos              }
{                                                         }
{ This unit contains all the messages that are output by  }
{ ZEOS methods. One of the given language can be activated}
{ by setting the language in ->                           }
{ ZEOS.inc (e.g.: $DEFINE GERMAN).                        }
{ If no language is defined english will be used.         }
{                                                         }
{*********************************************************}

{@********************************************************}
{    Copyright (c) 1999-2020 Zeos Development Group       }
{                                                         }
{ License Agreement:                                      }
{                                                         }
{ This library is distributed in the hope that it will be }
{ useful, but WITHOUT ANY WARRANTY; without even the      }
{ implied warranty of MERCHANTABILITY or FITNESS FOR      }
{ A PARTICULAR PURPOSE.  See the GNU Lesser General       }
{ Public License for more details.                        }
{                                                         }
{ The source code of the ZEOS Libraries and packages are  }
{ distributed under the Library GNU General Public        }
{ License (see the file COPYING / COPYING.ZEOS)           }
{ with the following  modification:                       }
{ As a special exception, the copyright holders of this   }
{ library give you permission to link this library with   }
{ independent modules to produce an executable,           }
{ regardless of the license terms of these independent    }
{ modules, and to copy and distribute the resulting       }
{ executable under terms of your choice, provided that    }
{ you also meet, for each linked independent module,      }
{ the terms and conditions of the license of that module. }
{ An independent module is a module which is not derived  }
{ from or based on this library. If you modify this       }
{ library, you may extend this exception to your version  }
{ of the library, but you are not obligated to do so.     }
{ If you do not wish to do so, delete this exception      }
{ statement from your version.                            }
{                                                         }
{                                                         }
{ The project web site is located on:                     }
{   http://zeos.firmos.at  (FORUM)                        }
{   http://sourceforge.net/p/zeoslib/tickets/ (BUGTRACKER)}
{   svn://svn.code.sf.net/p/zeoslib/code-0/trunk (SVN)    }
{                                                         }
{   http://www.sourceforge.net/projects/zeoslib.          }
{                                                         }
{                                                         }
{                                 Zeos Development Group. }
{********************************************************@}

unit ZMessages;

interface

{$I ZCore.inc}

uses ZCompatibility;

procedure loadmessages();

const
{$IFDEF FRENCH}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !FRENCH}
{$IFDEF PORTUGUESE}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !PORTUGUESE}
{$IFDEF DUTCH}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !DUTCH}
{$IFDEF GERMAN}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !GERMAN}
{$IFDEF SPANISH}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !SPANISH}
{$IFDEF ROMANA}
  cCodePage = 1252; {Microsoft Windows Codepage 1252 (ANSI), USASCCI}
{$ELSE !ROMANA}
{$IFDEF INDONESIAN}
  cCodePage = 20127; {US-ASCII (7-bit)}
{$ELSE !INDONESIAN}
{$IFDEF RUSSIAN}
  cCodePage = 1251; {Microsoft Windows Codepage 1251 (Cyrl)}
{$ELSE !RUSSIAN}
{$IFDEF CZECH}
  cCodePage = 1250; {Microsoft Windows Codepage 1250 (East European)}
{$ELSE !CZECH}
{$IFDEF POLISH}
  cCodePage = 1250; {Microsoft Windows Codepage 1250 (East European)}
{$ELSE !POLISH}
cCodePage = 20127; {US-ASCII (7-bit)}
{$ENDIF POLISH} // POLISH
{$ENDIF CZECH} // CZECH
{$ENDIF RUSSIAN}
{$ENDIF INDONESIAN}
{$ENDIF ROMANA}
{$ENDIF SPANISH}
{$ENDIF GERMAN}
{$ENDIF DUTCH}
{$ENDIF PORTUGUESE}
{$ENDIF FRENCH}

resourcestring

  {$IFNDEF WITH_RTLCONSTS_SInvalidGuidArray}
    SInvalidGuidArray = 'Byte-Array or Buffer for GUID must have exact %s Bytes';
  {$ENDIF}
  cSLibraryNotCompatible = 'Client-Library %s found but could not be loaded. Check compile-target and library compatibility!';
//--- added by Serge Girard --------------------------------------------------------
{$IFDEF FRENCH}
  cSSQLError1 = 'Erreur SQL: %s';
  cSSQLError2 = 'Erreur SQL: %s Code: %d';
  cSSQLError3 = 'Erreur SQL: %s Code: %d SQL: %s';
  cSSQLError4 = 'Erreur SQL: %s Code: %d Message: %s';

  cSListCapacityError = 'Capacité de liste hors limite (%d)';
  cSListCountError = 'Compteur de liste (count) hors limite (%d)';
  cSListIndexError = 'Index de liste hors limite (%d)';

  cSClonningIsNotSupported = 'Le clonage n''est pas supporté pour cette classe';
  cSImmutableOpIsNotAllowed = 'L''opération n''est pas permise sur des collections non modifiables';
  cSStackIsEmpty = 'La pile est vide';
  cSVariableWasNotFound = 'Variable "%s" non trouvée';
  cSFunctionWasNotFound = 'Fonction "%s" non trouvée';
  cSInternalError = 'Erreur interne';
  cSSyntaxErrorNear = 'Erreur de syntaxe proche de "%s"';
  cSSyntaxError = 'Erreur de syntaxe';
  cSUnknownSymbol = 'Symbole inconnu "%s"';
  cSUnexpectedExprEnd = 'Fin d''expression imprévue';
  cSRightBraceExpected = ') attendue';
  cSParametersError = '%d paramètres attendus mais %d ont été trouvés';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Plus de deux paramètres sont attendus';
  cSInvalidVarByteArray = 'Tableau de VarByte non valide';
  cSVariableAlreadyExists = 'La variable "%s" existe déjà';
  cSTypesMismatch = 'Types non concordants';
  cSUnsupportedVariantType = 'Type variant non supporté';
  cSUnsupportedOperation = 'Opération non supportée';

  cSTokenizerIsNotDefined = 'l''objet Tokenizer n''est pas défini';
  cSLibraryNotFound = 'Acune des bibliothèques dynamiques ne peut être trouvée ou chargée: %s !'#10#13'Utilisez TZConnection.LibraryLocation si l''emplacement est incorrect.';
  cSEncodeDateIsNotSupported = 'Cette version ne supporte pas isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Cette version ne supporte pas isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Cette version ne supporte pas isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Cette version ne supporte pas isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Cette version ne supporte pas isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Cette version ne supporte pas isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Ne peut récupérer l''ensemble de données résultant';
  cSRowBufferIsNotAssigned = 'Le buffer de ligne n''est pas assigné';
  cSColumnIsNotAccessable = 'Colonne d''index %d inaccessible';
  cSConvertionIsNotPossible = 'Conversion impossible de la colonne %d de %s vers %s';
  cSCanNotAccessBlobRecord = 'Ne peut accéder au blob de la colonne %d avec le type %s';
  cSRowDataIsNotAvailable = 'Ligne de données non disponible';
  cSResolverIsNotSpecified = 'L''objet Resolver n''est pas indiqué';
  cSResultsetIsAlreadyOpened = 'L''ensemble résultat est déjà ouvert';
  cSCanNotUpdateEmptyRow = 'Ne peut mettre à jour une ligne vide';
  cSCanNotUpdateDeletedRow = 'Ne peut mettre à jour une ligne supprimée';
  cSCanNotDeleteEmptyRow = 'Ne peut supprimer un ligne vide';
  cSCannotUseCommit = 'Vous ne pouvez pas utiliser COMMIT en mode AUTOCOMMIT';
  cSCannotUseRollBack = 'Vous ne pouvez pas utiliser ROLLBACK en mode AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Ne peut mettre à jour une requête complexe impliquant plus d''une table';
  cSCanNotUpdateThisQueryType = 'Ne peut mettre à jour ce type de requête';
  cSDriverWasNotFound = 'Le driver de base de données demandé n''a pas été trouvé';
  cSCanNotConnectToServer = 'Ne peut se connecter au serveur SQL';
  cSTableIsNotSpecified = 'La table n''est pas spécifiée';
  cSLiveResultSetsAreNotSupported = 'Une requête actualisable n''est pas supportée par cette classe';
  cSInvalidInputParameterCount = 'Le nombre de paramètres attendu est inférieur au prévu';
  cSIsolationIsNotSupported = 'Niveau d''isolation de transaction non supporté';
  cSColumnWasNotFound = 'Colonne de nom "%s" non trouvée';
  cSWrongTypeForBlobParameter = 'Type incorrect pour le paramètre Blob';
  cSIncorrectConnectionURL = 'Connexion URL: %s incorrect';
  cSUnsupportedProtocol = 'Protocole: %s non supporté';
  cSUnsupportedByDriver    = 'Le driver d''origine ne supporte pas cette fonctionnalité: [%s]';

  cSConnectionIsNotOpened = 'Connexion non encore ouverte';
  cSInvalidOpInAutoCommit = 'Opération non valide en mode AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Opération non valide si le mode n''est pas AutoCommit';
  cSInvalidOpPrepare = 'Préparer une transaction n''est possible qu''en en démarrant une (Starttransaction) d''abord (!)';

  cSConnectionIsNotAssigned = 'La connexion à la base données n''est pas indiqué';
  cSQueryIsEmpty = 'La requête SQL est vide';
  cSCanNotExecuteMoreQueries = 'Ne peut exécuter plus d''une requête';
  cSOperationIsNotAllowed1 = 'Cette opération n''est pas permise en mode FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Cette opération n''est pas permise en mode READ ONLY';
  cSOperationIsNotAllowed3 = 'Cette opération n''est pas permise en mode %s';
  cSOperationIsNotAllowed4 = 'Cette opération n''est pas permise en mode sur un ensemble de données fermé';
  cSNoMoreRecords = 'Plus d''enregistrements dans l''ensemble de données';
  cSCanNotOpenResultSet = 'Ne peut ouvrir un ensemble de données';
  cSCanNotOpenDataSetWhenDestroying ='Ne peut ouvrir un ensemble de données alors que l''état du composant est dsDestroying';
  cSCircularLink = 'Lien circulaire créé par le Datasource';
  cSBookmarkWasNotFound = 'Le marque page (Bookmark) n''a pas été trouvé';
  cSIncorrectSearchFieldsNumber = 'Nombre incorrect de valeurs de recherche';
  cSInvalidOperationInTrans = 'Opération invalide dans un mode de transaction explicite';
  cSIncorrectSymbol = 'Symbole incorrect dans la liste des champs "%s".';
  cSIncorrectToken = 'Token incorrect suivi par ":"';
  cSIncorrectParamChar = 'Valeur non valide pour ParamChar';

  cSSelectedTransactionIsolation = 'Le niveau d''isolation de transaction sélectionné n''est pas supporté';
  cSDriverNotSupported = 'Driver non supporté %s';
  cSPattern2Long = 'Le Pattern est trop long';
  cSDriverNotCapableOutParameters = 'Le Driver n''est pas capable d''utiliser des paramètres';
  cSStatementIsNotAllowed = 'Déclaration non permise';
  cSStoredProcIsNotAllowed = 'La procédure stockée n''est pas permise';
  cSCannotPerformOperation = 'Ne peut effectuer cette opération sur une ensemble de données fermé';
  cSInvalidState = 'État non valide';
  cSErrorConvertion = 'Erreur de conversion';
  cSDataTypeDoesNotSupported = 'Type de donnée non supporté';
  cSUnsupportedParameterType = 'Type de paramètre non supporté';
  cSUnsupportedDataType = 'Type de donnée non supporté';
  cSErrorConvertionField = 'Erreur de conversion pour le champ "%s" vers le type SQL "%s"';
  cSBadOCI = 'Mauvaise version OCI [%s] . Version 8.0.3 ou plus ancienne requise';
  cSConnect2AsUser = 'Connexion à "%s" en tant qu''utilisateur "%s"';
  cSUnknownError = 'Erreur inconnue';
  cSFieldNotFound1 = 'Champ "%s" non trouvé';
  cSFieldNotFound2 = 'Champ %d non trouvé';

  cSLoginPromptFailure = 'Ne peut trouver le dialogue d''identification par défaut. Ajoutez ,S.V.P. DBLogDlg dans la section uses section de votre fichier principal.';

  cSPropertyQuery = 'La requête peut prendre un certain temps sur des bases de données importantes!';
  cSPropertyTables = 'Vous devriez la limiter via Catalogue et/ou Schéma.';
  cSPropertyColumns = 'Vous devriez la limiter via Catalogue, Schéma et/ou Nom de Table.';
  cSPropertyProcedures = 'Vous devriez la limiter via Catalogue et/ou Schema.';
  cSPropertySequences = 'Vous devriez la limiter via Catalogue et/ou Schema.';
  cSPropertyExecute = 'La Requête doit-elle s''exécuter quand même?';

  cSFormTest = 'Éditeur SQL ZEOS Test';
  cSButtonClose = '&Fermer';
  cSFormEditor = 'Éditeur SQL ZEOS';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Charger';
  cSMenuSave = 'Sauver';
  cSButtonGenerate = '&Générer';
  cSButtonCheck = '&Vérifier';
  cSButtonTest = '&Tester';
  cSButtonOk = '&OK';
  cSButtonCancel = 'A&nnuler';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Remplacer le SQL';
  cSDialogOpenTitle = 'Ouvrir fichier SQL';
  cSDialogSaveTitle = 'Sauver dans un fichier SQL';
  cSSQLEditor = 'Éditeur SQL';
  cSDatabaseDialog = 'Ouvrir base existante';

  cSUpdateSQLNoResult = '"Update Refresh SQL" ne fourni aucun ensemble de résultat';
  cSUpdateSQLRefreshStatementcount ='La déclaration de l''"Update Refresh SQL" ne peut être qu''unique';

  {$IFDEF FPC}
  cSNotEditing = 'L''ensemble de données n''est ni en modification ni en insertion';
  cSFieldTypeMismatch = 'Différence de type pour le champ ''%s'', attendu: %s trouvé: %s';
  cSFieldSizeMismatch = 'Différence de taille pour le champ ''%s'', attendue: %d trouvée: %d';
  {$ENDIF}
  cSNeedField               = 'Le champ %s est requis, mais non renseigné.';

  cSFailedtoInitPrepStmt   = 'La déclaration a échouée à l''initialisation';
  cSFailedtoPrepareStmt    = 'La déclaration a échouée durant le processus de préparation';
  cSFailedToBindAllValues  = 'L''application a échoué à pré-relier toutes les valeurs';
  cSAttemptExecOnBadPrep   = 'Tentative d''exécuter une déclaration avant une préparation réussie.';
  cSBindingFailure         = 'Échec à relier l''ensemble des paramètres';
  cSPreparedStmtExecFailure = 'La préparation de la déclaration a échoué';
  cSBoundVarStrIndexMissing = 'Nom de la variable de relation "%s" inexistant';
  cSBindVarOutOfRange      = 'Index de la variable de relation hors limite: %d';
  cSFailedToBindResults    = 'L''application a échoué à lier l''ensemble résultat';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'La méthode "refreshrow" n''est permise qu''avec un objet de mise à jour(Update)';
  cSMustBeInBrowseMode = 'Opération uniquement permise dans l''état dsBROWSE';

  cSUnKnownParamDataType = 'Param.DataType inconnu';
  cSFieldReadOnly        = ' A un champ en lecture seule on ne peut assigner une valeur : %s';
  cSInvalidUpdateCount     = '%d enregistrement(s) mis à jour. Un seul urait du l''être.';

  cSRowBufferWidthExceeded ='La taille du buffer de lignes a été dépassée. Essayez d''utiliser moins ou de plus longues colonnes dans la requête SQL.';
  cSPreviousResultStillOpen = 'L''ensemble de données résultat précédent de cette instruction est encore ouvert';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
//--- end added by Serge Girard ------------------------------------
{$ELSE !FRENCH}
// -> ms, 09/05/2005
{$IFDEF PORTUGUESE}
  cSSQLError1 = 'Erro SQL: %s';
  cSSQLError2 = 'Erro SQL: %s Código: %d';
  cSSQLError3 = 'Erro SQL: %s Código: %d SQL: %s';
  cSSQLError4 = 'Erro SQL: %s Código: %d Mensagem: %s';

  cSListCapacityError = 'Capacidade da Lista fora do limite (%d)';
  cSListCountError = 'Contagem da Lista fora do limite (%d)';
  cSListIndexError = 'Índice da Lista fora do limite (%d)';

  cSClonningIsNotSupported = 'Clonagem não é suportada por esta classe';
  cSImmutableOpIsNotAllowed = 'A operação não é permitida para coleção imutável';
  cSStackIsEmpty = 'Pilha está vazia';
  cSVariableWasNotFound = 'Variável "%s" não foi encontrada';
  cSFunctionWasNotFound = 'Function "%s" não foi encontrada';
  cSInternalError = 'Erro interno';
  cSSyntaxErrorNear = 'Erro de sintaxe próximo a "%s"';
  cSSyntaxError = 'Erro de sintaxe';
  cSUnknownSymbol = 'Símbolo desconhecido "%s"';
  cSUnexpectedExprEnd = 'Final inesperado de expressão';
  cSRightBraceExpected = ') esperado';
  cSParametersError = 'Esperado %d parâmetros mas foi encontrado %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Esperado mais que 2 parâmetros';
  cSInvalidVarByteArray = 'VarByte array inválido';
  cSVariableAlreadyExists = 'Variável "%s" já existe';
  cSTypesMismatch = 'Tipos não combinam';
  cSUnsupportedVariantType = 'Tipo variante não suportado';
  cSUnsupportedOperation = 'Operação não suportada';

  cSTokenizerIsNotDefined = 'Sinalizador não definido';
  cSLibraryNotFound = 'Nenhuma biblioteca dinâmica da lista %s foi encontrada';
  cSEncodeDateIsNotSupported = 'Esta versão não suporta isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Esta versão não suporta supported isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Esta versão não suporta supported isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Esta versão não suporta isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Esta versão não suporta isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Esta versão não suporta isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Não foi possível obter os dados do ResultSet';
  cSRowBufferIsNotAssigned = 'Buffer da Linha não atribuído';
  cSColumnIsNotAccessable = 'Coluna com índice %d não é acessível';
  cSConvertionIsNotPossible = 'A conversão da coluna %d de %s para %s não é possível';
  cSCanNotAccessBlobRecord = 'Não é possível acessar um registro BLOB na coluna %d com o tipo %s';
  cSRowDataIsNotAvailable = 'Dados na Linha não disponíveis';
  cSResolverIsNotSpecified = 'Resolver não foi especificado para este ResultSet';
  cSResultsetIsAlreadyOpened = 'ResultSet já está aberto';
  cSCanNotUpdateEmptyRow = 'Não é possível atualizar uma linha vazia';
  cSCanNotUpdateDeletedRow = 'Não é possível atualizar uma linha apagada';
  cSCanNotDeleteEmptyRow = 'Não é possível apagar uma linha vazia';
  cSCannotUseCommit = 'Você não pode usar Commit no modo AutoCommit';
  cSCannotUseRollBack = 'Você não pode usar Rollback no modo AutoCommit';
  cSCanNotUpdateComplexQuery = 'Não é possível atualizar uma query complexa com mais de uma tabela';
  cSCanNotUpdateThisQueryType = 'Não é possível atualizar este tipo de query';
  cSDriverWasNotFound = 'O driver de banco de dados requisitado não foi encontrado';
  cSCanNotConnectToServer = 'Não foi possível conectar ao servidor SQL';
  cSTableIsNotSpecified = 'Tabela não especificada';
  cSLiveResultSetsAreNotSupported = 'Live query não é suportado por esta classe';
  cSInvalidInputParameterCount = 'A contagem do parâmetro de entrada é menor que o esperado';
  cSIsolationIsNotSupported = 'O nível de isolamento da Transação não é suportado';
  cSColumnWasNotFound = 'Coluna com o nome "%s" não foi encontrada';
  cSWrongTypeForBlobParameter = 'Tipo errado para parâmetro Blob';
  cSIncorrectConnectionURL = 'Conexão incorreta URL: %s';
  cSUnsupportedProtocol = 'Protocolo não suportado: %s';
  cSUnsupportedByDriver    = 'O Driver não suporta este recurso nativamente: [%s]';

  cSConnectionIsNotOpened = 'Conexão ainda não está aberta.';
  cSInvalidOpInAutoCommit = 'Operação inválida no modo AutoCommit.';
  cSInvalidOpInNonAutoCommit = 'Operação inválida quando o modo AutoCommit é False.';
  cSInvalidOpPrepare = 'Prepare transaction somente é possível após comandar StartTransaction';

  cSConnectionIsNotAssigned = 'Componente de conexão de banco de dados não atribuído';
  cSQueryIsEmpty = 'A consulta SQL está vazia';
  cSCanNotExecuteMoreQueries = 'Não é possível executar mais que uma query';
  cSOperationIsNotAllowed1 = 'Operação não permitida no modo FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operação não permitida no modo READ ONLY';
  cSOperationIsNotAllowed3 = 'Operação não permitida no modo %s';
  cSOperationIsNotAllowed4 = 'Operação não permitida para DataSet fechado';
  cSNoMoreRecords = 'Nenhum registro no ResultSet';
  cSCanNotOpenResultSet = 'Não foi possível abrir o ResultSet';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'DataSource possui um link circular';
  cSBookmarkWasNotFound = 'Bookmark não foi encontrado';
  cSIncorrectSearchFieldsNumber = 'Número incorreto de valores de campos de procura';
  cSInvalidOperationInTrans = 'Operação inválida no modo de transação explícita';
  cSIncorrectSymbol = 'Símbolo incorreto na lista de campos "%s".';
  cSIncorrectToken = 'Sinal incorreto seguido por ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'O nível selecionado do isolamento da transação não é suportado';
  cSDriverNotSupported = 'Driver não suportado %s';
  cSPattern2Long = 'Padrão é muito longo';
  cSDriverNotCapableOutParameters = 'O Driver não suporta a passagem de parâmetros';
  cSStatementIsNotAllowed = 'Declaração não permitida';
  cSStoredProcIsNotAllowed = 'A stored procedure não é permitida';
  cSCannotPerformOperation = 'Não é possível executar a operação num ResultSet fechado';
  cSInvalidState = 'Estado inválido';
  cSErrorConvertion = 'Erro de conversão';
  cSDataTypeDoesNotSupported = 'Tipo de dado não suportado';
  cSUnsupportedParameterType = 'Tipo de parâmetro não suportado';
  cSUnsupportedDataType = 'Tipo de dado não suportado';
  cSErrorConvertionField = 'Erro de conversão para do campo "%s" para SQLType "%s"';
  cSBadOCI = 'Versão de OCI incompatível [% s]. Requer 8.0.3 ou mais antigo';
  cSConnect2AsUser = 'Conecte "% s" como usuário "% s"';
  cSUnknownError = 'Erro desconhecido';
  cSFieldNotFound1 = 'Campo "%s" não foi encontrado';
  cSFieldNotFound2 = 'Campo %d não foi encontrado';

  cSLoginPromptFailure = 'Não foi possível encontrar o diálogo padrão de login. Por favor adicione DBLogDlg para a seção uses de seu arquivo principal.';

  cSPropertyQuery = 'A Query poderá demorar em bancos de dados grandes!';
  cSPropertyTables = 'Você deveria limitar por Catalogo e/ou Esquema.';
  cSPropertyColumns = 'Você deveria limitar por Catalogo, Esquema e/ou Tabela.';
  cSPropertyProcedures = 'Você deveria limitar por Catalogo e/ou Esquema.';
  cSPropertySequences = 'Você deveria limitar por Catalogo e/ou Esquema..';
  cSPropertyExecute = 'Executar a Query de qualquer maneira?';

  cSFormTest = 'Teste Editor ZEOS SQL';
  cSButtonClose = '&Fechar';
  cSFormEditor = 'Editor ZEOS SQL';
  cSTabSheetSelect = 'SQL Select';
  cSMenuLoad = 'Carregar';
  cSMenuSave = 'Salvar';
  cSButtonGenerate = '&Gerar';
  cSButtonCheck = '&Verificar';
  cSButtonTest = '&Testar';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Cancelar';
  cSTableAlias = '&Alias Tabela';
  cSReplaceSQL = '&Substituir SQL';
  cSDialogOpenTitle = 'Abrir Arquivo SQL';
  cSDialogSaveTitle = 'Salvar Arquivo SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Abrir Banco de Dados existente';

  cSUpdateSQLNoResult = 'SQL Update Refresh resultou num conjunto vazio';
  cSUpdateSQLRefreshStatementcount ='Usar somente 1 declaração SQL para Update Refresh';
  {$IFDEF FPC}
  cSNotEditing = 'Dataset não está em modo de edição ou inserção';
  cSFieldTypeMismatch = 'Tipo inválido para o campo ''%s'', esperado: %s atual: %s';
  cSFieldSizeMismatch = 'Tamanho Inválido para o campo ''%s'', esperado: %d atual: %d';
  {$ENDIF}
  cSNeedField               = 'O campo %s é obrigatório, mas não foi preenchido.';

  cSFailedtoInitPrepStmt   = 'A declaração preparada falhou ao inicializar';
  cSFailedtoPrepareStmt    = 'A declaração falhou durante o processo de preparo';
  cSFailedToBindAllValues  = 'A Aplicação falhou na tradução de todos os valores';
  cSAttemptExecOnBadPrep   = 'Tentativa de executar uma declaração que não foi corretamente preparada';
  cSBindingFailure         = 'Falha ao traduzir o conjunto de parâmetros';
  cSPreparedStmtExecFailure = 'A declaração preparada falhou ao executar';
  cSBoundVarStrIndexMissing = 'Índice de texto "%s" da variável de limite não existe';
  cSBindVarOutOfRange      = 'Índice da variável de limite fora de alcance: %d';
  cSFailedToBindResults    = 'A Aplicação falhou ao tratar o result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'O método RefreshRow somente é suportado com um update object';
  cSMustBeInBrowseMode = 'A Operação é permitida somente no modo dsBrowse';

  cSUnKnownParamDataType = 'Param.DataType é de tipo desconhecido';
  cSFieldReadOnly        = 'O campo %d é somente leitura e não pôde receber dados';
  cSInvalidUpdateCount   = '%d registro(s) atualizados. Apenas um registro deveria ter sido atualizado.';

  cSRowBufferWidthExceeded ='O tamanho do buffer para linhas (Rows) foi excedido. Tente usar menos ou mais colunas na query SQL';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
{$ELSE}

{$IFDEF DUTCH}
  cSSQLError1 = 'SQL Fout: %s';
  cSSQLError2 = 'SQL Fout: %s Code: %d';
  cSSQLError3 = 'SQL Fout: %s Code: %d SQL: %s';
  cSSQLError4 = 'SQL Fout: %s Code: %d Bericht: %s';

  cSListCapacityError = 'Lijst capaciteit buiten bereik (%d)';
  cSListCountError = 'Lijst aantal buiten bereik (%d)';
  cSListIndexError = 'Lijst index buiten bereik (%d)';

  cSClonningIsNotSupported = 'Kloonen worden niet ondersteund in deze klasse';
  cSImmutableOpIsNotAllowed = 'Deze operatie is niet ondersteund voor immutable collection';
  cSStackIsEmpty = 'Stack is leeg';
  cSVariableWasNotFound = 'Variabele "%s" niet gevonden';
  cSFunctionWasNotFound = 'Functie "%s" niet gevonden';
  cSInternalError = 'Interne fout';
  cSSyntaxErrorNear = 'Syntaxis fout bij "%s"';
  cSSyntaxError = 'Syntaxis fout';
  cSUnknownSymbol = 'Onbekend symbool "%s"';
  cSUnexpectedExprEnd = 'Onverwacht einde van de expressie';
  cSRightBraceExpected = ') verwacht';
  cSParametersError = 'Verwacht worden %d parameters maar er zijn er %d gevonden';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Meer dan 2 parameters werden verwacht';
  cSInvalidVarByteArray = 'Ongeldig VarByte array';
  cSVariableAlreadyExists = 'Variabele "%s" bestaat al';
  cSTypesMismatch = 'Types komen niet overeen';
  cSUnsupportedVariantType = 'Niet ondersteund variant type';
  cSUnsupportedOperation = 'Niet ondersteunde operatie';

  cSTokenizerIsNotDefined = 'Tokenizer is niet gedefinieerd';
  cSLibraryNotFound = 'DLL van de lijst %s werd niet gevonden';
  cSEncodeDateIsNotSupported = 'Deze versie ondersteunt isc_encode_sql_date niet';
  cSEncodeTimeIsNotSupported = 'Deze versie ondersteunt isc_encode_sql_time niet';
  cSEncodeTimestampIsNotSupported = 'Deze versie ondersteunt isc_encode_sql_timestamp niet';
  cSDecodeDateIsNotSupported = 'Deze versie ondersteunt isc_decode_sql_date niet';
  cSDecodeTimeIsNotSupported = 'Deze versie ondersteunt isc_decode_sql_time niet';
  cSDecodeTimestampIsNotSupported = 'Deze versie ondersteunt isc_decode_sql_timestamp niet';

  cSCanNotRetrieveResultSetData = 'Kan ResultSet data niet ophalen';
  cSRowBufferIsNotAssigned = 'Row buffer is niet toegekend';
  cSColumnIsNotAccessable = 'Kolom met index %d is niet bereikbaar';
  cSConvertionIsNotPossible = 'Conversie is niet mogelijk voor kolom %d van %s tot %s';
  cSCanNotAccessBlobRecord = 'Kan het blob record in kolom %d met type %s niet benaderen';
  cSRowDataIsNotAvailable = 'Rij data is niet beschikbaar';
  cSResolverIsNotSpecified = 'Resolver is niet gespecificeerd voor deze ResultSet';
  cSResultsetIsAlreadyOpened = 'ResultSet is al geopend';
  cSCanNotUpdateEmptyRow = 'Kan een lege rij niet updaten';
  cSCanNotUpdateDeletedRow = 'Kan een verwijderde rij niet updaten';
  cSCanNotDeleteEmptyRow = 'Kan een lege rij niet verwijderen';
  cSCannotUseCommit = 'Commit in autocommit mode is niet mogelijk';
  cSCannotUseRollBack = 'Rollback in autocommit mode is niet mogelijk';
  cSCanNotUpdateComplexQuery = 'Kan een complexe query met meerdere tabellen niet updaten';
  cSCanNotUpdateThisQueryType = 'Kan dit query type niet updaten';
  cSDriverWasNotFound = 'Gevraagde database driver is niet gevonden';
  cSCanNotConnectToServer = 'Kan geen verbinding maken met de SQL server';
  cSTableIsNotSpecified = 'Tabel is niet gespecifieerd';
  cSLiveResultSetsAreNotSupported = 'Live query is niet ondersteund door deze klasse';
  cSInvalidInputParameterCount = 'Input parameter aantal is lager dan verwacht';
  cSIsolationIsNotSupported = 'Transactie isolatie niveau wordt niet ondersteund';
  cSColumnWasNotFound = 'Kolom met naam "%s" bestaat niet';
  cSWrongTypeForBlobParameter = 'Verkeerde type voor Blob parameter';
  cSIncorrectConnectionURL = 'Ongeldige connectie URL: %s';
  cSUnsupportedProtocol = 'Niet ondersteund protocol: %s';
  cSUnsupportedByDriver    = 'De driver ondersteunt deze functie niet: [%s]';

  cSConnectionIsNotOpened = 'Verbinding is niet gemaakt.';
  cSInvalidOpInAutoCommit = 'Ongeldige operatie in AutoCommit mode.';
  cSInvalidOpInNonAutoCommit = 'Ongeldige operatie in non AutoCommit mode.';
  cSInvalidOpPrepare = 'Transactie voorbereiden is enkel mogelijk bij de eerste aanroep van Starttransaction!';

  cSConnectionIsNotAssigned = 'Database connectie component is niet toegekend';
  cSQueryIsEmpty = 'SQL Query is leeg';
  cSCanNotExecuteMoreQueries = 'Kan niet meerdere queries uitvoeren';
  cSOperationIsNotAllowed1 = 'Bewerking is niet toegestaan in FORWARD ONLY mode';
  cSOperationIsNotAllowed2 = 'Bewerking is niet toegestaan in READ ONLY mode';
  cSOperationIsNotAllowed3 = 'Bewerking is niet toegestaan in %s mode';
  cSOperationIsNotAllowed4 = 'Bewerking is niet toegestaan voor gesloten dataset';
  cSNoMoreRecords = 'Geen records meer aanwezig in ResultSet';
  cSCanNotOpenResultSet = 'Kan een ResultSet niet openen';
  cSCanNotOpenDataSetWhenDestroying ='Kan een Dataset niet openen wanneer de componentstate=dsDestroying';
  cSCircularLink = 'Databron maakt een oneindige verbindingslus';
  cSBookmarkWasNotFound = 'Bookmark niet gevonden';
  cSIncorrectSearchFieldsNumber = 'Incorrect aantal zoekvelden';
  cSInvalidOperationInTrans = 'Ongeldige operatie in explicit transaction mode';
  cSIncorrectSymbol = 'Ongeldig symbool in veld lijst "%s".';
  cSIncorrectToken = 'Ongeldig teken gevolgd door ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Geselecteerd transactie isolatie niveau niet ondersteund';
  cSDriverNotSupported = 'Driver niet ondersteund %s';
  cSPattern2Long = 'Patroon is te lang';
  cSDriverNotCapableOutParameters = 'Driver ondersteunt geen out parameters';
  cSStatementIsNotAllowed = 'Statement is niet toegestaan';
  cSStoredProcIsNotAllowed = 'Stored procedures zijn niet toegestaan';
  cSCannotPerformOperation = 'Kan operatie niet uitvoeren op een gesloten ResultSet';
  cSInvalidState = 'Ongeldige status';
  cSErrorConvertion = 'Conversiefout';
  cSDataTypeDoesNotSupported = 'Data type is niet onderstuend';
  cSUnsupportedParameterType = 'Niet ondersteund parameter type';
  cSUnsupportedDataType = 'Niet ondersteund data type';
  cSErrorConvertionField = 'Conversie fout voor veld "%s" naar SQLType "%s"';
  cSBadOCI = 'Ongeschikte OCI version [%s]. Vereist is 8.0.3 of nieuwer';
  cSConnect2AsUser = 'Verbinden met "%s" als gebruiker "%s"';
  cSUnknownError = 'Onbekende fout';
  cSFieldNotFound1 = 'Veld "%s" niet gevonden';
  cSFieldNotFound2 = 'Veld %d niet gevonden';

  cSLoginPromptFailure = 'Kan de standaard login prompt niet vinden.  Voeg DBLogDlg toe aan de uses sectie.';

  cSPropertyQuery = 'De Query kan enige tijd duren bij grote databases!';
  cSPropertyTables = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertyColumns = 'Limiet op Catalog, Schema en/of tablenaam is vereist.';
  cSPropertyProcedures = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertySequences = 'Limiet op Catalog en/of Schema is vereist.';
  cSPropertyExecute = 'Dient de Query toch te worden uitgevoerd?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Sluiten';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Laden';
  cSMenuSave = 'Opslaan';
  cSButtonGenerate = '&Genereren';
  cSButtonCheck = 'C&heck';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Annuleren';
  cSTableAlias = 'Tabel al&ias';
  cSReplaceSQL = '&Vervang SQL';
  cSDialogOpenTitle = 'SQL Bestand Openen';
  cSDialogSaveTitle = 'SQL Bestand Opslaan';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Open bestaande database';

  cSUpdateSQLNoResult = 'Der zuvor aktualisierte SQL liefert kein Resultset zurück';
  cSUpdateSQLRefreshStatementcount ='Update Refresh SQL Statement count moet 1 zijn';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset is niet in edit of insert modus';
  cSFieldTypeMismatch = 'Type mismatch voor veld ''%s'', verwacht: %s actueel: %s';
  cSFieldSizeMismatch = 'Size mismatch voor veld ''%s'', verwacht: %d actueel: %d';
  {$ENDIF}
  cSNeedField               = 'Veld %s is verplicht, maar niet ingevuld.';

  cSFailedtoInitPrepStmt   = 'Initialisatie van Prepared statement mislukt';
  cSFailedtoPrepareStmt    = 'Statement mislukt tijdens prepare';
  cSFailedToBindAllValues  = 'Pre-bind van alle waarden is mislukt';
  cSAttemptExecOnBadPrep   = 'Poging om een statement uit te voeren voor een succesvolle prepare';
  cSBindingFailure         = 'Binding van parameterset mislukt';
  cSPreparedStmtExecFailure = 'Uitvoeren van Prepared statement mislukt';
  cSBoundVarStrIndexMissing = 'Tekst index van bound variable bestaat niet: "%s"';
  cSBindVarOutOfRange      = 'Bound variable index buiten bereik: %d';
  cSFailedToBindResults    = 'Binding van resultaat mislukt';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'De refreshrow methode is enkel ondersteund vooreen update object';
  cSMustBeInBrowseMode = 'Bewerking is enkel toegestaan in dsBROWSE status';

  cSUnKnownParamDataType = 'Param.DataType is onbekend';
  cSFieldReadOnly        = 'Readonly veld kan geen waarde toegewezen krijgen: %d';
  cSInvalidUpdateCount     = '%d record(s) gewijzigd. Slechts 1 record had gewijzigd mogen zijn.';

  cSRowBufferWidthExceeded ='Rij buffer grootte overschreden. Probeer minder kolommen te gebruiken in je SQL query.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
{$ELSE}
// <- ms, 09/05/2005

// -> ms, 03/05/2005
{$IFDEF GERMAN}
  cSSQLError1 = 'SQL Fehler: %s';
  cSSQLError2 = 'SQL Fehler: %s Code: %d';
  cSSQLError3 = 'SQL Fehler: %s Code: %d SQL: %s';
  cSSQLError4 = 'SQL Fehler: %s Code: %d Meldung: %s';

  cSListCapacityError = 'Die Listenkapazität übersteigt die definierte Grenze (%d)';
  cSListCountError = 'Der Listenzähler ist außerhalb seiner definierten Grenzen (%d)';
  cSListIndexError = 'Der Listenindex ist außerhalb der definierten Grenzen (%d)';

  cSClonningIsNotSupported = 'Diese Klasse kann nicht geklont werden';
  cSImmutableOpIsNotAllowed = 'Diese Operation ist bei nicht änderbaren Collections nicht erlaubt';
  cSStackIsEmpty = 'Der Stack ist leer';
  cSVariableWasNotFound = 'Die Variable "%s" wurde nicht gefunden';
  cSFunctionWasNotFound = 'Die Funktion "%s" wurde nicht gefunden';
  cSInternalError = 'Interner Fehler';
  cSSyntaxErrorNear = 'Syntax Fehler bei "%s"';
  cSSyntaxError = 'Syntax Fehler';
  cSUnknownSymbol = 'Unbekanntes Symbol "%s"';
  cSUnexpectedExprEnd = 'Unerwartetes Ende des Ausdrucks';
  cSRightBraceExpected = ') erwartet';
  cSParametersError = 'Es werden %d Parameter erwartet, aber nur %d Parameter gefunden';
  cSParamValueExceeded = 'Daten des Parameters %d zu groß.';
  cSExpectedMoreParams = 'Es werden mehr als zwei Parameter erwartet';
  cSInvalidVarByteArray = 'Ungültiges VarByte Array';
  cSVariableAlreadyExists = 'Die Variable "%s" existiert bereits';
  cSTypesMismatch = 'Inkompatible Typen';
  cSUnsupportedVariantType = 'Nicht unterstützter Variant-Typ';
  cSUnsupportedOperation = 'Nicht unterstützte Operation';
  cSUnsupportedByDriver    = 'Der Treiber unterstützt dieses Feature nicht von haus aus: [%s]';

  cSTokenizerIsNotDefined = 'Tokenizer wurde nicht definiert';
  cSLibraryNotFound = 'Es wurde keine der in %s gelisteten DLL''s gefunden';
  cSEncodeDateIsNotSupported = 'Diese Version unterstützt "isc_encode_sql_date" nicht';
  cSEncodeTimeIsNotSupported = 'Diese Version unterstützt "isc_encode_sql_time" nicht';
  cSEncodeTimestampIsNotSupported = 'Diese Version unterstützt "isc_encode_sql_timestamp" nicht';
  cSDecodeDateIsNotSupported = 'Diese Version unterstützt "isc_decode_sql_date" nicht';
  cSDecodeTimeIsNotSupported = 'Diese Version unterstützt "isc_decode_sql_time" nicht';
  cSDecodeTimestampIsNotSupported = 'Diese Version unterstützt "isc_decode_sql_timestamp" nicht';

  cSCanNotRetrieveResultSetData = 'Die Ergebnismenge kann nicht ermittelt werden';
  cSRowBufferIsNotAssigned = 'Der Zeilen-Buffer ist nicht zugewiesen';
  cSColumnIsNotAccessable = 'Auf die Spalte (Tabellenfeld) mit dem Index %d kann nicht zugegriffen werden';
  cSConvertionIsNotPossible = 'Eine Konvertierung der Spalte (Tabellenfeld) %d von %s bis %s kann nicht durchgeführt werden';
  cSCanNotAccessBlobRecord = 'Auf den BLOB-Datensatz in Spalte (Tabellenfeld) %d vom Typ %s kann nicht zugegriffen werden';
  cSRowDataIsNotAvailable = 'Die Zeilendaten (Datensatzdaten) sind nicht verfügbar';
  cSResolverIsNotSpecified = 'Für diese Ergebnismenge wurde kein sog. "Resolver" angegeben';
  cSResultsetIsAlreadyOpened = 'Die Ergebnismenge ist bereits geöffnet';
  cSCanNotUpdateEmptyRow = 'Eine leere Datenzeile kann nicht aktualisiert werden';
  cSCanNotUpdateDeletedRow = 'Eine gelöschte Datenzeile kann nicht aktualisiert werden';
  cSCanNotDeleteEmptyRow = 'Eine leere Datenzeile kann nicht gelöscht werden';
  cSCannotUseCommit = 'COMMIT kann im AUTOCOMMIT-Modus nicht verwendet werden';
  cSCannotUseRollBack = 'ROLLBACK kann im AUTOCOMMIT-Modus nicht verwendet werden';
  cSCanNotUpdateComplexQuery = 'Ein Query, dessen Ergebnismenge aus mehr als einer Tabelle stammt, kann nicht aktualisiert werden';
  cSCanNotUpdateThisQueryType = 'Diese Art von Queries kann nicht aktualisiert werden';
  cSDriverWasNotFound = 'Der angegebene Datenbanktreiber wurde nicht gefunden';
  cSCanNotConnectToServer = 'Kann keine Verbindung zum SQL Server herstellen';
  cSTableIsNotSpecified = 'Tabelle ist nicht spezifiziert';
  cSLiveResultSetsAreNotSupported = 'Ein "Live Query" wird von dieser Klasse nicht unterstützt';
  cSInvalidInputParameterCount = 'Es wurden weniger Eingabeparameter angegeben, als erwartet';
  cSIsolationIsNotSupported = 'Der gewählte Trasaktions-Isolationslevel wird nicht unterstützt';
  cSColumnWasNotFound = 'Eine Tabellenspalte namens "%s" wurde nicht gefunden';
  cSWrongTypeForBlobParameter = 'Falscher Typ für einen BLOB-Parameter';
  cSIncorrectConnectionURL = 'Falsche Verbindungs-URL: %s';
  cSUnsupportedProtocol = 'Nicht unterstütztes Protokoll: %s';

  cSConnectionIsNotOpened = 'Die Verbindung zur Datenbank ist noch nicht hergestellt';
  cSInvalidOpInAutoCommit = 'Ungültige Operation im AUTOCOMMIT-Modus';
  cSInvalidOpInNonAutoCommit = 'Ungültige Operation außerhalb des AUTOCOMMIT-Modus';
  cSInvalidOpPrepare = 'Transaktion vorzubereiten ist nur beim ersten Aufruf von Starttransaction möglich!';

  cSConnectionIsNotAssigned = 'Die Datenbank-Verbindungskomponente ist nicht angegeben';
  cSQueryIsEmpty = 'SQL Query leer';
  cSCanNotExecuteMoreQueries = 'Mehr als ein Query kann nicht abgearbeitet werden';
  cSOperationIsNotAllowed1 = 'Die Operation ist im FORWARD ONLY Modus nicht erlaubt';
  cSOperationIsNotAllowed2 = 'Die Operation ist im READ ONLY Modus nicht erlaubt';
  cSOperationIsNotAllowed3 = 'Die Operation ist im %s Modus nicht erlaubt';
  cSOperationIsNotAllowed4 = 'Die Operation ist bei einem geschlossenen DataSet nicht erlaubt';
  cSNoMoreRecords = 'Es gibt keine weiteren Datensätze in der Ergebnismenge';
  cSCanNotOpenResultSet = 'Die Ergebnismenge kann nicht geöffnet werden';
  cSCanNotOpenDataSetWhenDestroying ='Dataset kann nicht im Komponenten-Status dsDestroying geöffnet werden';
  cSCircularLink = 'Die DataSource hat einen zirkulären Verweis';
  cSBookmarkWasNotFound = 'Das Lesezeichen (Bookmark) wurde nicht gefunden';
  cSIncorrectSearchFieldsNumber = 'Die Anzahl der Suchfeldwerte ist nicht korrekt';
  cSInvalidOperationInTrans = 'Ungültige Operatio im Zustand einer expliziten Transaktion';
  cSIncorrectSymbol = 'Falsches Symbol in der Feldliste "%s".';
  cSIncorrectToken = 'Falsches Token gefolgt von ":"';
  cSIncorrectParamChar = 'Ungültiger Wert für Parameter-Indikator';

  cSSelectedTransactionIsolation = 'Der gewählte Transaktions-Isolationslevel wird nicht unterstützt';
  cSDriverNotSupported = 'Der Treiber wird nicht unterstützt: %s';
  cSPattern2Long = 'Das Muster (Pattern) ist zu lang';
  cSDriverNotCapableOutParameters = 'Der Treiber beherrscht keine Parameter';
  cSStatementIsNotAllowed = 'Diese Anweisung ist nicht erlaubt';
  cSStoredProcIsNotAllowed = 'Diese Stored Procedure ist nicht erlaubt';
  cSCannotPerformOperation = 'Auf eine geschlossene Ergebnismenge können keine Operationen ausgeführt werden';
  cSInvalidState = 'Ungültiger Status';
  cSErrorConvertion = 'Konvertierungsfehler';
  cSDataTypeDoesNotSupported = 'Der Datentyp wird nicht unterstützt';
  cSUnsupportedParameterType = 'Der Parametertyp wird nicht unterstützt';
  cSUnsupportedDataType = 'Der Datentyp wird nicht unterstützt';
  cSErrorConvertionField = 'Konvertierungsfehler bei Feld "%s" nach SQL-Typ "%s"';
  cSBadOCI = 'Die OCI Version 8.0.3 (oder älter) wird benötigt! Aktuelle Version: %s';
  cSConnect2AsUser = 'Verbinde zu "%s" als User "%s"';
  cSUnknownError = 'Unbekannter Fehler';
  cSFieldNotFound1 = 'Das Feld "%s" wurde nicht gefunden';
  cSFieldNotFound2 = 'Das Feld %d wurde nicht gefunden';

  cSLoginPromptFailure = 'Der Standard-Login-Dialog konnte nicht gefunden werden. Bitte DBLogDlg in die USES-Sektion der Haupt-Unit hinzufügen';

  cSPropertyQuery = 'Die Abfrage kann bei großen Datenbanken eine Weile dauern!';
  cSPropertyTables = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschränkt werden.';
  cSPropertyColumns = 'Sie sollte durch die Angabe von Catalog, Schema und/oder Tabellenname eingeschränkt werden.';
  cSPropertyProcedures = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschränkt werden.';
  cSPropertySequences = 'Sie sollte durch die Angabe von Catalog und/oder Schema eingeschränkt werden.';
  cSPropertyExecute = 'Soll die Abfrage trotzdem ausgeführt werden?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Schließen';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'SQL aus&wählen';
  cSMenuLoad = 'Öffnen';
  cSMenuSave = 'Speichern';
  cSButtonGenerate = '&Generieren';
  cSButtonCheck = 'Syntax &Prüfen';
  cSButtonTest = 'Befehl &Testen';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Abbruch';
  cSTableAlias = 'Tabllen-Alias';
  cSReplaceSQL = 'SQL &ersetzen';
  cSDialogOpenTitle = 'SQL Script öffnen';
  cSDialogSaveTitle = 'SQL Script speichern';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Existierende Datenbank öffnen';

  cSUpdateSQLNoResult = 'Translate : Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Translate : Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'Das DataSet ist nicht im "Ändern" oder "Einfüge" Modus.';
  cSFieldTypeMismatch = 'Der Typ für Feld ''%s'' stimmt nicht. Erwartet wird %s der Typ ist aber momentan %s';
  cSFieldSizeMismatch = 'Die Größe des Feldes ''%s'' stimmt nicht. Erwartet wird  %d die Größe ist aber momentan %d';
  {$ENDIF}
  cSNeedField               = 'Feld %s benötigt einen Wert, welcher nicht zugewiesen wurde.';

  cSFailedtoInitPrepStmt   = 'Die Initialisierung für vorbereitete Abfrage ist gescheitert';
  cSFailedtoPrepareStmt    = 'Abfrage ist wärend des Vorbereitungsprozesses gescheitert.';
  cSFailedToBindAllValues  = 'Anwendung konnte nicht alle Werte übergeben';
  cSAttemptExecOnBadPrep   = 'Es wurde versucht eine nicht erfolgreich vorbereitete Abfrage auszuführen';
  cSBindingFailure         = 'Konnte nicht alle ausgewählten Parameter der Abfrage binden';
  cSPreparedStmtExecFailure = 'Vorbeitet Abfrage scheiterte beim Ausführen';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'Unbekannter Parameter-Datentyp';
  cSFieldReadOnly          = 'Einem "Nur-Lesen" Feld kann kein Wert zugewiesen werden: %d';
  cSInvalidUpdateCount     = '%d Datensätze geändert. Exakt ein Datensatz sollte geändert werden.';

  cSRowBufferWidthExceeded ='Translate: Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Datasets können nich nach berechneten Feldern und Lookup-Feldern gefiltert werden.';
{$ELSE}
  // -> fduenas, 28/06/2005
{$IFDEF SPANISH} //Spanish translations
  cSSQLError1 = 'Error SQL: %s';
  cSSQLError2 = 'Error SQL: %s Código: %d';
  cSSQLError3 = 'Error SQL: %s Código: %d SQL: %s';
  cSSQLError4 = 'Error SQL: %s Código: %d Mensage: %s';

  cSListCapacityError = 'List capacity fuera de límites (%d)';
  cSListCountError = 'List count fuera de límites (%d)';
  cSListIndexError = 'List index fuera de límites (%d)';

  cSClonningIsNotSupported = 'La Clonación no está soportada por esta clase';
  cSImmutableOpIsNotAllowed = 'Operación no permitida en colecciones no modificables';
  cSStackIsEmpty = 'La Pila (Stack) está vacía';
  cSVariableWasNotFound = 'Variable "%s" no encontrada';
  cSFunctionWasNotFound = 'Función "%s" no encontrada';
  cSInternalError = 'Error interno';
  cSSyntaxErrorNear = 'Error de sintaxis cerca de "%s"';
  cSSyntaxError = 'Error de sintaxis';
  cSUnknownSymbol = 'Símbolo "%s" desconocido';
  cSUnexpectedExprEnd = 'Fin de expresión inesperado';
  cSRightBraceExpected = ') esperado';
  cSParametersError = 'Se esperaban %d parámetros pero solo %d fueron encontrados';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Se esperaban más de dos parámetros';
  cSInvalidVarByteArray = 'Arreglo VarByte inválido';
  cSVariableAlreadyExists = 'La variable "%s" ya existe';
  cSTypesMismatch = 'Los Tipos no coinciden';
  cSUnsupportedVariantType = 'Tipo de Variant no soportando';
  cSUnsupportedOperation = 'Operación no soportada';

  cSTokenizerIsNotDefined = 'El objeto Tokenizer no está definido';
  cSLibraryNotFound = 'Ninguna librería dinámica de la lista %s fue encontrada';
  cSEncodeDateIsNotSupported = 'Esta versión no soporta isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Esta versión no soporta isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Esta versión no soporta isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Esta versión no soporta isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Esta versión no soporta isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Esta versión no soporta isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'No se pueden obtener datos del Resultset';
  cSRowBufferIsNotAssigned = 'Buffer de línea no asignado';
  cSColumnIsNotAccessable = 'La columna con índice %d no está accesible';
  cSConvertionIsNotPossible = 'La conversión no es posible para la columna %d de %s a %s';
  cSCanNotAccessBlobRecord = 'No se puede accesar al registro del blob en la columna %d con tipo %s';
  cSRowDataIsNotAvailable = 'Datos de línea no disponibles';
  cSResolverIsNotSpecified = 'El objeto Resolver no está especificado para este ResultSet';
  cSResultsetIsAlreadyOpened = 'El Resultset ya está abierto';
  cSCanNotUpdateEmptyRow = 'No se puede actualizar una línea vacía';
  cSCanNotUpdateDeletedRow = 'No se puede actualizar una línea borrada';
  cSCanNotDeleteEmptyRow = 'No se puede borrar una línea vacía';
  cSCannotUseCommit = 'No se puede usar COMMIT en modo AUTOCOMMIT';
  cSCannotUseRollBack = 'No se puede usar ROLLBACK en modo AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'No se puede actualizar una consulta compleja que haga referencia a más de una tabla';
  cSCanNotUpdateThisQueryType = 'No se puede actualizar este tipo de consulta';
  cSDriverWasNotFound = 'No se encontró el controlador de base de datos solicitado';
  cSCanNotConnectToServer = 'No puede conectarse al servidor SQL';
  cSTableIsNotSpecified = 'La Tabla no está especificada';
  cSLiveResultSetsAreNotSupported = 'La consulta actualizable no es soportada por esta clase';
  cSInvalidInputParameterCount = 'El número de parámetros de tipo Input es menor al esperado';
  cSIsolationIsNotSupported = 'Nivel de aislamiento de transacción no soportado';
  cSColumnWasNotFound = 'Columna con nombre "%s" no encontrada';
  cSWrongTypeForBlobParameter = 'Tipo incorrecto para el parámetro Blob';
  cSIncorrectConnectionURL = 'URL de conexión incorrecta: %s';
  cSUnsupportedProtocol = 'Protocolo no soportado: %s';
  cSUnsupportedByDriver    = 'Translate: Driver can not support this feature natively: [%s]';

  cSConnectionIsNotOpened = 'La conexión no ha sido abierta todavía';
  cSInvalidOpInAutoCommit = 'Operación inválida en modo AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Operación inválida en modo No-AutoCommit';
  cSInvalidOpPrepare = 'Translate : Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'El componente de conexión a base de datos no está asigando';
  cSQueryIsEmpty = 'La Consulta SQL está vacía';
  cSCanNotExecuteMoreQueries = 'No se puede ejecutar más de una consulta';
  cSOperationIsNotAllowed1 = 'Operación no permitida en modo FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operación no permitida en modo READ ONLY (Solo lectura)';
  cSOperationIsNotAllowed3 = 'Operación no permitida en modo %s';
  cSOperationIsNotAllowed4 = 'Operación no permitida en un dataset cerrado';
  cSNoMoreRecords = 'No hay más registros en el Resultset';
  cSCanNotOpenResultSet = 'No se puede abrir el Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource hace una referencia cíclica';
  cSBookmarkWasNotFound = 'Bookmark no encontrado';
  cSIncorrectSearchFieldsNumber = 'Número incorrecto de valores de búsqueda';
  cSInvalidOperationInTrans = 'Operación inválida en modo de transacción explícita';
  cSIncorrectSymbol = 'Símbolo incorrecto en la lista de campos "%s".';
  cSIncorrectToken = 'Token incorrecto seguido de ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'El Nivel seleccionado de aislamiento de transacción no está soportado';
  cSDriverNotSupported = 'Controlador %s no soportado';
  cSPattern2Long = 'Patrón de búsqueda demasiado largo';
  cSDriverNotCapableOutParameters = 'El controlador no tiene cualidades para manejar parámetros';
  cSStatementIsNotAllowed = 'Sentencia no permitida';
  cSStoredProcIsNotAllowed = 'El procedimiento alamacenado no está permitido';
  cSCannotPerformOperation = 'No se puede efectuar la operación en un resultset cerrado';
  cSInvalidState = 'Estado Inválido';
  cSErrorConvertion = 'Error de conversión';
  cSDataTypeDoesNotSupported = 'Tipo de datos no soportado';
  cSUnsupportedParameterType = 'Tipo de parámetro no soportado';
  cSUnsupportedDataType = 'Tipo de datos no soportado';
  cSErrorConvertionField = 'Error de conversión del campo "%s" al Tipo SQL "%s"';
  cSBadOCI = 'Versión de OCI [%s] no aceptable. Se requiere versión 8.0.3 o menor';
  cSConnect2AsUser = 'Conectando a "%s" como usuario "%s"';
  cSUnknownError = 'Error desconocido';
  cSFieldNotFound1 = 'Campo "%s" no encontrado';
  cSFieldNotFound2 = 'Campo %d no encontrado';

  cSLoginPromptFailure = 'Cuadro de Diálogo por omisión para autenticación no encontrado.'+#10#13+
                        'Por favor agregue la unidad DBLogDlg a la sección uses de la unidad principal de su proyecto.';

  cSPropertyQuery = '¡La Consulta puede tardar un poco en bases de datos extensas!';
  cSPropertyTables = 'Debería limitarlas mediante Catalog y/o Schema.';
  cSPropertyColumns = 'Debería limitarlas mediante Catalog, Schema y/o TableName.';
  cSPropertyProcedures = 'Debería limitarlos mediante Catalog y/or Schema.';
  cSPropertySequences = 'Debería limitarlos mediante Catalog y/or Schema.';
  cSPropertyExecute = '¿Desea ejecutar la consulta de todos modos?';

  cSFormTest = 'Prueba del Editor ZEOS SQL';
  cSButtonClose = '&Cerrar';
  cSFormEditor = 'Editor ZEOS SQL';
  cSTabSheetSelect = 'Seleccionar SQL';
  cSMenuLoad = 'Cargar...';
  cSMenuSave = 'Guardar...';
  cSButtonGenerate = '&Generar';
  cSButtonCheck = 'C&hecar';
  cSButtonTest = 'Pro&bar';
  cSButtonOk = '&Aceptar';
  cSButtonCancel = '&Cancelar';
  cSTableAlias = 'A&lias de la tabla';
  cSReplaceSQL = '&Reemplazar SQL';
  cSDialogOpenTitle = 'Abrir archivo SQL';
  cSDialogSaveTitle = 'Guardar archivo SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Abrir base de datos existente';

  cSUpdateSQLNoResult = 'Translate : Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Translate : Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'El Dataset no se encuentra en modo de edición o inserción';
  cSFieldTypeMismatch = 'El Tipo de dato no coincide para el campo ''%s'', se espera: %s, actual: %s';
  cSFieldSizeMismatch = 'El Tamaño de dato no coincide para el campo ''%s'', se espera: %d, actual: %d';
  {$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Translate: Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Translate: Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Translate: Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Translate: Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Translate: Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Translate: Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'TRANSLATE: Unknown Param.DataType';
  cSFieldReadOnly          = 'Translate : Readonly field can''t be assigned a value: %d';
  cSInvalidUpdateCount     = 'Translate : %d record(s) updated. Only one record should have been updated.';

  cSRowBufferWidthExceeded ='Translate: Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
{$ELSE}

{$IFDEF ROMANA}

  SSQLError1 = 'SQL Eroare: %s';
  cSSQLError2 = 'SQL Eroare: %s Cod: %d';
  cSSQLError3 = 'SQL Eroare: %s Cod: %d SQL: %s';
  cSSQLError4 = 'SQL Eroare: %s Cod: %d Mesaj: %s';

  cSListCapacityError = 'Capacitatea listei este în afara limitelor (%d)';
  cSListCountError = 'Contorul listei este în afara limitelor (%d)';
  cSListIndexError = 'Indexul listei este în afara limitelor (%d)';

  cSClonningIsNotSupported = 'Clonning nu este suportat de aceastã clasã';
  cSImmutableOpIsNotAllowed = 'Operaþia nu este permisã ori colecþia nu este modificabilã';
  cSStackIsEmpty = 'Stiva este goalã';
  cSVariableWasNotFound = 'Variabila "%s" nu a fost gãsitã';
  cSFunctionWasNotFound = 'Funcþia "%s" nu a fost gãsitã';
  cSInternalError = 'Eroare Internã';
  cSSyntaxErrorNear = 'Eroare de sintaxã lângã "%s"';
  cSSyntaxError = 'Eroare de sintaxã';
  cSUnknownSymbol = 'Simbol necunoscut "%s"';
  cSUnexpectedExprEnd = 'Final neaºteptat pentru expresie';
  cSRightBraceExpected = ') aºteptat';
  cSParametersError = 'parametrul %d a fost aºteptat dar %d a fost gãsit';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Mai nult de doi parametrii sunt aºteptaþi';
  cSInvalidVarByteArray = 'Arie VarByte invalidã';
  cSVariableAlreadyExists = 'Variabila "%s" deja existã';
  cSTypesMismatch = 'Tip nepotrivit';
  cSUnsupportedVariantType = 'Tip variant neasteptat';
  cSUnsupportedOperation = 'Operaþie nesuportatã';

  cSTokenizerIsNotDefined = 'Simbolistica nu este definitã';
  cSLibraryNotFound = 'None of the dynamic libraries can be found: %s';
  cSEncodeDateIsNotSupported = 'Aceastã versiune nu suportã isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Aceastã versiune nu suportã isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Aceastã versiune nu suportã isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Aceastã versiune nu suportã isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Aceastã versiune nu suportã isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Aceastã versiune nu suportã isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Nu pot returna  Resultset data';
  cSRowBufferIsNotAssigned = 'Row buffer nu este asignat';
  cSColumnIsNotAccessable = 'Column with index %d nu este accesibil';
  cSConvertionIsNotPossible = 'Conversia nu este posibilã pentru coloana %d din %s în %s';
  cSCanNotAccessBlobRecord = 'Nu pot aceesa înregistrarea blob în coloana %d cu tipul %s';
  cSRowDataIsNotAvailable = 'Row data nu este disponibil';
  cSResolverIsNotSpecified = 'Resolver nu este specificat pentru acest ResultSet';
  cSResultsetIsAlreadyOpened = 'Resultset este deja deschisã';
  cSCanNotUpdateEmptyRow = 'Nu pot updata o înregistrare goalã';
  cSCanNotUpdateDeletedRow = 'Nu pot updata o înregistrare ºtearsã';
  cSCanNotDeleteEmptyRow = 'Nu pot ºterge o înregistrare goalã';
  cSCannotUseCommit = 'Nu poþi folosi COMMIT în modul AUTOCOMMIT ';
  cSCannotUseRollBack = 'Nu poþi folosi ROLLBACK în modul AUTOCOMMIT ';
  cSCanNotUpdateComplexQuery = 'Nu pot updata un query complex cu mai mult de un tabel';
  cSCanNotUpdateThisQueryType = 'Nu pot updata acest tip de query';
  cSDriverWasNotFound = 'Driverul pentru baza de date nu a fost gãsit';
  cSCanNotConnectToServer = 'Nu ma pot conecta la serverul SQL';
  cSTableIsNotSpecified = 'Tbelul nu este specificat';
  cSLiveResultSetsAreNotSupported = 'Live query is not supported by this class';
  cSInvalidInputParameterCount = 'Input parameter count is less then expected';
  cSIsolationIsNotSupported = 'Transaction isolation level nu este suportat';
  cSColumnWasNotFound = 'Coloana cu numele "%s" nu a fost fãsitã';
  cSWrongTypeForBlobParameter = 'Tip greºit pentru parametru Blob';
  cSIncorrectConnectionURL = 'Conexiune URL incorectã: %s';
  cSUnsupportedProtocol = 'Protocol nesuportat: %s';
  cSUnsupportedByDriver    = 'Driver nu poate suporta aceastã facilitate : [%s]';

  cSConnectionIsNotOpened = 'Conexiune nu este deschisã incã';
  cSInvalidOpInAutoCommit = 'Operaþie invalidã în modul AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Operaþie invalidã în modul non AutoCommit ';
  cSInvalidOpPrepare = 'Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Nu este asignatã o componentã Database connection';
  cSQueryIsEmpty = 'SQL Query este gol';
  cSCanNotExecuteMoreQueries = 'Nu pot executa mai mult de un query';
  cSOperationIsNotAllowed1 = 'Operaþia nu este permisã în modul FORWARD ONLY ';
  cSOperationIsNotAllowed2 = 'Operaþia nu este permisã în modul READ ONLY';
  cSOperationIsNotAllowed3 = 'Operaþia nu este permisã în modul %s ';
  cSOperationIsNotAllowed4 = 'Operaþia nu este permisã pentru în dataset închis';
  cSNoMoreRecords = 'Nu mai sunt înregistrãri în Resultset';
  cSCanNotOpenResultSet = 'Nu pot deschide Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource makes a circular link';
  cSBookmarkWasNotFound = 'Bookmark nu a fost gãsit';
  cSIncorrectSearchFieldsNumber = 'Numãr incorect of search field values';
  cSInvalidOperationInTrans = 'Operaþie invalidã în modul explicit transaction';
  cSIncorrectSymbol = 'Simbol incorect în lista de câmpuri  "%s".';
  cSIncorrectToken = 'Incorect token dupã ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Selected transaction isolation level is not supported';
  cSDriverNotSupported = 'Driver nesuportat %s';
  cSPattern2Long = 'Pattern is too long';
  cSDriverNotCapableOutParameters = 'Driver nu este capabil sã mânuie parametrii';
  cSStatementIsNotAllowed = 'Statement nu sunt permise';
  cSStoredProcIsNotAllowed = 'The stored proc nu sunt permise';
  cSCannotPerformOperation = 'Nu se pot face operaþii cu Resultset închis';
  cSInvalidState = 'Stare invalidã';
  cSErrorConvertion = 'Eroare de conversie';
  cSDataTypeDoesNotSupported = 'Tip de datã nesuportat';
  cSUnsupportedParameterType = 'Tip parametru nesuportat';
  cSUnsupportedDataType = 'Tip datã nesuportat';
  cSErrorConvertionField = 'Eroare de conversie pentru câmpul "%s" în TipSQL "%s"';
  cSBadOCI = 'Bad OCI version [%s]. Version 8.0.3 or older is required';
  cSConnect2AsUser = 'Conectare la "%s" ca utlizator "%s"';
  cSUnknownError = 'Eroare necunoscutã';
  cSFieldNotFound1 = 'Câmpul "%s" nu a fost gãsit';
  cSFieldNotFound2 = 'Câmpul %d nu a fost gãsit';

  cSLoginPromptFailure = 'Nu gãsesc fereastra de dialog implicitã pentru login. Vã rog adãugaþi DBLogDlg în secþiunea uses.';

  cSPropertyQuery = 'The Query may last a while on large databases!';
  cSPropertyTables = 'You should limit it by Catalog and/or Schema.';
  cSPropertyColumns = 'You should limit it by Catalog, Schema and/or TableName.';
  cSPropertyProcedures = 'You should limit it by Catalog and/or Schema.';
  cSPropertySequences = 'You should limit it by Catalog and/or Schema.';
  cSPropertyExecute = 'Query va fi executatã oricum?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = 'În&chide';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Deschide';
  cSMenuSave = 'Salvare';
  cSButtonGenerate = '&Generare';
  cSButtonCheck = 'Verificare';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'Revo&care';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Replace SQL';
  cSDialogOpenTitle = 'Deschide Fiºier SQL';
  cSDialogSaveTitle = 'Salveazã Fiºier SQL';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Deschide bazã date existentã';

  cSUpdateSQLNoResult = '"Update Refresh SQL" furnizat nu este un recordset';
  cSUpdateSQLRefreshStatementcount ='Declaraþia "Update Refresh SQL" ca numãr trebuie sã fie una';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset nu este în modul de editare sau inserare';
  cSFieldTypeMismatch = 'Tip nepotrivit pentru câmpul ''%s'', aºteptat: %s actual: %s';
  cSFieldSizeMismatch = 'Dimensiune nepotrivitã pentru câmpul  ''%s'', aºteptat: %d actual: %d';
  {$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Translate: Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Translate: Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Translate: Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Translate: Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Translate: Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Translate: Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Translate: Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Translate: Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Translate: Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'TRANSLATE: The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'TRANSLATE: Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'TRANSLATE: Unknown Param.DataType';

  cSRowBufferWidthExceeded ='Translate: Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';

  // <-- added by tohenk
  {$ELSE}
  {$IFDEF INDONESIAN}
  cSSQLError1 = 'Kesalahan SQL: %s';
  cSSQLError2 = 'Kesalahan SQL: %s Kode: %d';
  cSSQLError3 = 'Kesalahan SQL: %s Kode: %d SQL: %s';
  cSSQLError4 = 'Kesalahan SQL: %s Kode: %d Pesan: %s';

  cSListCapacityError = 'Kapasitas List diluar jangkauan (%d)';
  cSListCountError = 'Jumlah List diluar jangkauan (%d)';
  cSListIndexError = 'Indeks List diluar jangkauan (%d)';

  cSClonningIsNotSupported = 'Class ini tidak mendukung kloning';
  cSImmutableOpIsNotAllowed = 'Operasi tidak diperkenankan pada koleksi yang tidak dapat diubah';
  cSStackIsEmpty = 'Stack kosong';
  cSVariableWasNotFound = 'Variabel "%s" tidak ada';
  cSFunctionWasNotFound = 'Fungsi "%s" tidak ada';
  cSInternalError = 'Kesalahan internal';
  cSSyntaxErrorNear = 'Kesalahan Syntax di dekat "%s"';
  cSSyntaxError = 'Kesalahan Syntax';
  cSUnknownSymbol = 'Simbol tidak dikenali "%s"';
  cSUnexpectedExprEnd = 'Tidak dibutuhkan, akhir dari ekspresi';
  cSRightBraceExpected = ') dibutuhkan';
  cSParametersError = '%d parameter dibutuhkan tapi terdapat %d parameter';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Dibutuhkan lebih dari dua parameter';
  cSInvalidVarByteArray = 'array VarByte tidak valid';
  cSVariableAlreadyExists = 'Variabel "%s" sudah ada';
  cSTypesMismatch = 'Tipe tidak sesuai';
  cSUnsupportedVariantType = 'Tipe variant tidak didukung';
  cSUnsupportedOperation = 'Operasi tidak didukung';

  cSTokenizerIsNotDefined = 'Tokenizer belum ditentukan';
  cSLibraryNotFound = 'Tidak ada library ditemukan: %s';
  cSEncodeDateIsNotSupported = 'Versi ini tidak mendukung isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Versi ini tidak mendukung isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Versi ini tidak mendukung isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Versi ini tidak mendukung isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Versi ini tidak mendukung isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Versi ini tidak mendukung isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Tidak dapat mengambil data Resultset';
  cSRowBufferIsNotAssigned = 'Row buffer tidak disediakan';
  cSColumnIsNotAccessable = 'Kolom dengan indeks %d tidak dapat diakses';
  cSConvertionIsNotPossible = 'Konversi tidak dimungkinkan pada kolom %d dari %s ke %s';
  cSCanNotAccessBlobRecord = 'Tidak dapat mengakses rekord `blob` pada kolom %d dengan tipe %s';
  cSRowDataIsNotAvailable = 'Data Row tidak tersedia';
  cSResolverIsNotSpecified = 'Resolver belum ditentukan pada ResultSet ini';
  cSResultsetIsAlreadyOpened = 'Resultset sudah terbuka';
  cSCanNotUpdateEmptyRow = 'Tidak dapat meng-update row kosong';
  cSCanNotUpdateDeletedRow = 'Tidak dapat meng-update row terhapus';
  cSCanNotDeleteEmptyRow = 'Tidak dapat meng-hapus row kosong';
  cSCannotUseCommit = 'COMMIT tidak dapat digunakan pada mode AUTOCOMMIT';
  cSCannotUseRollBack = 'ROLLBACK tidak dapat digunakan pada mode AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Tidak dapat meng-update query kompleks dengan lebih dari satu tabel';
  cSCanNotUpdateThisQueryType = 'Tidak dapat meng-update query dengan tipe ini';
  cSDriverWasNotFound = 'Driver database yang diminta tidak ada';
  cSCanNotConnectToServer = 'Tidak dapat terhubung ke server SQL';
  cSTableIsNotSpecified = 'Tabel belum ditentukan';
  cSLiveResultSetsAreNotSupported = 'Live query tidak didukung oleh Class ini';
  cSInvalidInputParameterCount = 'Jumlah parameter Input kurang dari yang dibutuhkan';
  cSIsolationIsNotSupported = 'Level Isolasi Transaksi tidak didukung';
  cSColumnWasNotFound = 'Kolom dengan nama "%s" tidak ada';
  cSWrongTypeForBlobParameter = 'Salah tipe untuk parameter Blob';
  cSIncorrectConnectionURL = 'Salah koneksi URL: %s';
  cSUnsupportedProtocol = 'Protokol tidak didukung: %s';
  cSUnsupportedByDriver    = 'Driver tidak mendukung fitur: [%s]';

  cSConnectionIsNotOpened = 'Koneksi belum dibuka';
  cSInvalidOpInAutoCommit = 'Operasi tidak valid pada mode AUTOCOMMIT';
  cSInvalidOpInNonAutoCommit = 'Operasi tidak valid pada mode non AUTOCOMMIT';
  cSInvalidOpPrepare = 'Persiapan transaksi hanya mungkin pada (!) Starttransaction pertama';

  cSConnectionIsNotAssigned = 'Komponen koneksi Database tidak ditentukan';
  cSQueryIsEmpty = 'Query SQL kosong';
  cSCanNotExecuteMoreQueries = 'Tidak dapat meng-eksekusi lebih dari satu query';
  cSOperationIsNotAllowed1 = 'Operasi tidak diperkenankan pada mode FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Operasi tidak diperkenankan pada mode READ ONLY';
  cSOperationIsNotAllowed3 = 'Operasi tidak diperkenankan pada mode %s';
  cSOperationIsNotAllowed4 = 'Operasi tidak diperkenankan pada dataset tertutup';
  cSNoMoreRecords = 'Tidak ada rekord lagi pada Resultset';
  cSCanNotOpenResultSet = 'Tidak dapat membuka Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Terjadi hubungan Datasource circular';
  cSBookmarkWasNotFound = 'Bookmark tidak ada';
  cSIncorrectSearchFieldsNumber = 'Salah jumlah nilai field pada pencarian';
  cSInvalidOperationInTrans = 'Operasi tidak valid pada mode explicit transaction';
  cSIncorrectSymbol = 'Simbol salah pada daftar field "%s".';
  cSIncorrectToken = 'Token salah setelah ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Level Isolasi Transaksi terpilih tidak didukung';
  cSDriverNotSupported = 'Driver tidak mendukung %s';
  cSPattern2Long = 'Pola terlalu panjang';
  cSDriverNotCapableOutParameters = 'Driver tidak mampu menangani parameter';
  cSStatementIsNotAllowed = 'Statement tidak diperbolehkan';
  cSStoredProcIsNotAllowed = 'StoredProc tidak diperbolehkan';
  cSCannotPerformOperation = 'Tidak dapat melakukan operasi pada Resultset tertutup';
  cSInvalidState = 'Sate tidak valid';
  cSErrorConvertion = 'Kesalahan konversi';
  cSDataTypeDoesNotSupported = 'Tipe Data tidak didukung';
  cSUnsupportedParameterType = 'Tidak mendukung tipe parameter';
  cSUnsupportedDataType = 'Tidak mendukung tipe data';
  cSErrorConvertionField = 'Kesalahan konversi field "%s" ke Tipe SQL "%s"';
  cSBadOCI = 'OCI version [%s] tidak sah. Dibutuhkan versi 8.0.3 atau terdahulu';
  cSConnect2AsUser = 'Koneksi ke "%s" dengan user "%s"';
  cSUnknownError = 'Kesalahan tidak diketahui';
  cSFieldNotFound1 = 'Field "%s" tidak ada';
  cSFieldNotFound2 = 'Field %d tidak ada';

  cSLoginPromptFailure = 'Tidak ada dialog Login default. Silahkan tambahkan DBLogDlg ke klausula `uses` pada file utama.';

  cSPropertyQuery = 'Query mungkin berlangsung lama pada database besar!';
  cSPropertyTables = 'Batasi dengan Katalog data/atau Skema.';
  cSPropertyColumns = 'Batasi dengan Katalog, Skema dan/atau Nama Tabel.';
  cSPropertyProcedures = 'Batasi dengan Katalog dan/atau Skema.';
  cSPropertySequences = 'Batasi dengan Katalog dan/atau Skema.';
  cSPropertyExecute = 'Apakah Query jadi dieksekusi?';

  cSFormTest = 'Tes Editor SQLZEOS';
  cSButtonClose = '&Tutup';
  cSFormEditor = 'Editor SQL ZEOS';
  cSTabSheetSelect = 'SQL Select';
  cSMenuLoad = 'Ambil';
  cSMenuSave = 'Simpan';
  cSButtonGenerate = '&Generate';
  cSButtonCheck = '&Cek';
  cSButtonTest = 'T&es';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Batal';
  cSTableAlias = 'Alias T&abel';
  cSReplaceSQL = 'SQL &Replace';
  cSDialogOpenTitle = 'Buka File SQL';
  cSDialogSaveTitle = 'Simpan File SQL';
  cSSQLEditor = 'Editor SQL';
  cSDatabaseDialog = 'Buka database yang tersedia';

  cSUpdateSQLNoResult = 'Tidak ada Resultset pada Update Refresh SQL';
  cSUpdateSQLRefreshStatementcount ='Jumlah Statement pada Update Refresh SQL harus 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset tidak dalam mode edit atau sisip';
  cSFieldTypeMismatch = 'Tipe tidak sesuai pada field ''%s'', seharusnya: %s aktual: %s';
  cSFieldSizeMismatch = 'Ukuran tidak sesuai pada field ''%s'', seharusnya: %d aktual: %d';
  {$ENDIF}
  cSNeedField               = 'Field %s diperlukan, namun tidak disediakan.';

  cSFailedtoInitPrepStmt   = 'Gagal inisialisasi Prepared statement';
  cSFailedtoPrepareStmt    = 'Statemen gagal sewaktu proses persiapan';
  cSFailedToBindAllValues  = 'Aplikasi gagal dalam penggabungan pendahuluan semua nilai';
  cSAttemptExecOnBadPrep   = 'Percobaan eksekusi statemen dilakukan sebelum persiapan berhasil.';
  cSBindingFailure         = 'Gagal menggabungkan parameter';
  cSPreparedStmtExecFailure = 'Prepared Statement gagal dieksekusi';
  cSBoundVarStrIndexMissing = 'Teks variabel indeks "%s" tidak ada';
  cSBindVarOutOfRange      = 'Variabel indeks diluar jangkauan: %d';
  cSFailedToBindResults    = 'Aplikasi gagal pada penggabungan ke Resultset';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'Metode RefreshRow hanya didukung oleh obyek Update';
  cSMustBeInBrowseMode = 'Operasi hanya diperbolehkan pada status dsBrowse';

  cSUnKnownParamDataType = 'Param.DataType tidak dikenal';
  cSFieldReadOnly          = 'Field readonly tidak dapat diberikan nilai: %d';
  cSInvalidUpdateCount     = '%d rekord terupdate. Seharusnya hanya satu rekord yang terupdate.';

  cSRowBufferWidthExceeded = 'Lebar buffer baris terlampaui. Coba kurangi atau gunakan kolom yang lebih panjang dalam query SQL.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
  // <--- end added by tohenk
  //--- begin added by ORMADA --------------------------------------------------
{$ELSE}
{$IFDEF RUSSIAN}
  cSSQLError1                               = 'Îøèáêà â SQL âûðàæåíèè: %s';
  cSSQLError2                               = 'Îøèáêà â SQL âûðàæåíèè: %s Êîä îøèáêè: %d';
  cSSQLError3                               = 'Îøèáêà â SQL âûðàæåíèè: %s Êîä îøèáêè: %d SQL: %s';
  cSSQLError4                               = 'Îøèáêà â SQL âûðàæåíèè: %s Êîä îøèáêè: %d Ñîîáùåíèå: %s';

  cSListCapacityError                       = 'Ðàçìåð ñïèñêà âûøåë çà ãðàíèöû (%d)';
  cSListCountError                          = 'Ñ÷åò÷èê ñïèñêà âûøåë çà ãðàíèöû (%d)';
  cSListIndexError                          = 'Èíäåêñ ñïèñêà âûøåë çà ãðàíèöû (%d)';

  cSClonningIsNotSupported                  = 'Äàííûé êëàññ íå ïîääåðæèâàåò êëîíèðîâàíèå';
  cSImmutableOpIsNotAllowed                 = 'Îïåðàöèÿ íå ïîääåðæèâàåòñÿ íà èçìåíÿåìûõ êîëëåêöèÿõ';
  cSStackIsEmpty                            = 'Ñòåê ïóñò';
  cSVariableWasNotFound                     = 'Çíà÷åíèå "%s" íå íàéäåíî';
  cSFunctionWasNotFound                     = 'Ôóíêöèÿ "%s" íå íàéäåíà';
  cSInternalError                           = 'Âíóòðåíÿÿ îøèáêà';
  cSSyntaxErrorNear                         = 'Îøèáêà â ñèíòàêñèñå "%s"';
  cSSyntaxError                             = 'Îøèáêà â ñèíòàêñèñå';
  cSUnknownSymbol                           = 'Íåèçâåñòíûé ñèìâîë "%s"';
  cSUnexpectedExprEnd                       = 'Íåîæèäàííûé êîíåö âûðàæåíèÿ';
  cSRightBraceExpected                      = ') ïðîïóùåíà';
  cSParametersError                         = 'îæèäàåòñÿ %d ïàðàìåòðîâ, íàéäåíî %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams                      = 'Îæèäàåòñÿ áîëåå 2-õ ïàðàìåòðîâ';
  cSInvalidVarByteArray                     = 'Íåâåðíûé ìàññèâ (VarByte)';
  cSVariableAlreadyExists                   = 'Çíà÷åíèå "%s" óæå ñóùåñòâóåò';
  cSTypesMismatch                           = 'Íåñîâïàäåíèå òèïîâ';
  cSUnsupportedVariantType                  = 'Íåïîääåðæèâàåìûé âàðèàíòíûé (variant) òèï';
  cSUnsupportedOperation                    = 'Íåïîääåðæèâàåìàÿ îïåðàöèÿ';

  cSTokenizerIsNotDefined                   = 'Ìåòêà íå îïðåäåëåíà';
  cSLibraryNotFound                         = 'Íå îäíîé äèíàìè÷åñêîé áèáëèîòåêè íå íàéäåíî: %s';
  cSEncodeDateIsNotSupported                = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_encode_sql_date';
  cSEncodeTimeIsNotSupported                = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported           = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported                = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_decode_sql_date';
  cSDecodeTimeIsNotSupported                = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported           = 'Ýòà âåðñèÿ íå ïîääåðæèâàåò isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData             = 'Íåâîçìîæíî ïîëó÷èòü íàáîð äàííûõ (Resultset)';
  cSRowBufferIsNotAssigned                  = 'Íå íàçíà÷åí áóôôåð ñòðîêè';
  cSColumnIsNotAccessable                   = 'Íåäîñòóïåí ñòîëáåö ñ èíäåêñîì %d';
  cSConvertionIsNotPossible                 = 'Êîíâåðòàöèÿ íåâîçìîæíà äëÿ ñòîëáöà %d ñ %s íà %s';
  cSCanNotAccessBlobRecord                  = 'Íåâîçìîæíî ïîëó÷èòü äîñòóï ê blob çàïèñè â ñòîëáöå %d ñ òèïîì %s';
  cSRowDataIsNotAvailable                   = 'Íåäîñòóïíû äàííûå ñòðîêè';
  cSResolverIsNotSpecified                  = 'Äëÿ äàííîãî íàáîðà äàííûõ (ResultSet) íå çàäàí Resolver';
  cSResultsetIsAlreadyOpened                = 'Íàáîð äàííûõ (Resultset) óæå îòêðûò';
  cSCanNotUpdateEmptyRow                    = 'Íåâîçìîæíî îáíîâèòü ïóñòîé ñòðîêó';
  cSCanNotUpdateDeletedRow                  = 'Íåâîçìîæíî îáíîâèòü óäàë¸ííóþ ñòðîêó';
  cSCanNotDeleteEmptyRow                    = 'Íåâîçìîæíî óäàëèòü ïóñòóþ ñòðîêó';
  cSCannotUseCommit                         = 'Íåâîçìîæíî èñïîëüçîâàòü COMMIT â AUTOCOMMIT ðåæèìå';
  cSCannotUseRollBack                       = 'Íåâîçìîæíî èñïîëüçîâàòü ROLLBACK â AUTOCOMMIT ðåæèìå';
  cSCanNotUpdateComplexQuery                = 'Íåâîçìîæíî îáíîâèòü êîìïëåêñíûé çàïðîñ ñ áîëåå ÷åì îäíîé òàáëèöåé';
  cSCanNotUpdateThisQueryType               = 'Íåâîçìîæíî îáíîâèòü ýòîò òèï çàïðîñà';
  cSDriverWasNotFound                       = 'Òðåáóåìûé äðàéâåð ÁÄ íå íàéäåí';
  cSCanNotConnectToServer                   = 'Íåâîçìîæíî ïîäêëþ÷èòüñÿ ê SQL ñåðâåðó';
  cSTableIsNotSpecified                     = 'Òàáëèöà íå çàäàíà';
  cSLiveResultSetsAreNotSupported           = 'Æèâîé íàáîð äàííûõ íå ïîääåðæèâàåòñÿ ýòèì êëàññîì';
  cSInvalidInputParameterCount              = 'Êîëè÷åñòâî âõîäíûõ ïàðàìåòðîì is ìåíüøå ÷åì îæèäàåòñÿ';
  cSIsolationIsNotSupported                 = 'Óðîâåíü èçîëÿöèè òðàíçàíêöèé íå ïîääåðæèâàåòñÿ';
  cSColumnWasNotFound                       = 'Íå íàéäåí ñòîëáåö ñ èìåíåì "%s"';
  cSWrongTypeForBlobParameter               = 'Íåâåðíûé òèï äëÿ Blob ïðàðàìåòðà';
  cSIncorrectConnectionURL                  = 'Íåâåðíûé ïóòü (URL) äëÿ ïîäêëþ÷åíèÿ: %s';
  cSUnsupportedProtocol                     = 'Íåïîääåðæèâàåìûé ïðîòîêîë: %s';
  cSUnsupportedByDriver                     = 'Äðàéâåð íå ïîääåðæèâàåò äàííóþ âîçìîæíîñòü : [%s]';

  cSConnectionIsNotOpened                   = 'Ïîäêëþ÷åíèå íå îòêðûòî';
  cSInvalidOpInAutoCommit                   = 'Íåâåðíàÿ îïåðàöèÿ â ðåæèìå àâòîïîäòâåðæäåíèÿ (AutoCommit)';
  cSInvalidOpInNonAutoCommit                = 'Íåâåðíàÿ îïåðàöèÿ â ðåæèìå ÍÅ àâòîïîäòâåðæäåíèÿ (non AutoCommit)';
  cSInvalidOpPrepare                        = 'Ïîäãîòîâêà òðàíçàíêöèè âîçìîæíà òîëüêî ïðè ïåðâîì èñïîëüçîâàíèè(!) StartTransaction';

  cSConnectionIsNotAssigned                 = 'Ïîäêëþ÷åíèÿ ê ÁÄ íå çàäàíî';
  cSQueryIsEmpty                            = 'SQL çàïðîñ ïóñò';
  cSCanNotExecuteMoreQueries                = 'Íåâîçìîæíî âûïîëíèòü áîëåå îäíîãî çàïðîñà';
  cSOperationIsNotAllowed1                  = 'Îïåðàöèÿ íå ïîääåðæèâàåòñÿ â ðåæèìå òîëüêî âïåð¸ä (FORWARD ONLY)';
  cSOperationIsNotAllowed2                  = 'Îïåðàöèÿ íå ïîääåðæèâàåòñÿ â ðåæèìå òîëüêî äëÿ ÷òåíèÿ (READ ONLY)';
  cSOperationIsNotAllowed3                  = 'Îïåðàöèÿ íå ïîääåðæèâàåòñÿ â %s ðåæèìå';
  cSOperationIsNotAllowed4                  = 'Îïåðàöèÿ íå ïîääåðæèâàåòñÿ íà çàêðûòîì íàáîðå äàííûõ';
  cSNoMoreRecords                           = 'Â íàáîðå äàííûõ (Resultset) íåò çàïèñåé';
  cSCanNotOpenResultSet                     = 'Íåâîçìîæíî îòêðûòü íàáîð äàííûõ (Resultset)';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink                            = 'Èñòî÷íèê äàííûõ (Datasource) èìååò öèêëèöåñêèå ññûëêè';
  cSBookmarkWasNotFound                     = 'Çàìåòêà (Bookmark) íå íàéäåíà';
  cSIncorrectSearchFieldsNumber             = 'Íåêîððåêòíîå ÷èñëî  Incorrect number of search field values';
  cSInvalidOperationInTrans                 = 'Íåâåðíàÿ îïåðàöèÿ â ðàìêàõ òðàíçàíêöèè';
  cSIncorrectSymbol                         = 'Íåâåðíûé ñèìâîë â ñïèñêå ïîëåé "%s".';
  cSIncorrectToken                          = 'Íåâåðíûé çíàê ïîñëå ":"';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation            = 'Âûáðàííûé óðîâåíü èçîëÿöèè òðàíçàíêöèè íå ïîääåðæèâàåòñÿ';
  cSDriverNotSupported                      = 'Äðàéâåð íå ïîääåðæèâàåòñÿ %s';
  cSPattern2Long                            = 'Îáðàçåö ñëèøêîì äëèííûé';
  cSDriverNotCapableOutParameters           = 'Äðàéâåð íå ñïîñîáåí óïðàâëÿòü ïàðàìåòðàìè';
  cSStatementIsNotAllowed                   = 'Âûðàæåíèå íå ïîääåðæèâàåòñÿ';
  cSStoredProcIsNotAllowed                  = 'Õðàíèìàÿ ïðîöåäóðà íå ðàçðåøåíà';
  cSCannotPerformOperation                  = 'Íåâîçìîæíî âûïîëíèòü îïåðàöèþ íà çàêðûòîì íàáîðå äàííûõ (Resultset)';
  cSInvalidState                            = 'Íåâåðíîå ñîñòîÿíèå';
  cSErrorConvertion                         = 'Îøèáêà ïðåîáðàçîâàíèÿ';
  cSDataTypeDoesNotSupported                = 'Òèï äàííûõ íå ïîääåðæèâàåòñÿ';
  cSUnsupportedParameterType                = 'Íåïîääåðæèâàåìûé òèï ïàðàìåòðà';
  cSUnsupportedDataType                     = 'Íåïîääåðæèâàåìûé òèï äàííûõ';
  cSErrorConvertionField                    = 'Îøèáêà êîíâåðòàöèè äëÿ ïîëÿ "%s" â SQLType "%s"';
  cSBadOCI                                  = 'Íåâåðíàÿ âåðñèÿ OCI [%s]. Íåîáõîäèìàÿ âåðñèÿ 8.0.3 èëè âûøå';
  cSConnect2AsUser                          = 'Íåâîçìîæíî ïîäêëþ÷èòüñÿ ê "%s" ïîëüçîâàòåëåì "%s"';
  cSUnknownError                            = 'Íåèçâåñòíàÿ îøèáêà';
  cSFieldNotFound1                          = 'Ïîëå "%s" íå íàéäåíî';
  cSFieldNotFound2                          = 'Ïîëå %d íå íàéäåíî';

  cSLoginPromptFailure                      = 'Íåâîçìîæíî íàéòè äèàëîã àâòîðèçàöèè ïî óìîë÷àíèÿþ. Äîáàâüòå ìîäóëü DBLogDlg â ñåêöèþ uses ãëàâíîãî ïðîãðàììíîãî ìîäóëÿ.';

  cSPropertyQuery                           = 'Ýòî ìîæåò áûòü ïîñëåäíèé çàïðîñ ïîêà ÁÄ áîëüøàÿ The Query may last a while on large databases!';
  cSPropertyTables                          = 'Ñëåäóåò îãðàíè÷èòü êàòàëîãîì(Catalog) è/èëè ñõåìîé (Schema)';
  cSPropertyColumns                         = 'Ñëåäóåò îãðàíè÷èòü êàòàëîãîì (Catalog), ñõåìîé (Schema) è/èëè òàáëèöåé (TableName).';
  cSPropertyProcedures                      = 'Ñëåäóåò îãðàíè÷èòü êàòàëîãîì(Catalog) è/èëè ñõåìîé (Schema).';
  cSPropertySequences                       = 'Ñëåäóåò îãðàíè÷èòü êàòàëîãîì(Catalog) è/èëè ñõåìîé (Schema).';
  cSPropertyExecute                         = 'Âñ¸ ðàâíî âûïîëíèòü çàïðîñ ?';

  cSFormTest                                = 'ZEOS SQL òåñò ðåäàêòîðà';
  cSButtonClose                             = '&Çàêðûòü';
  cSFormEditor                              = 'ZEOS SQL ðåäàêòîð';
  cSTabSheetSelect                          = 'Âûáîð SQL';
  cSMenuLoad                                = 'Çàãðóçèòü';
  cSMenuSave                                = 'Ñîõðàíèòü';
  cSButtonGenerate                          = '&Ñãåíåðèðîâàòü';
  cSButtonCheck                             = 'Ï&ðîâåðèòü';
  cSButtonTest                              = '&Òåñò';
  cSButtonOk                                = '&Îê';
  cSButtonCancel                            = '&Îòìåíà';
  cSTableAlias                              = 'Ï&ñåâäîíèì òàáëèöû';
  cSReplaceSQL                              = '&Çàìåíèòü SQL';
  cSDialogOpenTitle                         = 'Îòêðûòü SQL ôàéë';
  cSDialogSaveTitle                         = 'Ñîõðàíèòü SQL ôàéë';
  cSSQLEditor                               = 'SQL ðåäàêòîð';
  cSDatabaseDialog                          = 'Îòêðûòü ñóùåñòâóþùóþ ÁÄ';

  cSUpdateSQLNoResult                       = 'Â ðåçóëüòàòå îáíîâëåíèÿ (Refresh) äàííûå íå ïîëó÷åíû';
  cSUpdateSQLRefreshStatementcount          = 'Refresh çàïðîñ äîëæåí áûòü òîëüêî îäèí';

{$IFDEF FPC}
  cSNotEditing                              = 'Íàáîð äàííûõ (Dataset) íå â ðåæèìå ðåäàêòèðîâàíèÿ èëè âñòàâêè';
  cSFieldTypeMismatch                       = 'Íåñîâïàäåíèå òèïà äëÿ ïîëÿ ''%s'', îæèäàåòñÿ %s íàéäåí: %s';
  cSFieldSizeMismatch                       = 'Ðàçìåð ïîëÿ ''%s'' íå ñîâïàäàåò, îæèäàåòñÿ: %d íàéäåí: %d';
{$ENDIF}
  cSNeedField               = 'Translate: Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt                    = 'Íåóäàëîñü èíèöèàëèçèðîâàòü ïîäãîòîâëåííîå âûðàæåíèå';
  cSFailedtoPrepareStmt                     = 'Îøèáêà âûïîëíåíèÿ âûðàæåíèÿ â ïðîöåññå ïîäãîòîâêè';
  cSFailedToBindAllValues                   = 'Îøèáêà ïðè ïðå-ñâÿçûâàíèèè çíà÷åíèé';
  cSAttemptExecOnBadPrep                    = 'Ïîïûòêà âûïîëíèòü âûðàæåíèå äî óñïåøíîé ïîäãîòîâêè.';
  cSBindingFailure                          = 'Îøèáêà ïðè ñâÿçûâàíèè ïàðàìåòðà';
  cSPreparedStmtExecFailure                 = 'Íåóäàëîñü âûïîëíèòü ïîäãîòîâëåííîå âûðàæåíèå';
  cSBoundVarStrIndexMissing                 = 'Îãðàíè÷åíèå íà òåêñò ñ èíäåêñîì "%s" íå ñóùåñòâóåò';
  cSBindVarOutOfRange                       = 'Èíäåêñ îãðàíè÷åíèÿ âûøåë çà ãðàíèöû : %d';
  cSFailedToBindResults                     = 'Íåóäàëîñü ñâÿçàòü(bind) ðåçóëüòàò âûïîëíåíèÿ';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

  cSRefreshRowOnlySupportedWithUpdateObject = 'Ìåòîä îáíîâëåíèÿ ñòðîêè (RefreshRow) ïîääåðæèâàåòñÿ òîëüêî ïðè îáíîâëåíèè îáúåêòà';
  cSMustBeInBrowseMode                      = 'Îïåðàöèÿ ïîääåðæèâàåò òîëüêî â ðåæèìå ïðîñìîòðà (dsBROWSE)';

  cSUnKnownParamDataType                    = 'Íåèçâåñòíûé òèïà ïàðàìåòðà (Param.DataType)';
  //--- end added by ORMADA ----------------------------------------------------
  cSFieldReadOnly          = 'Translate : Readonly field can''t be assigned a value: %d';
  cSInvalidUpdateCount     = 'Translate : %d record(s) updated. Only one record should have been updated.';

  cSRowBufferWidthExceeded ='Translate: Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
{$ELSE}

//--- added by Petr Stasiak - pestasoft.com ------------------------------------
{$IFDEF CZECH}
  cSSQLError1 = 'SQL chyba: %s';
  cSSQLError2 = 'SQL chyba: %s kód: %d';
  cSSQLError3 = 'SQL chyba: %s kód: %d SQL: %s';
  cSSQLError4 = 'SQL chyba: %s kód: %d Hlášení: %s';

  cSListCapacityError = 'Kapacita seznamu je mimo rozsah (%d)';
  cSListCountError = 'Poèet seznamù je mimo rozsah (%d)';
  cSListIndexError = 'Index v seznamu je mimo rozsah (%d)';

  cSClonningIsNotSupported = 'Klonování není v této tøídì podporováno';
  cSImmutableOpIsNotAllowed = 'Tato operace není povolena na nemìnitelné "collections"';
  cSStackIsEmpty = 'Zásobník je prázdný';
  cSVariableWasNotFound = 'Promìná "%s" neexistuje';
  cSFunctionWasNotFound = 'Funkce "%s" neexistuje';
  cSInternalError = 'Interní chyba';
  cSSyntaxErrorNear = 'Chybná syntaxe "%s"';
  cSSyntaxError = 'Chybná syntaxe';
  cSUnknownSymbol = 'Neznámý symbol "%s"';
  cSUnexpectedExprEnd = 'Neoèekávaný konec výrazu';
  cSRightBraceExpected = ') oèekáván(o/a/y)';
  cSParametersError = '%d parametrù oèekáváno, ale %d existuje';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Je oèekáváno více, než 2 parametry';
  cSInvalidVarByteArray = 'Nesprávný VarByte array';
  cSVariableAlreadyExists = 'Promìná "%s" již existuje';
  cSTypesMismatch = 'Nesouhlasné typy';
  cSUnsupportedVariantType = 'Nepodporovaný typ variant';
  cSUnsupportedOperation = 'Nepodporovaná operace';

  cSTokenizerIsNotDefined = 'Není definován "Tokenizer"';
  cSLibraryNotFound = 'Neexistuje dll knihovna(y): %s';
  cSEncodeDateIsNotSupported = 'Tato verze nepodporuje isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Tato verze nepodporuje isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Tato verze nepodporuje isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Tato verze nepodporuje isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Tato verze nepodporuje isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Tato verze nepodporuje isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Nelze získat data "Resultset"';
  cSRowBufferIsNotAssigned = 'Není pøiøazen øádkový buffer';
  cSColumnIsNotAccessable = 'Sloupec s indexem %d není pøístupný';
  cSConvertionIsNotPossible = 'Pøevod sloupce %d  není možný z %s na %s';
  cSCanNotAccessBlobRecord = 'Nelze pøistupovat k blob záznamu ze zloupce %d pøes typ %s';
  cSRowDataIsNotAvailable = 'Øádková data nejsou pøístupná';
  cSResolverIsNotSpecified = 'Není specifikován "rozkladaè" pro tento výsledek';
  cSResultsetIsAlreadyOpened = '"Resultset" byl již otevøen';
  cSCanNotUpdateEmptyRow = 'Nelze aktualizovat prázdný øádek';
  cSCanNotUpdateDeletedRow = 'Nelze aktualizovat smazaný øádek';
  cSCanNotDeleteEmptyRow = 'Nelze vymazat prázdný øádek';
  cSCannotUseCommit = 'Nepoužívejte COMMIT v módu AUTOCOMMIT';
  cSCannotUseRollBack = 'Nelze použít ROLLBACK v AUTOCOMMIT módu';
  cSCanNotUpdateComplexQuery = 'Nelze aktualizovat komplexní dotaz pro více, než jednu tabulku';
  cSCanNotUpdateThisQueryType = 'Nelze aktualizovat tento typ dotazu';
  cSDriverWasNotFound = 'Požadovaný databázový ovladaè nenalezen';
  cSCanNotConnectToServer = 'Nezdaøilo se pøipojení k SQL serveru';
  cSTableIsNotSpecified = 'Tabulka není specifikována';
  cSLiveResultSetsAreNotSupported = '"Živý" dotaz není podporován v této tøídì';
  cSInvalidInputParameterCount = 'Poèet vstupních parametrù neodpovídá oèekávanému poètu';
  cSIsolationIsNotSupported = 'Míra izolace transakce není podporována';
  cSColumnWasNotFound = 'Sloupec s názvem "%s" neexistuje';
  cSWrongTypeForBlobParameter = 'Nesprávný typ pro Blob parametr';
  cSIncorrectConnectionURL = 'Nesprávný tvar URL adresy: %s';
  cSUnsupportedProtocol = 'Nepodporovaný protokol: %s';
  cSUnsupportedByDriver    = 'Ovladaè nepodporuje tuto vlastnost: [%s]';

  cSConnectionIsNotOpened = 'Spojení není otevøeno';
  cSInvalidOpInAutoCommit = 'Nesprávná operace v módu AutoCommit';
  cSInvalidOpInNonAutoCommit = 'Nesprávná operace v módu NE AutoCommit';
  cSInvalidOpPrepare = '"Prepare" transakce je možné pouze jako první! Starttransaction';

  cSConnectionIsNotAssigned = 'Není pøiøazen komponent "connection"';
  cSQueryIsEmpty = 'SQL dotaz je prázdný';
  cSCanNotExecuteMoreQueries = 'Nelze spustit více, než 1 dotaz';
  cSOperationIsNotAllowed1 = 'Operace není povolena v módu "FORWARD ONLY"';
  cSOperationIsNotAllowed2 = 'Operace není povolena v módu "READ ONLY"';
  cSOperationIsNotAllowed3 = 'Operace není povolena v módu "%s"';
  cSOperationIsNotAllowed4 = 'Operace není povolena pro zavøený zdroj dat (dataset)';
  cSNoMoreRecords = 'Nejsou další záznamy';
  cSCanNotOpenResultSet = 'Nelze otevøít výsledek dotazu';
  cSCanNotOpenDataSetWhenDestroying ='Translate : Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource vytváøí cyklický dotaz';
  cSBookmarkWasNotFound = 'Záložka neexistuje';
  cSIncorrectSearchFieldsNumber = 'Nesprávný poèet vyhledávaných položek';
  cSInvalidOperationInTrans = 'Nesprávná operace v explicitním transakèním módu';
  cSIncorrectSymbol = 'Nesprávný symbol v seznamu položek "%s".';
  cSIncorrectToken = 'Za ":" následuje nesprávný znak';
  cSIncorrectParamChar = 'TRANSLATE : Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Vybraná míra izolace transakcí není podporována';
  cSDriverNotSupported = 'Ovladaè %s není podporován';
  cSPattern2Long = 'Pattern je pøíliš dlouhý';
  cSDriverNotCapableOutParameters = 'Ovladaè není schopen pøijímat parametry';
  cSStatementIsNotAllowed = 'Pøíkaz není povolen';
  cSStoredProcIsNotAllowed = '"stored proc" není povolena';
  cSCannotPerformOperation = 'Nelze provést operaci na uzavøením výsledku dotazu (Resultset)';
  cSInvalidState = 'Nesprávný stav';
  cSErrorConvertion = 'Chyba pøevodu';
  cSDataTypeDoesNotSupported = 'Tento typ dat není podporován';
  cSUnsupportedParameterType = 'Nepodporovaný typ parametru';
  cSUnsupportedDataType = 'Nepodporovaný typ dat';
  cSErrorConvertionField = 'Chyba pøevodu sloupce "%s" na SQLTyp "%s"';
  cSBadOCI = 'Špatné verze OCI [%s]. Je vyžadována 8.0.3 nebo starší';
  cSConnect2AsUser = 'Pøipojit k "%s" jako "%s"';
  cSUnknownError = 'Neznámá chyba';
  cSFieldNotFound1 = 'Sloupec "%s" neexistuje';
  cSFieldNotFound2 = 'Sloupec %d neexistuje';

  cSLoginPromptFailure = 'Nelze najít výchozí pøihlašovací dialog. Prosím pøidejte DBLogDlg do sekce USES vašeho zdrojového souboru.';

  cSPropertyQuery = 'Dotaz mùže být poslední u vlelkých databází!';
  cSPropertyTables = 'Mìlo by být limitováno katalogen a/nebo schématem.';
  cSPropertyColumns = 'Mìlo by být limitováno katalogem, schématem a/nebo názvem tabulky.';
  cSPropertyProcedures = 'Mìlo by být limitováno katalogen a/nebo schématem.';
  cSPropertySequences = 'Mìlo by být limitováno katalogen a/nebo schématem.';
  cSPropertyExecute = 'Má se dotaz pøesto vykonat?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Zavøít';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Naèíst';
  cSMenuSave = 'Uložit';
  cSButtonGenerate = '&Generovat';
  cSButtonCheck = '&Kontrola';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'Z&rušit';
  cSTableAlias = '&Alias tabulky';
  cSReplaceSQL = 'Nah&radit SQL';
  cSDialogOpenTitle = 'Otevøít SQL soubor';
  cSDialogSaveTitle = 'Uložit SQL soubor';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Otevøít existující databázi';

  cSUpdateSQLNoResult = 'Update Refresh SQL nevrátilo žádný výsledek';
  cSUpdateSQLRefreshStatementcount ='Poèet Update Refresh SQL pøíkazù musí být 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset není v editaèním (edit), ani vkládacím (insert) režimu';
  cSFieldTypeMismatch = 'Nesprávný typ pro sloupec ''%s'', oèekáváno: %s aktuální: %s';
  cSFieldSizeMismatch = 'Nesprávná velikost sloupce ''%s'', oèekáváno: %d aktuální: %d';
  {$ENDIF}
  cSNeedField               = 'Sloupce %s je požadován, ale nezadán.';

  cSFailedtoInitPrepStmt   = 'Pøipravovaný pøíkaz nelze inicializovat';
  cSFailedtoPrepareStmt    = 'Pøíkaz selhal bìhem pøípravy procesu';
  cSFailedToBindAllValues  = 'Aplikace zkolabovala pøed pøípravou všech hodnot';
  cSAttemptExecOnBadPrep   = 'Pokoušíte sespustit pøíkaz pøed dokonèením jeho pøípravy.';
  cSBindingFailure         = 'Chyba pøi získávání sady parametrù';
  cSPreparedStmtExecFailure = 'Pøipravovaný pøíkaz selhal pøi vykonávání';
  cSBoundVarStrIndexMissing = 'Index textové promìné "%s" neexistuje';
  cSBindVarOutOfRange      = 'Index promené je mimo rozsah: %d';
  cSFailedToBindResults    = 'Aplikace selhala pøi získávání výsledkù dotazu';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'Metoda "refreshrow" je podporována pouze v "update object"';
  cSMustBeInBrowseMode = 'Operace je povolena pouze ve stavu dsBROWSE';

  cSUnKnownParamDataType = 'Neznámý parametr.typ dat (Param.DataType)';
  cSFieldReadOnly        = 'Sloupec pouze pro ètení nemùže být pøiøazen k hodnotì: %d';
  cSInvalidUpdateCount     = '%d záznam(ù) aktualizováno. Pouze jeden záznam byl zmìnìn.';

  cSRowBufferWidthExceeded ='Translate: Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';
//--- end added by Petr Stasiak - pestasoft.com ------------------------------------

{$ELSE}

//--- added by pawelsel --------------------------------------------------------
{$IFDEF POLISH}
  cSSQLError1 = 'B³¹d SQL: %s';
  cSSQLError2 = 'B³¹d SQL: %s Kod: %d';
  cSSQLError3 = 'B³¹d SQL: %s Kod: %d SQL: %s';
  cSSQLError4 = 'B³¹d SQL: %s Kod: %d Komunikat: %s';

  cSListCapacityError = 'Przekroczona pojemnoœæ listy (%d)';
  cSListCountError = 'Licznik listy poza zakresem (%d)';
  cSListIndexError = 'Indeks listy poza zakresem (%d)';

  cSClonningIsNotSupported = 'Ta klasa nie obs³uguje klonowania';
  cSImmutableOpIsNotAllowed = 'Niedozwolona operacja na niezmienialnych kolekcjach';
  cSStackIsEmpty = 'Stos jest pusty';
  cSVariableWasNotFound = 'Nie znaleziono zmiennej "%s"';
  cSFunctionWasNotFound = 'Nie znaleziono funkcji "%s"';
  cSInternalError = 'B³¹d wewnêtrzny';
  cSSyntaxErrorNear = 'B³¹d sk³adni przy "%s"';
  cSSyntaxError = 'B³¹d sk³adni';
  cSUnknownSymbol = 'Nieznany symbol "%s"';
  cSUnexpectedExprEnd = 'Nieoczekiwany koniec wyra¿enia';
  cSRightBraceExpected = 'Oczekiwano znaku )';
  cSParametersError = 'Oczekiwana iloœæ parametrów: %d, znaleziono: %d';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'Oczekiwano wiêcej ni¿ dwa parametry';
  cSInvalidVarByteArray = 'B³êdna tablica VarByte';
  cSVariableAlreadyExists = 'Zmienna "%s" ju¿ istnieje';
  cSTypesMismatch = 'Niezgodnoœæ typów';
  cSUnsupportedVariantType = 'Nieznany typ danych';
  cSUnsupportedOperation = 'Nieznana operacja';

  cSTokenizerIsNotDefined = 'Nie zdefiniowano tokenizera';
  cSLibraryNotFound = 'Nie znaleziono ¿adnej z bibliotek dynamicznych: %s';
  cSEncodeDateIsNotSupported = 'Ta wersja nie obs³uguje isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'Ta wersja nie obs³uguje isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'Ta wersja nie obs³uguje isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'Ta wersja nie obs³uguje isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'Ta wersja nie obs³uguje isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'Ta wersja nie obs³uguje isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Nie mo¿na pobraæ danych wynikowych';
  cSRowBufferIsNotAssigned = 'Nie przypisano bufora wiersza';
  cSColumnIsNotAccessable = 'Kolumna o numerze %d jest niedostêpna';
  cSConvertionIsNotPossible = 'Konwersja kolumny o numerze %d z %s na %s jest niemo¿liwa';
  cSCanNotAccessBlobRecord = 'Brak dostêpu do rekordu typu blob w kolumnie %d z typem %s';
  cSRowDataIsNotAvailable = 'Dane wiersza s¹ niedostêpne';
  cSResolverIsNotSpecified = 'Ten ResultSet nie ma okreœlonego Resolver-a';
  cSResultsetIsAlreadyOpened = 'ResultSet jest ju¿ otwarty';
  cSCanNotUpdateEmptyRow = 'Nie mo¿na aktualizowaæ pustego wiersza';
  cSCanNotUpdateDeletedRow = 'Nie mo¿na aktualizowaæ usuniêtego wiersza';
  cSCanNotDeleteEmptyRow = 'Nie mo¿na usun¹æ pustego wiersza';
  cSCannotUseCommit = 'Nie mo¿na u¿yæ COMMIT w trybie AUTOCOMMIT';
  cSCannotUseRollBack = 'Nie mo¿na u¿yæ ROLLBACK w trybie AUTOCOMMIT';
  cSCanNotUpdateComplexQuery = 'Nie mo¿na aktualizowaæ zapytania z³o¿onego z wiêcej ni¿ jednej tabeli';
  cSCanNotUpdateThisQueryType = 'Nie mo¿na aktualizowaæ tego typu zapytania';
  cSDriverWasNotFound = 'Nie znaleziono wymaganego sterownika bazy danych';
  cSCanNotConnectToServer = 'Nie mo¿na po³¹czyæ siê z serwerem SQL';
  cSTableIsNotSpecified = 'Nie okreœlono tabeli';
  cSLiveResultSetsAreNotSupported = '"Live query" nie jest obs³ugiwane przez t¹ klasê';
  cSInvalidInputParameterCount = 'Liczba parametrów wejœciowych jest mniejsza ni¿ oczekiwana';
  cSIsolationIsNotSupported = 'Poziom izolacji transakcji nie jest obs³ugiwany';
  cSColumnWasNotFound = 'Nie znaleziono kolumny o nazwie "%s"';
  cSWrongTypeForBlobParameter = 'B³êdny typ parametru Blob';
  cSIncorrectConnectionURL = 'B³êdny URL po³¹czenia: %s';
  cSUnsupportedProtocol = 'Nieobs³ugiwany protokó³: %s';
  cSUnsupportedByDriver    = 'Sterownik nie obs³uguje tej w³aœciwoœci natywnie: [%s]';

  cSConnectionIsNotOpened = 'Jeszcze nie nawi¹zano po³¹czenia';
  cSInvalidOpInAutoCommit = 'B³êdna operacja w trybie AutoCommit';
  cSInvalidOpInNonAutoCommit = 'B³êdna operacja przy wy³¹czonym AutoCommit';
  cSInvalidOpPrepare = 'Przygotowanie transakcji mo¿liwe jest tylko przy pierwszym(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Nie przypisano komponentu po³¹czenia do bazy danych';
  cSQueryIsEmpty = 'Zapytanie SQL jest puste';
  cSCanNotExecuteMoreQueries = 'Nie mo¿na wykonaæ wiêcej ni¿ jednego zapytania';
  cSOperationIsNotAllowed1 = 'Niedozwolona operacja w trybie FORWARD ONLY';
  cSOperationIsNotAllowed2 = 'Niedozwolona operacja w trybie READ ONLY';
  cSOperationIsNotAllowed3 = 'Niedozwolona operacja w trybie %s';
  cSOperationIsNotAllowed4 = 'Niedozwolona operacja przy zamkniêtym Ÿródle danych';
  cSNoMoreRecords = 'Nie ma ju¿ wiêcej rekordów wynikowych';
  cSCanNotOpenResultSet = 'Nie mo¿na otworzyæ danych wynikowych';
  cSCanNotOpenDataSetWhenDestroying ='Nie mo¿na otworzyæ dataset gdy componentstate to dsDestroying';
  cSCircularLink = 'Datasource tworzy powi¹zanie cykliczne';
  cSBookmarkWasNotFound = 'Nie znaleziono zak³adki (Bookmark)';
  cSIncorrectSearchFieldsNumber = 'B³êdna liczba pól do wyszukiwania';
  cSInvalidOperationInTrans = 'B³êdna operacja w trybie transakcji';
  cSIncorrectSymbol = 'B³êdny symbol w liœcie pól "%s".';
  cSIncorrectToken = 'B³êdny wyraz za ":"';
  cSIncorrectParamChar = 'B³êdna wartoœæ dla ParamChar';

  cSSelectedTransactionIsolation = 'Wybrany poziom izolacji transakcji nie jest obs³ugiwany';
  cSDriverNotSupported = 'Nie obs³ugiwany sterownik %s';
  cSPattern2Long = 'Wzorzec jest zbyt d³ugi';
  cSDriverNotCapableOutParameters = 'Sterownik nie potrafi obs³u¿yæ parametrów';
  cSStatementIsNotAllowed = 'Niedozwolone wyra¿enie';
  cSStoredProcIsNotAllowed = 'Niedozwolona procedura sk³adowana';
  cSCannotPerformOperation = 'Nie mo¿na wykonaæ operacji na zamkniêtym zbiorze danych';
  cSInvalidState = 'B³êdny stan';
  cSErrorConvertion = 'B³¹d konwersji';
  cSDataTypeDoesNotSupported = 'Nieobs³ugiwany typ danych';
  cSUnsupportedParameterType = 'Nieobs³ugiwany typ parametru';
  cSUnsupportedDataType = 'Nieobs³ugiwany typ danych';
  cSErrorConvertionField = 'B³¹d konwersji pola "%s" na SQLType "%s"';
  cSBadOCI = 'Z³a wersja OCI [%s]. Wymagana wersja 8.0.3 lub starsza';
  cSConnect2AsUser = 'Po³¹czenie z "%s" jako u¿ytkownik "%s"';
  cSUnknownError = 'Nieznany b³¹d';
  cSFieldNotFound1 = 'Nie znaleziono pola "%s"';
  cSFieldNotFound2 = 'Nie znaleziono pola %d';

  cSLoginPromptFailure = 'Nie znaleziono domyœlnego dialogu logowania. Proszê dodaæ DBLogDlg do sekcji uses g³ównego pliku aplikacji.';

  cSPropertyQuery = 'Zapytanie mo¿e chwilê potrwaæ na wiêkszej bazie danych!';
  cSPropertyTables = 'Powinieneœ uœciœliæ Katalog i/lub Schemat.';
  cSPropertyColumns = 'Powinieneœ uœciœliæ Katalog, Schemat i/lub Nazwê Tabeli.';
  cSPropertyProcedures = 'Powinieneœ uœciœliæ Katalog i/lub Schemat.';
  cSPropertySequences = 'Powinieneœ uœciœliæ Katalog i/lub Schemat.';
  cSPropertyExecute = 'Czy mimo to wykonaæ zapytanie?';

  cSFormTest = 'Test Edytora SQL ZEOS';
  cSButtonClose = '&Zamknij';
  cSFormEditor = 'Edytor SQL ZEOS';
  cSTabSheetSelect = 'Wybór SQL';
  cSMenuLoad = '£aduj';
  cSMenuSave = 'Zapisz';
  cSButtonGenerate = '&Generuj';
  cSButtonCheck = '&SprawdŸ';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = 'A&nuluj';
  cSTableAlias = '&Alias tabeli';
  cSReplaceSQL = 'Za&mieñ SQL';
  cSDialogOpenTitle = 'Otwórz plik SQL';
  cSDialogSaveTitle = 'Zapisz plik SQL';
  cSSQLEditor = 'Edytor SQL';
  cSDatabaseDialog = 'Otwórz istniej¹c¹ bazê';

  cSUpdateSQLNoResult = 'Update Refresh SQL nie zwróci³o ¿adnych danych';
  cSUpdateSQLRefreshStatementcount ='Wyra¿enie Update Refresh SQL musi zwróciæ 1 rekord danych';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset nie jest w trybie "edit" lub "insert"';
  cSFieldTypeMismatch = 'Niezgodnoœæ typów dla pola ''%s'', oczekiwano: %s otrzymano: %s';
  cSFieldSizeMismatch = 'Niezgodnoœæ rozmiarów pola ''%s'', oczekiwano: %d otrzymano: %d';
  {$ENDIF}
  cSNeedField               = 'Pole %s jest wymagane.';

  cSFailedtoInitPrepStmt   = 'Nie uda³o siê zainicjalizowaæ przygotowanego zapytania';
  cSFailedtoPrepareStmt    = 'B³¹d w wyra¿eniu podczas procesu przygotowania';
  cSFailedToBindAllValues  = 'B³¹d aplikacji podczas przypisywania danych';
  cSAttemptExecOnBadPrep   = 'Próba uruchomienia wyra¿enia przed zakoñczeniem przygotowywania.';
  cSBindingFailure         = 'B³¹d przypisywania zbioru parametrów';
  cSPreparedStmtExecFailure = 'B³¹d wykonania przygotowanego zapytania';
  cSBoundVarStrIndexMissing = 'Nie istnieje zmienna licznikowa "%s"';
  cSBindVarOutOfRange      = 'Wartoœæ zmiennej licznikowej poza zakresem: %d';
  cSFailedToBindResults    = 'B³¹d aplikacji podczas ³¹czenia do wyników zapytania';
  cSPreviousResultStillOpen = 'Poprzedni zbiór wynikowy tego wyra¿enia jest nadal otwarty';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'Metoda refreshrow jest obs³ugiwana tylko przez obiekt typu "update"';
  cSMustBeInBrowseMode = 'Operacja jest dozwolona tylko w stanie dsBROWSE';

  cSUnKnownParamDataType = 'Nieznany Param.DataType';
  cSFieldReadOnly        = 'Nie mo¿na przypisaæ do pola tylko do odczytu wartoœci: %d';
  cSInvalidUpdateCount     = 'Liczba zaktualizowanych rekordów: %d. tylko jeden rekord powinien byæ zaktualizowany.';

  cSRowBufferWidthExceeded ='Przekroczono rozmiar bufora. Spróbuj u¿yæ mniejszej liczby kolumn lub d³u¿szych kolumn w zapytaniu SQL.';

  csCantFilterOnComputedColumns = 'Translate: Filtering a data set on computed fields and lookup fields is not supported.';

{$ELSE} // default: ENGLISH

  cSSQLError1 = 'SQL Error: %s';
  cSSQLError2 = 'SQL Error: %s Code: %d';
  cSSQLError3 = 'SQL Error: %s Code: %d SQL: %s';
  cSSQLError4 = 'SQL Error: %s Code: %d Message: %s';

  cSListCapacityError = 'List capacity out of bounds (%d)';
  cSListCountError = 'List count out of bounds (%d)';
  cSListIndexError = 'List index out of bounds (%d)';

  cSClonningIsNotSupported = 'Clonning is not supported by this class';
  cSImmutableOpIsNotAllowed = 'The operation is not allowed on not changeable collections';
  cSStackIsEmpty = 'Stack is empty';
  cSVariableWasNotFound = 'Variable "%s" was not found';
  cSFunctionWasNotFound = 'Function "%s" was not found';
  cSInternalError = 'Internal error';
  cSSyntaxErrorNear = 'Syntax error near "%s"';
  cSSyntaxError = 'Syntax error';
  cSUnknownSymbol = 'Unknown symbol "%s"';
  cSUnexpectedExprEnd = 'Unexpected end of expression';
  cSRightBraceExpected = ') expected';
  cSParametersError = '%d parameters were expected but %d were found';
  cSParamValueExceeded = 'value of param %d exceeded';
  cSExpectedMoreParams = 'More than two parameters are expected';
  cSInvalidVarByteArray = 'Invalid VarByte array';
  cSVariableAlreadyExists = 'Variable "%s" already exists';
  cSTypesMismatch = 'Types mismatch';
  cSUnsupportedVariantType = 'Unsupported variant type';
  cSUnsupportedOperation = 'Unsupported operation';

  cSTokenizerIsNotDefined = 'Tokenizer is not defined';
  cSLibraryNotFound = 'None of the dynamic libraries can be found or is not loadable: %s !'#10#13'Use TZConnection.LibraryLocation if the location is invalid.';
  cSEncodeDateIsNotSupported = 'This version does not support isc_encode_sql_date';
  cSEncodeTimeIsNotSupported = 'This version does not support isc_encode_sql_time';
  cSEncodeTimestampIsNotSupported = 'This version does not support isc_encode_sql_timestamp';
  cSDecodeDateIsNotSupported = 'This version does not support isc_decode_sql_date';
  cSDecodeTimeIsNotSupported = 'This version does not support isc_decode_sql_time';
  cSDecodeTimestampIsNotSupported = 'This version does not support isc_decode_sql_timestamp';

  cSCanNotRetrieveResultSetData = 'Cannot retrieve Resultset data';
  cSRowBufferIsNotAssigned = 'Row buffer is not assigned';
  cSColumnIsNotAccessable = 'Column with index %d is not accessable';
  cSConvertionIsNotPossible = 'Convertion is not possible for column %d from %s to %s';
  cSCanNotAccessBlobRecord = 'Cannot access blob record in column %d with type %s';
  cSRowDataIsNotAvailable = 'Row data is not available';
  cSResolverIsNotSpecified = 'Resolver is not specified for this ResultSet';
  cSResultsetIsAlreadyOpened = 'Resultset is already open';
  cSCanNotUpdateEmptyRow = 'Cannot update an empty row';
  cSCanNotUpdateDeletedRow = 'Cannot update a deleted row';
  cSCanNotDeleteEmptyRow = 'Cannot delete an empty row';
  cSCannotUseCommit = 'You cannot use COMMIT in AUTOCOMMIT mode';
  cSCannotUseRollBack = 'You cannot use ROLLBACK in AUTOCOMMIT mode';
  cSCanNotUpdateComplexQuery = 'Cannot update a complex query with more then one table';
  cSCanNotUpdateThisQueryType = 'Cannot update this query type';
  cSDriverWasNotFound = 'Requested database driver was not found';
  cSCanNotConnectToServer = 'Cannot connect to SQL server';
  cSTableIsNotSpecified = 'Table is not specified';
  cSLiveResultSetsAreNotSupported = 'Live query is not supported by this class';
  cSInvalidInputParameterCount = 'Input parameter count is less then expected';
  cSIsolationIsNotSupported = 'Transaction isolation level is not supported';
  cSColumnWasNotFound = 'Column with name "%s" was not found';
  cSWrongTypeForBlobParameter = 'Wrong type for Blob parameter';
  cSIncorrectConnectionURL = 'Incorrect connection URL: %s';
  cSUnsupportedProtocol = 'Unsupported protocol: %s';
  cSUnsupportedByDriver    = 'Driver can not support this feature natively: [%s]';

  cSConnectionIsNotOpened = 'Connection is not opened yet';
  cSInvalidOpInAutoCommit = 'Invalid operation in AutoCommit mode';
  cSInvalidOpInNonAutoCommit = 'Invalid operation in non AutoCommit mode';
  cSInvalidOpPrepare = 'Prepare transaction only possible on matching first(!) Starttransaction';

  cSConnectionIsNotAssigned = 'Database connection component is not assigned';
  cSQueryIsEmpty = 'SQL Query is empty';
  cSCanNotExecuteMoreQueries = 'Cannot execute more then one query';
  cSOperationIsNotAllowed1 = 'Operation is not allowed in FORWARD ONLY mode';
  cSOperationIsNotAllowed2 = 'Operation is not allowed in READ ONLY mode';
  cSOperationIsNotAllowed3 = 'Operation is not allowed in %s mode';
  cSOperationIsNotAllowed4 = 'Operation is not allowed for closed dataset';
  cSNoMoreRecords = 'No more records in the Resultset';
  cSCanNotOpenResultSet = 'Can not open a Resultset';
  cSCanNotOpenDataSetWhenDestroying ='Cannot open a dataset when the componentstate is dsDestroying';
  cSCircularLink = 'Datasource makes a circular link';
  cSBookmarkWasNotFound = 'Bookmark was not found';
  cSIncorrectSearchFieldsNumber = 'Incorrect number of search field values';
  cSInvalidOperationInTrans = 'Invalid operation in explicit transaction mode';
  cSIncorrectSymbol = 'Incorrect symbol in field list "%s".';
  cSIncorrectToken = 'Incorrect token followed by ":"';
  cSIncorrectParamChar = 'Invalid value for ParamChar';

  cSSelectedTransactionIsolation = 'Selected transaction isolation level is not supported';
  cSDriverNotSupported = 'Driver not supported %s';
  cSPattern2Long = 'Pattern is too long';
  cSDriverNotCapableOutParameters = 'Driver is not capable to handle parameters';
  cSStatementIsNotAllowed = 'Statement is not allowed';
  cSStoredProcIsNotAllowed = 'The stored proc is not allowed';
  cSCannotPerformOperation = 'Can not perform operation on closed Resultset';
  cSInvalidState = 'Invalid state';
  cSErrorConvertion = 'Convertion error';
  cSDataTypeDoesNotSupported = 'Data type is not supported';
  cSUnsupportedParameterType = 'Unsupported parameter type';
  cSUnsupportedDataType = 'Unsupported data type';
  cSErrorConvertionField = 'Conversion error for field "%s" to SQLType "%s"';
  cSBadOCI = 'Bad OCI version [%s]. Version 8.0.3 or older is required';
  cSConnect2AsUser = 'Connect to "%s" as user "%s"';
  cSUnknownError = 'Unknown error';
  cSFieldNotFound1 = 'Field "%s" was not found';
  cSFieldNotFound2 = 'Field %d was not found';

  cSLoginPromptFailure = 'Can not find default login prompt dialog. Please add DBLogDlg to the uses section of your main file.';

  cSPropertyQuery = 'The Query may last a while on large databases!';
  cSPropertyTables = 'You should limit it by Catalog and/or Schema.';
  cSPropertyColumns = 'You should limit it by Catalog, Schema and/or TableName.';
  cSPropertyProcedures = 'You should limit it by Catalog and/or Schema.';
  cSPropertySequences = 'You should limit it by Catalog and/or Schema.';
  cSPropertyExecute = 'Should the Query be executed anyway?';

  cSFormTest = 'ZEOS SQL Editor Test';
  cSButtonClose = '&Close';
  cSFormEditor = 'ZEOS SQL Editor';
  cSTabSheetSelect = 'Select SQL';
  cSMenuLoad = 'Load';
  cSMenuSave = 'Save';
  cSButtonGenerate = '&Generate';
  cSButtonCheck = 'C&heck';
  cSButtonTest = '&Test';
  cSButtonOk = '&OK';
  cSButtonCancel = '&Cancel';
  cSTableAlias = 'T&able alias';
  cSReplaceSQL = '&Replace SQL';
  cSDialogOpenTitle = 'Open SQL File';
  cSDialogSaveTitle = 'Save SQL File';
  cSSQLEditor = 'SQL Editor';
  cSDatabaseDialog = 'Open existing database';

  cSUpdateSQLNoResult = 'Update Refresh SQL delivered no resultset';
  cSUpdateSQLRefreshStatementcount ='Update Refresh SQL Statement count must be 1';

  {$IFDEF FPC}
  cSNotEditing = 'Dataset not in edit or insert mode';
  cSFieldTypeMismatch = 'Type mismatch for field ''%s'', expecting: %s actual: %s';
  cSFieldSizeMismatch = 'Size mismatch for field ''%s'', expecting: %d actual: %d';
  {$ENDIF}
  cSNeedField               = 'Field %s is required, but not supplied.';

  cSFailedtoInitPrepStmt   = 'Prepared statement failed to initialize';
  cSFailedtoPrepareStmt    = 'Statement failed during prepare process';
  cSFailedToBindAllValues  = 'Application failed to pre-bind all values';
  cSAttemptExecOnBadPrep   = 'Attempt made to execute a statement before a successful preparation.';
  cSBindingFailure         = 'Failed to bind parameter set';
  cSPreparedStmtExecFailure = 'Prepared statement failed to execute';
  cSBoundVarStrIndexMissing = 'Bound variable text index "%s" does not exist';
  cSBindVarOutOfRange      = 'Bound variable index out of range: %d';
  cSFailedToBindResults    = 'Application failed to bind to the result set';
  cSPreviousResultStillOpen = 'Previous resultset of this statement is still open';

//FOS+ 07112006
  cSRefreshRowOnlySupportedWithUpdateObject = 'The refreshrow method is only supported with an update object';
  cSMustBeInBrowseMode = 'Operation is only allowed in dsBROWSE state';

  cSUnKnownParamDataType = 'Unknown Param.DataType';
  cSFieldReadOnly        = 'Readonly field can''t be assigned a value: %s';
  cSInvalidUpdateCount     = '%d record(s) updated. Only one record should have been updated.';

  cSRowBufferWidthExceeded ='Row buffer width exceeded. Try using fewer or longer columns in SQL query.';

  csCantFilterOnComputedColumns = 'Filtering a data set on computed fields and lookup fields is not supported.';

{$ENDIF} // POLISH

{$ENDIF} // CZECH

{$ENDIF} // RUSSIAN

{$ENDIF}   // INDONESIAN <--- added by tohenk

{$ENDIF}   // ROMANA

{$ENDIF} //SPANISH

{$ENDIF} // GERMAN

{$ENDIF} // DUTCH

{$ENDIF} // PORTUGUESE
{$ENDIF FRENCH}
type
  TMessageToRaw = function(const AMessage: String; Const RawCP: Word): RawByteString;

var
  MessageCodePage: Word;
  SSQLError1: String;
  SSQLError2: String;
  SSQLError3: String;
  SSQLError4: String;

  SListCapacityError: String;
  SListCountError: String;
  SListIndexError: String;

  SClonningIsNotSupported: String;
  SImmutableOpIsNotAllowed: String;
  SStackIsEmpty: String;
  SVariableWasNotFound: String;
  SFunctionWasNotFound: String;
  SInternalError: String;
  SSyntaxErrorNear: String;
  SSyntaxError: String;
  SUnknownSymbol: String;
  SUnexpectedExprEnd: String;
  SRightBraceExpected: String;
  SParametersError: String;
  SParamValueExceeded: String;
  SExpectedMoreParams: String;
  SInvalidVarByteArray: String;
  SVariableAlreadyExists: String;
  STypesMismatch: String;
  SUnsupportedVariantType: String;
  SUnsupportedOperation: String;

  STokenizerIsNotDefined: String;
  SLibraryNotFound: String;
  SLibraryNotCompatible: String;
  SEncodeDateIsNotSupported: String;
  SEncodeTimeIsNotSupported: String;
  SEncodeTimestampIsNotSupported: String;
  SDecodeDateIsNotSupported: String;
  SDecodeTimeIsNotSupported: String;
  SDecodeTimestampIsNotSupported: String;

  SCanNotRetrieveResultSetData: String;
  SRowBufferIsNotAssigned: String;
  SColumnIsNotAccessable: String;
  SConvertionIsNotPossible: String;
  SCanNotAccessBlobRecord: String;
  SRowDataIsNotAvailable: String;
  SResolverIsNotSpecified: String;
  SResultsetIsAlreadyOpened: String;
  SCanNotUpdateEmptyRow: String;
  SCanNotUpdateDeletedRow: String;
  SCanNotDeleteEmptyRow: String;
  SCannotUseCommit: String;
  SCannotUseRollBack: String;
  SCanNotUpdateComplexQuery: String;
  SCanNotUpdateThisQueryType: String;
  SDriverWasNotFound: String;
  SCanNotConnectToServer: String;
  STableIsNotSpecified: String;
  SLiveResultSetsAreNotSupported: String;
  SInvalidInputParameterCount: String;
  SIsolationIsNotSupported: String;
  SColumnWasNotFound: String;
  SWrongTypeForBlobParameter: String;
  SIncorrectConnectionURL: String;
  SUnsupportedProtocol: String;
  SUnsupportedByDriver   : String;

  SConnectionIsNotOpened: String;
  SInvalidOpInAutoCommit: String;
  SInvalidOpInNonAutoCommit: String;
  SInvalidOpPrepare: String;

  SConnectionIsNotAssigned: String;
  SQueryIsEmpty: String;
  SCanNotExecuteMoreQueries: String;
  SOperationIsNotAllowed1: String;
  SOperationIsNotAllowed2: String;
  SOperationIsNotAllowed3: String;
  SOperationIsNotAllowed4: String;
  SNoMoreRecords: String;
  SCanNotOpenResultSet: String;
  SCanNotOpenDataSetWhenDestroying: String;
  SCircularLink: String;
  SBookmarkWasNotFound: String;
  SIncorrectSearchFieldsNumber: String;
  SInvalidOperationInTrans: String;
  SIncorrectSymbol: String;
  SIncorrectToken: String;
  SIncorrectParamChar: String;

  SSelectedTransactionIsolation: String;
  SDriverNotSupported: String;
  SPattern2Long: String;
  SDriverNotCapableOutParameters: String;
  SStatementIsNotAllowed: String;
  SStoredProcIsNotAllowed: String;
  SCannotPerformOperation: String;
  SInvalidState: String;
  SErrorConvertion: String;
  SDataTypeDoesNotSupported: String;
  SUnsupportedParameterType: String;
  SUnsupportedDataType: String;
  SErrorConvertionField: String;
  SBadOCI: String;
  SConnect2AsUser: String;
  SUnknownError: String;
  SFieldNotFound1: String;
  SFieldNotFound2: String;

  SLoginPromptFailure: String;

  SPropertyQuery: String;
  SPropertyTables: String;
  SPropertyColumns: String;
  SPropertyProcedures: String;
  SPropertySequences: String;
  SPropertyExecute: String;

  SFormTest: String;
  SButtonClose: String;
  SFormEditor: String;
  STabSheetSelect: String;
  SMenuLoad: String;
  SMenuSave: String;
  SButtonGenerate: String;
  SButtonCheck: String;
  SButtonTest: String;
  SButtonOk: String;
  SButtonCancel: String;
  STableAlias: String;
  SReplaceSQL: String;
  SDialogOpenTitle: String;
  SDialogSaveTitle: String;
  SSQLEditor: String;
  SDatabaseDialog: String;

  SUpdateSQLNoResult: String;
  SUpdateSQLRefreshStatementcount: String;
  {$IFDEF FPC}
  SNotEditing: String;
  SFieldTypeMismatch: String;
  SFieldSizeMismatch: String;
  {$ENDIF}
  SNeedField: String;

  SFailedtoInitPrepStmt: String;
  SFailedtoPrepareStmt: String;
  SFailedToBindAllValues: String;
  SAttemptExecOnBadPrep: String;
  SBindingFailure: String;
  SPreparedStmtExecFailure: String;
  SBoundVarStrIndexMissing: String;
  SBindVarOutOfRange: String;
  SFailedToBindResults: String;
  SPreviousResultStillOpen: String;


  SRefreshRowOnlySupportedWithUpdateObject: String;
  SMustBeInBrowseMode: String;

  SUnKnownParamDataType: String;
  SFieldReadOnly: String;
  SInvalidUpdateCount: String;

  SRowBufferWidthExceeded: String;

implementation

procedure loadmessages;
begin
  MessageCodePage := cCodePage;

  SSQLError1 := cSSQLError1;
  SSQLError2 := cSSQLError2;
  SSQLError3 := cSSQLError3;
  SSQLError4 := cSSQLError4;

  SListCapacityError := cSListCapacityError;
  SListCountError := cSListCountError;
  SListIndexError := cSListIndexError;

  SClonningIsNotSupported := cSClonningIsNotSupported;
  SImmutableOpIsNotAllowed := cSImmutableOpIsNotAllowed;
  SStackIsEmpty := cSStackIsEmpty;
  SVariableWasNotFound := cSVariableWasNotFound;
  SFunctionWasNotFound := cSFunctionWasNotFound;
  SInternalError := cSInternalError;
  SSyntaxErrorNear := cSSyntaxErrorNear;
  SSyntaxError := cSSyntaxError;
  SUnknownSymbol := cSUnknownSymbol;
  SUnexpectedExprEnd := cSUnexpectedExprEnd;
  SRightBraceExpected := cSRightBraceExpected;
  SParametersError := cSParametersError;
  SParamValueExceeded := cSParamValueExceeded;

  SExpectedMoreParams := cSExpectedMoreParams;
  SInvalidVarByteArray := cSInvalidVarByteArray;
  SVariableAlreadyExists := cSVariableAlreadyExists;
  STypesMismatch := cSTypesMismatch;
  SUnsupportedVariantType := cSUnsupportedVariantType;
  SUnsupportedOperation := cSUnsupportedOperation;

  STokenizerIsNotDefined := cSTokenizerIsNotDefined;
  SLibraryNotFound := cSLibraryNotFound;
  SLibraryNotCompatible := cSLibraryNotCompatible;
  SEncodeDateIsNotSupported := cSEncodeDateIsNotSupported;
  SEncodeTimeIsNotSupported := cSEncodeTimeIsNotSupported;
  SEncodeTimestampIsNotSupported := cSEncodeTimestampIsNotSupported;
  SDecodeDateIsNotSupported := cSDecodeDateIsNotSupported;
  SDecodeTimeIsNotSupported := cSDecodeTimeIsNotSupported;
  SDecodeTimestampIsNotSupported := cSDecodeTimestampIsNotSupported;

  SCanNotRetrieveResultSetData := cSCanNotRetrieveResultSetData;
  SRowBufferIsNotAssigned := cSRowBufferIsNotAssigned;
  SColumnIsNotAccessable := cSColumnIsNotAccessable;
  SConvertionIsNotPossible := cSConvertionIsNotPossible;
  SCanNotAccessBlobRecord := cSCanNotAccessBlobRecord;
  SRowDataIsNotAvailable := cSRowDataIsNotAvailable;
  SResolverIsNotSpecified := cSResolverIsNotSpecified;
  SResultsetIsAlreadyOpened := cSResultsetIsAlreadyOpened;
  SCanNotUpdateEmptyRow := cSCanNotUpdateEmptyRow;
  SCanNotUpdateDeletedRow := cSCanNotUpdateDeletedRow;
  SCanNotDeleteEmptyRow := cSCanNotDeleteEmptyRow;
  SCannotUseCommit := cSCannotUseCommit;
  SCannotUseRollBack := cSCannotUseRollBack;
  SCanNotUpdateComplexQuery := cSCanNotUpdateComplexQuery;
  SCanNotUpdateThisQueryType := cSCanNotUpdateThisQueryType;
  SDriverWasNotFound := cSDriverWasNotFound;
  SCanNotConnectToServer := cSCanNotConnectToServer;
  STableIsNotSpecified := cSTableIsNotSpecified;
  SLiveResultSetsAreNotSupported := cSLiveResultSetsAreNotSupported;
  SInvalidInputParameterCount := cSInvalidInputParameterCount;
  SIsolationIsNotSupported := cSIsolationIsNotSupported;
  SColumnWasNotFound := cSColumnWasNotFound;
  SWrongTypeForBlobParameter := cSWrongTypeForBlobParameter;
  SIncorrectConnectionURL := cSIncorrectConnectionURL;
  SUnsupportedProtocol := cSUnsupportedProtocol;
  SUnsupportedByDriver := cSUnsupportedByDriver;

  SConnectionIsNotOpened := cSConnectionIsNotOpened;
  SInvalidOpInAutoCommit := cSInvalidOpInAutoCommit;
  SInvalidOpInNonAutoCommit := cSInvalidOpInNonAutoCommit;
  SInvalidOpPrepare := cSInvalidOpPrepare;

  SConnectionIsNotAssigned := cSConnectionIsNotAssigned;
  SQueryIsEmpty := cSQueryIsEmpty;
  SCanNotExecuteMoreQueries := cSCanNotExecuteMoreQueries;
  SOperationIsNotAllowed1 := cSOperationIsNotAllowed1;
  SOperationIsNotAllowed2 := cSOperationIsNotAllowed2;
  SOperationIsNotAllowed3 := cSOperationIsNotAllowed3;
  SOperationIsNotAllowed4 := cSOperationIsNotAllowed4;
  SNoMoreRecords := cSNoMoreRecords;
  SCanNotOpenResultSet := cSCanNotOpenResultSet;
  SCanNotOpenDataSetWhenDestroying := cSCanNotOpenDataSetWhenDestroying;
  SCircularLink := cSCircularLink;
  SBookmarkWasNotFound := cSBookmarkWasNotFound;
  SIncorrectSearchFieldsNumber := cSIncorrectSearchFieldsNumber;
  SInvalidOperationInTrans := cSInvalidOperationInTrans;
  SIncorrectSymbol := cSIncorrectSymbol;
  SIncorrectToken := cSIncorrectToken;
  SIncorrectParamChar := cSIncorrectParamChar;

  SSelectedTransactionIsolation := cSSelectedTransactionIsolation;
  SDriverNotSupported := cSDriverNotSupported;
  SPattern2Long := cSPattern2Long;
  SDriverNotCapableOutParameters := cSDriverNotCapableOutParameters;
  SStatementIsNotAllowed := cSStatementIsNotAllowed;
  SStoredProcIsNotAllowed := cSStoredProcIsNotAllowed;
  SCannotPerformOperation := cSCannotPerformOperation;
  SInvalidState := cSInvalidState;
  SErrorConvertion := cSErrorConvertion;
  SDataTypeDoesNotSupported := cSDataTypeDoesNotSupported;
  SUnsupportedParameterType := cSUnsupportedParameterType;
  SUnsupportedDataType := cSUnsupportedDataType;
  SErrorConvertionField := cSErrorConvertionField;
  SBadOCI := cSBadOCI;
  SConnect2AsUser := cSConnect2AsUser;
  SUnknownError := cSUnknownError;
  SFieldNotFound1 := cSFieldNotFound1;
  SFieldNotFound2 := cSFieldNotFound2;

  SLoginPromptFailure := cSLoginPromptFailure;

  SPropertyQuery := cSPropertyQuery;
  SPropertyTables := cSPropertyTables;
  SPropertyColumns := cSPropertyColumns;
  SPropertyProcedures := cSPropertyProcedures;
  SPropertySequences := cSPropertySequences;
  SPropertyExecute := cSPropertyExecute;

  SFormTest := cSFormTest;
  SButtonClose := cSButtonClose;
  SFormEditor := cSFormEditor;
  STabSheetSelect := cSTabSheetSelect;
  SMenuLoad := cSMenuLoad;
  SMenuSave := cSMenuSave;
  SButtonGenerate := cSButtonGenerate;
  SButtonCheck := cSButtonCheck;
  SButtonTest := cSButtonTest;
  SButtonOk := cSButtonOk;
  SButtonCancel := cSButtonCancel;
  STableAlias := cSTableAlias;
  SReplaceSQL := cSReplaceSQL;
  SDialogOpenTitle := cSDialogOpenTitle;
  SDialogSaveTitle := cSDialogSaveTitle;
  SSQLEditor := cSSQLEditor;
  SDatabaseDialog := cSDatabaseDialog;

  SUpdateSQLNoResult := cSUpdateSQLNoResult;
  SUpdateSQLRefreshStatementcount := cSUpdateSQLRefreshStatementcount;
  {$IFDEF FPC}
  SNotEditing := cSNotEditing;
  SFieldTypeMismatch := cSFieldTypeMismatch;
  SFieldSizeMismatch := cSFieldSizeMismatch;
  {$ENDIF}
  SNeedField := cSNeedField;

  SFailedtoInitPrepStmt := cSFailedtoInitPrepStmt;
  SFailedtoPrepareStmt := cSFailedtoPrepareStmt;
  SFailedToBindAllValues := cSFailedToBindAllValues;
  SAttemptExecOnBadPrep := cSAttemptExecOnBadPrep;
  SBindingFailure := cSBindingFailure;
  SPreparedStmtExecFailure := cSPreparedStmtExecFailure;
  SBoundVarStrIndexMissing := cSBoundVarStrIndexMissing;
  SBindVarOutOfRange := cSBindVarOutOfRange;
  SFailedToBindResults := cSFailedToBindResults;
  SPreviousResultStillOpen := cSPreviousResultStillOpen;

  SRefreshRowOnlySupportedWithUpdateObject := cSRefreshRowOnlySupportedWithUpdateObject;
  SMustBeInBrowseMode := cSMustBeInBrowseMode;

  SUnKnownParamDataType := cSUnKnownParamDataType;
  SFieldReadOnly := cSFieldReadOnly;
  SInvalidUpdateCount := cSInvalidUpdateCount;

  SRowBufferWidthExceeded := cSRowBufferWidthExceeded;
end;

initialization
  loadmessages;
end.




