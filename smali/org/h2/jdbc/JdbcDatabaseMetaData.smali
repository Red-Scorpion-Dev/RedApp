.class public Lorg/h2/jdbc/JdbcDatabaseMetaData;
.super Lorg/h2/message/TraceObject;
.source "JdbcDatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# instance fields
.field private final conn:Lorg/h2/jdbc/JdbcConnection;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcConnection;Lorg/h2/message/Trace;I)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/h2/message/TraceObject;-><init>()V

    const/4 v0, 0x2

    .line 34
    invoke-virtual {p0, p2, v0, p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->setTrace(Lorg/h2/message/Trace;II)V

    .line 35
    iput-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-void
.end method

.method private checkClosed()V
    .locals 1

    .line 2981
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->checkClosed()V

    return-void
.end method

.method private static getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 2996
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "%"

    :cond_1
    return-object p0
.end method

.method private getFunctions(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1496
    :try_start_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1497
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TOPIC FROM INFORMATION_SCHEMA.HELP WHERE SECTION = ?"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1499
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1500
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 1501
    new-instance v2, Lorg/h2/util/StatementBuilder;

    invoke-direct {v2}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 1502
    :cond_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1503
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    .line 1504
    invoke-static {v3, v4, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    .line 1505
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    const-string v8, ","

    .line 1506
    invoke-virtual {v2, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    .line 1508
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-ltz v9, :cond_1

    .line 1510
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1512
    :cond_1
    invoke-virtual {v2, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1515
    :cond_2
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 1516
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    .line 1517
    invoke-virtual {v2}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1519
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private static getPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "%"

    :cond_0
    return-object p0
.end method

.method private static getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "%"

    goto :goto_0

    .line 2989
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "PUBLIC"

    :cond_1
    :goto_0
    return-object p0
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1

    const-string v0, "allProceduresAreCallable"

    .line 437
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1

    const-string v0, "allTablesAreSelectable"

    .line 448
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public autoCommitFailureClosesAllResultSets()Z
    .locals 1

    const-string v0, "autoCommitFailureClosesAllResultSets"

    .line 3072
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1

    const-string v0, "dataDefinitionCausesTransactionCommit"

    .line 2248
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1

    const-string v0, "dataDefinitionIgnoredInTransactions"

    .line 2259
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 3

    const-string v0, "deletesAreDetected"

    int-to-long v1, p1

    .line 2384
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1

    const-string v0, "doesMaxRowSizeIncludeBlobs"

    .line 2418
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "attributes"

    .line 2874
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 954
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBestRowIdentifier("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, ");"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 961
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 962
    iget-object p4, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p5, "SELECT CAST(? AS SMALLINT) SCOPE, C.COLUMN_NAME, C.DATA_TYPE, C.TYPE_NAME, C.CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, C.CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, CAST(C.NUMERIC_SCALE AS SMALLINT) DECIMAL_DIGITS, CAST(? AS SMALLINT) PSEUDO_COLUMN FROM INFORMATION_SCHEMA.INDEXES I,  INFORMATION_SCHEMA.COLUMNS C WHERE C.TABLE_NAME = I.TABLE_NAME AND C.COLUMN_NAME = I.COLUMN_NAME AND C.TABLE_CATALOG LIKE ? ESCAPE ? AND C.TABLE_SCHEMA LIKE ? ESCAPE ? AND C.TABLE_NAME = ? AND I.PRIMARY_KEY = TRUE ORDER BY SCOPE"

    invoke-virtual {p4, p5}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    const/4 p5, 0x2

    const/4 v0, 0x1

    .line 981
    invoke-interface {p4, v0, p5}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 983
    invoke-interface {p4, p5, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    const/4 p5, 0x3

    .line 984
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p5, "\\"

    .line 985
    invoke-interface {p4, p1, p5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 986
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    const-string p2, "\\"

    .line 987
    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    .line 988
    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 989
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 991
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogSeparator"

    .line 1905
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getCatalogTerm"

    .line 1883
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "catalog"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getCatalogs"

    .line 761
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 762
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 763
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT CATALOG_NAME TABLE_CAT FROM INFORMATION_SCHEMA.CATALOGS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 766
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3078
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getClientInfo()Ljava/util/Properties;

    move-result-object v0

    .line 3079
    new-instance v1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v2, "Name"

    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 3080
    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v2, "Value"

    .line 3081
    invoke-virtual {v1, v2, v3, v4, v4}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 3082
    invoke-virtual {v0}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x2

    .line 3083
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v4

    const/4 v6, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v1, v5}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 828
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColumnPrivileges("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 835
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 836
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.COLUMN_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY COLUMN_NAME, PRIVILEGE"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 851
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 852
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 853
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 854
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 855
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    .line 856
    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    const-string p2, "\\"

    .line 857
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 858
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 860
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getColumns("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 243
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 244
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, DATA_TYPE, TYPE_NAME, CHARACTER_MAXIMUM_LENGTH COLUMN_SIZE, CHARACTER_MAXIMUM_LENGTH BUFFER_LENGTH, NUMERIC_SCALE DECIMAL_DIGITS, NUMERIC_PRECISION_RADIX NUM_PREC_RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, CHARACTER_OCTET_LENGTH CHAR_OCTET_LENGTH, ORDINAL_POSITION, IS_NULLABLE IS_NULLABLE, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATALOG, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_SCHEMA, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_TABLE, SOURCE_DATA_TYPE, CASE WHEN SEQUENCE_NAME IS NULL THEN CAST(? AS VARCHAR) ELSE CAST(? AS VARCHAR) END IS_AUTOINCREMENT, CAST(SOURCE_DATA_TYPE AS VARCHAR) SCOPE_CATLOG FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "NO"

    .line 276
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    const-string v2, "YES"

    .line 277
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 278
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string v1, "\\"

    .line 279
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 280
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    const-string p2, "\\"

    .line 281
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    .line 282
    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x8

    const-string p2, "\\"

    .line 283
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    .line 284
    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    const-string p2, "\\"

    .line 285
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 286
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 288
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1

    const-string v0, "getConnection"

    .line 552
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1233
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCrossReference("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p6}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 1242
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1243
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? AND FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1266
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 1267
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 1268
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 1269
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 1270
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    .line 1271
    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    const-string p2, "\\"

    .line 1272
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x8

    .line 1273
    invoke-static {p5}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    const-string p2, "\\"

    .line 1274
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0xa

    .line 1275
    invoke-interface {v0, p1, p6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1276
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1278
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getDatabaseMajorVersion()I
    .locals 1

    const-string v0, "getDatabaseMajorVersion"

    .line 2908
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1

    const-string v0, "getDatabaseMinorVersion"

    .line 2919
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductName"

    .line 67
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDatabaseProductVersion"

    .line 80
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1

    const-string v0, "getDefaultTransactionIsolation"

    .line 2429
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    const-string v0, "getDriverMajorVersion"

    .line 45
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    const-string v0, "getDriverMinorVersion"

    .line 56
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverName"

    .line 91
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "H2 JDBC Driver"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "getDriverVersion"

    .line 103
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1153
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExportedKeys("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 1159
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1160
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE PKTABLE_CATALOG LIKE ? ESCAPE ? AND PKTABLE_SCHEMA LIKE ? ESCAPE ? AND PKTABLE_NAME = ? ORDER BY FKTABLE_CAT, FKTABLE_SCHEM, FKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1180
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 1181
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 1182
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 1183
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 1184
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1185
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1187
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1

    const-string v0, "getExtraNameCharacters"

    .line 1544
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "getFunctionColumns"

    .line 3121
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "getFunctions"

    .line 3130
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1

    const-string v0, "getIdentifierQuoteString"

    .line 1422
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\""

    return-object v0
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1080
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImportedKeys("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 1086
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1087
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT PKTABLE_CATALOG PKTABLE_CAT, PKTABLE_SCHEMA PKTABLE_SCHEM, PKTABLE_NAME PKTABLE_NAME, PKCOLUMN_NAME, FKTABLE_CATALOG FKTABLE_CAT, FKTABLE_SCHEMA FKTABLE_SCHEM, FKTABLE_NAME, FKCOLUMN_NAME, ORDINAL_POSITION KEY_SEQ, UPDATE_RULE, DELETE_RULE, FK_NAME, PK_NAME, DEFERRABILITY FROM INFORMATION_SCHEMA.CROSS_REFERENCES WHERE FKTABLE_CATALOG LIKE ? ESCAPE ? AND FKTABLE_SCHEMA LIKE ? ESCAPE ? AND FKTABLE_NAME = ? ORDER BY PKTABLE_CAT, PKTABLE_SCHEM, PKTABLE_NAME, FK_NAME, KEY_SEQ"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 1107
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 1108
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 1109
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 1110
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 1111
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 1112
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1114
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIndexInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p5, ");"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_1

    const-string p4, "NON_UNIQUE=FALSE"

    goto :goto_0

    :cond_1
    const-string p4, "TRUE"

    .line 341
    :goto_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 342
    iget-object p5, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, NON_UNIQUE, TABLE_CATALOG INDEX_QUALIFIER, INDEX_NAME, INDEX_TYPE TYPE, ORDINAL_POSITION, COLUMN_NAME, ASC_OR_DESC, CARDINALITY, PAGES, FILTER_CONDITION, SORT_TYPE FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "AND TABLE_NAME = ? "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "ORDER BY NON_UNIQUE, TYPE, TABLE_SCHEM, INDEX_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p4

    const/4 p5, 0x1

    .line 364
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p5, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string p5, "\\"

    .line 365
    invoke-interface {p4, p1, p5}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 366
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 367
    invoke-interface {p4, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 368
    invoke-interface {p4, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 369
    invoke-interface {p4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getJDBCMajorVersion()I
    .locals 1

    const-string v0, "getJDBCMajorVersion"

    .line 2930
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1

    const-string v0, "getJDBCMinorVersion"

    .line 2941
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1

    const-string v0, "getMaxBinaryLiteralLength"

    .line 2560
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1

    const-string v0, "getMaxCatalogNameLength"

    .line 2703
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1

    const-string v0, "getMaxCharLiteralLength"

    .line 2571
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1

    const-string v0, "getMaxColumnNameLength"

    .line 2582
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1

    const-string v0, "getMaxColumnsInGroupBy"

    .line 2593
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1

    const-string v0, "getMaxColumnsInIndex"

    .line 2604
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1

    const-string v0, "getMaxColumnsInOrderBy"

    .line 2615
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1

    const-string v0, "getMaxColumnsInSelect"

    .line 2626
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1

    const-string v0, "getMaxColumnsInTable"

    .line 2637
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxConnections()I
    .locals 1

    const-string v0, "getMaxConnections"

    .line 2648
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1

    const-string v0, "getMaxCursorNameLength"

    .line 2659
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1

    const-string v0, "getMaxIndexLength"

    .line 2670
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1

    const-string v0, "getMaxProcedureNameLength"

    .line 2692
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1

    const-string v0, "getMaxRowSize"

    .line 2714
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1

    const-string v0, "getMaxSchemaNameLength"

    .line 2681
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1

    const-string v0, "getMaxStatementLength"

    .line 2725
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatements()I
    .locals 1

    const-string v0, "getMaxStatements"

    .line 2736
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1

    const-string v0, "getMaxTableNameLength"

    .line 2747
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1

    const-string v0, "getMaxTablesInSelect"

    .line 2758
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1

    const-string v0, "getMaxUserNameLength"

    .line 2769
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getNumericFunctions"

    .line 1457
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Numeric)"

    .line 1458
    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 399
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrimaryKeys("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 406
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, COLUMN_NAME, ORDINAL_POSITION KEY_SEQ, IFNULL(CONSTRAINT_NAME, INDEX_NAME) PK_NAME FROM INFORMATION_SCHEMA.INDEXES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME = ? AND PRIMARY_KEY = TRUE ORDER BY COLUMN_NAME"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 419
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 420
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 421
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 422
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 423
    invoke-interface {v0, p1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 424
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 426
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 666
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcedureColumns("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 673
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 674
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_NAME, COLUMN_TYPE, DATA_TYPE, TYPE_NAME, PRECISION, PRECISION LENGTH, SCALE, RADIX, NULLABLE, REMARKS, COLUMN_DEFAULT COLUMN_DEF, ZERO() SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, ZERO() CHAR_OCTET_LENGTH, POS ORDINAL_POSITION, ? IS_NULLABLE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_COLUMNS WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? AND COLUMN_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, ORDINAL_POSITION"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "YES"

    .line 701
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 702
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    const-string v1, "\\"

    .line 703
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    .line 704
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    const-string p2, "\\"

    .line 705
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    .line 706
    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x7

    const-string p2, "\\"

    .line 707
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x8

    .line 708
    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/16 p1, 0x9

    const-string p2, "\\"

    .line 709
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 710
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 712
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getProcedureTerm"

    .line 1872
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "procedure"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProcedures("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 592
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 593
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT ALIAS_CATALOG PROCEDURE_CAT, ALIAS_SCHEMA PROCEDURE_SCHEM, ALIAS_NAME PROCEDURE_NAME, COLUMN_COUNT NUM_INPUT_PARAMS, ZERO() NUM_OUTPUT_PARAMS, ZERO() NUM_RESULT_SETS, REMARKS, RETURNS_RESULT PROCEDURE_TYPE, ALIAS_NAME SPECIFIC_NAME FROM INFORMATION_SCHEMA.FUNCTION_ALIASES WHERE ALIAS_CATALOG LIKE ? ESCAPE ? AND ALIAS_SCHEMA LIKE ? ESCAPE ? AND ALIAS_NAME LIKE ? ESCAPE ? ORDER BY PROCEDURE_SCHEM, PROCEDURE_NAME, NUM_INPUT_PARAMS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 608
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 609
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 610
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 611
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 612
    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    const-string p2, "\\"

    .line 613
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 614
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 616
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1

    const-string v0, "getResultSetHoldability"

    .line 2897
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getRowIdLifetime()Ljava/sql/RowIdLifetime;
    .locals 1

    const-string v0, "getRowIdLifetime"

    .line 3007
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 3008
    sget-object v0, Ljava/sql/RowIdLifetime;->ROWID_UNSUPPORTED:Ljava/sql/RowIdLifetime;

    return-object v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 1

    const-string v0, "getSQLKeywords"

    .line 1446
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "LIMIT,MINUS,ROWNUM,SYSDATE,SYSTIME,SYSTIMESTAMP,TODAY"

    return-object v0
.end method

.method public getSQLStateType()I
    .locals 1

    const-string v0, "getSQLStateType"

    .line 2952
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1

    const-string v0, "getSchemaTerm"

    .line 1861
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "schema"

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getSchemas"

    .line 732
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 734
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA ORDER BY SCHEMA_NAME"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 741
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 743
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getSchemas(String,String)"

    .line 3031
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 3032
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 3033
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT SCHEMA_NAME TABLE_SCHEM, CATALOG_NAME TABLE_CATALOG,  IS_DEFAULT FROM INFORMATION_SCHEMA.SCHEMATA WHERE CATALOG_NAME LIKE ? ESCAPE ? AND SCHEMA_NAME LIKE ? ESCAPE ? ORDER BY SCHEMA_NAME"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 3042
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 3043
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 3044
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 3045
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 3046
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3048
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1

    const-string v0, "getSearchStringEscape"

    .line 1532
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getStringFunctions"

    .line 1468
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (String)"

    .line 1469
    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2847
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSuperTables("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 2853
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 2854
    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CATALOG_NAME TABLE_CAT, CATALOG_NAME TABLE_SCHEM, CATALOG_NAME TABLE_NAME, CATALOG_NAME SUPERTABLE_NAME FROM INFORMATION_SCHEMA.CATALOGS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 2861
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2863
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "superTypes"

    .line 2823
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->unsupported(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getSystemFunctions"

    .line 1479
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (System)"

    .line 1480
    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 892
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTablePrivileges("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 898
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 899
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, GRANTOR, GRANTEE, PRIVILEGE_TYPE PRIVILEGE, IS_GRANTABLE FROM INFORMATION_SCHEMA.TABLE_PRIVILEGES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? ORDER BY TABLE_SCHEM, TABLE_NAME, PRIVILEGE"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 912
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v1, "\\"

    .line 913
    invoke-interface {v0, p1, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 914
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 915
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 916
    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    const-string p2, "\\"

    .line 917
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 918
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 920
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTableTypes"

    .line 785
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 786
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 787
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE TABLE_TYPE FROM INFORMATION_SCHEMA.TABLE_TYPES ORDER BY TABLE_TYPE"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 791
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 793
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTables("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quoteArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    .line 146
    array-length v1, p4

    if-lez v1, :cond_2

    .line 147
    new-instance v1, Lorg/h2/util/StatementBuilder;

    const-string v2, "TABLE_TYPE IN("

    invoke-direct {v1, v2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 148
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_1

    const-string v3, ", "

    .line 149
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const/16 v3, 0x3f

    .line 150
    invoke-virtual {v1, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    .line 152
    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "TRUE"

    .line 156
    :goto_1
    iget-object v2, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT TABLE_CATALOG TABLE_CAT, TABLE_SCHEMA TABLE_SCHEM, TABLE_NAME, TABLE_TYPE, REMARKS, TYPE_NAME TYPE_CAT, TYPE_NAME TYPE_SCHEM, TYPE_NAME, TYPE_NAME SELF_REFERENCING_COL_NAME, TYPE_NAME REF_GENERATION, SQL FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_CATALOG LIKE ? ESCAPE ? AND TABLE_SCHEMA LIKE ? ESCAPE ? AND TABLE_NAME LIKE ? ESCAPE ? AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ORDER BY TABLE_TYPE, TABLE_SCHEMA, TABLE_NAME"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v1

    .line 174
    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getCatalogPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-interface {v1, v2, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    const-string v2, "\\"

    .line 175
    invoke-interface {v1, p1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x3

    .line 176
    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getSchemaPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "\\"

    .line 177
    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x5

    .line 178
    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x6

    const-string p2, "\\"

    .line 179
    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_3

    .line 180
    array-length p1, p4

    if-ge v0, p1, :cond_3

    add-int/lit8 p1, v0, 0x7

    .line 181
    aget-object p2, p4, v0

    invoke-interface {v1, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 183
    :cond_3
    invoke-interface {v1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 185
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "getTimeDateFunctions"

    .line 1490
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const-string v0, "Functions (Time and Date)"

    .line 1491
    invoke-direct {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getFunctions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getTypeInfo"

    .line 1363
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 1364
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1365
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT TYPE_NAME, DATA_TYPE, PRECISION, PREFIX LITERAL_PREFIX, SUFFIX LITERAL_SUFFIX, PARAMS CREATE_PARAMS, NULLABLE, CASE_SENSITIVE, SEARCHABLE, FALSE UNSIGNED_ATTRIBUTE, FALSE FIXED_PREC_SCALE, AUTO_INCREMENT, TYPE_NAME LOCAL_TYPE_NAME, MINIMUM_SCALE, MAXIMUM_SCALE, DATA_TYPE SQL_DATA_TYPE, ZERO() SQL_DATETIME_SUB, RADIX NUM_PREC_RADIX FROM INFORMATION_SCHEMA.TYPE_INFO ORDER BY DATA_TYPE, POS"

    invoke-virtual {v0, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1386
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1389
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1307
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUDTs("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quoteIntArray([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 1314
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1315
    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT CAST(NULL AS VARCHAR) TYPE_CAT, CAST(NULL AS VARCHAR) TYPE_SCHEM, CAST(NULL AS VARCHAR) TYPE_NAME, CAST(NULL AS VARCHAR) CLASS_NAME, CAST(NULL AS SMALLINT) DATA_TYPE, CAST(NULL AS VARCHAR) REMARKS, CAST(NULL AS SMALLINT) BASE_TYPE FROM DUAL WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 1324
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1326
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getURL"

    .line 460
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getURL()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 463
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "getUserName"

    .line 476
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getUser()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 479
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1021
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersionColumns("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    .line 1027
    :cond_0
    invoke-direct {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->checkClosed()V

    .line 1028
    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string p2, "SELECT ZERO() SCOPE, COLUMN_NAME, CAST(DATA_TYPE AS INT) DATA_TYPE, TYPE_NAME, NUMERIC_PRECISION COLUMN_SIZE, NUMERIC_PRECISION BUFFER_LENGTH, NUMERIC_PRECISION DECIMAL_DIGITS, ZERO() PSEUDO_COLUMN FROM INFORMATION_SCHEMA.COLUMNS WHERE FALSE"

    invoke-virtual {p1, p2}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 1039
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1041
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public insertsAreDetected(I)Z
    .locals 3

    const-string v0, "insertsAreDetected"

    int-to-long v1, p1

    .line 2396
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1

    const-string v0, "isCatalogAtStart"

    .line 1894
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "isReadOnly"

    .line 491
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->isReadOnly()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 494
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 3111
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public locatorsUpdateCopy()Z
    .locals 1

    const-string v0, "locatorsUpdateCopy"

    .line 2963
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1

    const-string v0, "nullPlusNonNullIsNull"

    .line 1587
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1

    const-string v0, "nullsAreSortedAtEnd"

    .line 541
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 1

    const-string v0, "nullsAreSortedAtStart"

    .line 530
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedHigh()Z
    .locals 1

    const-string v0, "nullsAreSortedHigh"

    .line 506
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 507
    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1

    const-string v0, "nullsAreSortedLow"

    .line 518
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 519
    sget-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "othersDeletesAreVisible"

    int-to-long v1, p1

    .line 2348
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "othersInsertsAreVisible"

    int-to-long v1, p1

    .line 2360
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "othersUpdatesAreVisible"

    int-to-long v1, p1

    .line 2336
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 3

    const-string v0, "ownDeletesAreVisible"

    int-to-long v1, p1

    .line 2312
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 3

    const-string v0, "ownInsertsAreVisible"

    int-to-long v1, p1

    .line 2324
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 3

    const-string v0, "ownUpdatesAreVisible"

    int-to-long v1, p1

    .line 2300
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "storesLowerCaseIdentifiers"

    .line 2485
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2486
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2487
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "storesLowerCaseQuotedIdentifiers"

    .line 2529
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2531
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "storesMixedCaseIdentifiers"

    .line 2501
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "storesMixedCaseQuotedIdentifiers"

    .line 2545
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "storesUpperCaseIdentifiers"

    .line 2469
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2470
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2471
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "storesUpperCaseQuotedIdentifiers"

    .line 2513
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2514
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2515
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1

    const-string v0, "supportsANSI92EntryLevelSQL"

    .line 1784
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1

    const-string v0, "supportsANSI92FullSQL"

    .line 1806
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1

    const-string v0, "supportsANSI92IntermediateSQL"

    .line 1795
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithAddColumn"

    .line 1554
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1

    const-string v0, "supportsAlterTableWithDropColumn"

    .line 1565
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1

    const-string v0, "supportsBatchUpdates"

    .line 2407
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 1

    const-string v0, "supportsCatalogsInDataManipulation"

    .line 1971
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInIndexDefinitions"

    .line 2004
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInPrivilegeDefinitions"

    .line 2015
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsCatalogsInProcedureCalls"

    .line 1982
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsCatalogsInTableDefinitions"

    .line 1993
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1

    const-string v0, "supportsColumnAliasing"

    .line 1576
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1

    const-string v0, "supportsConvert"

    .line 1598
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 1

    .line 1611
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "supportsConvert("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1

    const-string v0, "supportsCoreSQLGrammar"

    .line 1762
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 1

    const-string v0, "supportsCorrelatedSubqueries"

    .line 2114
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1

    const-string v0, "supportsDataDefinitionAndDataManipulationTransactions"

    .line 2226
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1

    const-string v0, "supportsDataManipulationTransactionsOnly"

    .line 2237
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsDifferentTableCorrelationNames"

    .line 1636
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1

    const-string v0, "supportsExpressionsInOrderBy"

    .line 1647
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1

    const-string v0, "supportsExtendedSQLGrammar"

    .line 1773
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1

    const-string v0, "supportsFullOuterJoins"

    .line 1839
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const-string v0, "supportsGetGeneratedKeys"

    .line 2813
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1

    const-string v0, "supportsGroupBy"

    .line 1670
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1

    const-string v0, "supportsGroupByBeyondSelect"

    .line 1695
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1

    const-string v0, "supportsGroupByUnrelated"

    .line 1682
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1

    const-string v0, "supportsIntegrityEnhancementFacility"

    .line 1817
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1

    const-string v0, "supportsLikeEscapeClause"

    .line 1706
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1

    const-string v0, "supportsLimitedOuterJoins"

    .line 1850
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1

    const-string v0, "supportsMinimumSQLGrammar"

    .line 1751
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1

    const-string v0, "supportsMixedCaseIdentifiers"

    .line 2441
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "supportsMixedCaseQuotedIdentifiers"

    .line 2453
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MySQL"

    .line 2455
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1

    const-string v0, "supportsMultipleOpenResults"

    .line 2802
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 1

    const-string v0, "supportsMultipleResultSets"

    .line 1717
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1

    const-string v0, "supportsMultipleTransactions"

    .line 1729
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1

    const-string v0, "supportsNamedParameters"

    .line 2791
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1

    const-string v0, "supportsNonNullableColumns"

    .line 1740
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossCommit"

    .line 2147
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenCursorsAcrossRollback"

    .line 2158
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossCommit"

    .line 2169
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1

    const-string v0, "supportsOpenStatementsAcrossRollback"

    .line 2180
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1

    const-string v0, "supportsOrderByUnrelated"

    .line 1659
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1

    const-string v0, "supportsOuterJoins"

    .line 1828
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1

    const-string v0, "supportsPositionedDelete"

    .line 2026
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1

    const-string v0, "supportsPositionedUpdate"

    .line 2037
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 2

    .line 2286
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supportsResultSetConcurrency("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCode(Ljava/lang/String;)V

    :cond_0
    const/16 p2, 0x3ed

    if-eq p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 3

    const-string v0, "supportsResultSetHoldability"

    int-to-long v1, p1

    .line 2886
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsResultSetType(I)Z
    .locals 3

    const-string v0, "supportsResultSetType"

    int-to-long v1, p1

    .line 2272
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/16 v0, 0x3ed

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 1

    const-string v0, "supportsSavepoints"

    .line 2780
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1

    const-string v0, "supportsSchemasInDataManipulation"

    .line 1916
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInIndexDefinitions"

    .line 1949
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInPrivilegeDefinitions"

    .line 1960
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1

    const-string v0, "supportsSchemasInProcedureCalls"

    .line 1927
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1

    const-string v0, "supportsSchemasInTableDefinitions"

    .line 1938
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 1

    const-string v0, "supportsSelectForUpdate"

    .line 2048
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1

    const-string v0, "supportsStatementPooling"

    .line 2974
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1

    const-string v0, "supportsStoredFunctionsUsingCallSyntax"

    .line 3060
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 1

    const-string v0, "supportsStoredProcedures"

    .line 2059
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 1

    const-string v0, "supportsSubqueriesInComparisons"

    .line 2070
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 1

    const-string v0, "supportsSubqueriesInExists"

    .line 2081
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 1

    const-string v0, "supportsSubqueriesInIns"

    .line 2092
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 1

    const-string v0, "supportsSubqueriesInQuantifieds"

    .line 2103
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1

    const-string v0, "supportsTableCorrelationNames"

    .line 1624
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "supportsTransactionIsolationLevel"

    .line 2203
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2207
    iget-object p1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    const-string v1, "SELECT VALUE FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    invoke-virtual {p1, v1}, Lorg/h2/jdbc/JdbcConnection;->prepareAutoCloseStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    const-string v1, "MULTI_THREADED"

    .line 2209
    invoke-interface {p1, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2210
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 2211
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public supportsTransactions()Z
    .locals 1

    const-string v0, "supportsTransactions"

    .line 2191
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnion()Z
    .locals 1

    const-string v0, "supportsUnion"

    .line 2125
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 1

    const-string v0, "supportsUnionAll"

    .line 2136
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->getTraceObjectName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcDatabaseMetaData;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3097
    invoke-virtual {p0, p1}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "iface"

    .line 3100
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public updatesAreDetected(I)Z
    .locals 3

    const-string v0, "updatesAreDetected"

    int-to-long v1, p1

    .line 2372
    invoke-virtual {p0, v0, v1, v2}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;J)V

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1

    const-string v0, "usesLocalFilePerTable"

    .line 1411
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1

    const-string v0, "usesLocalFiles"

    .line 1400
    invoke-virtual {p0, v0}, Lorg/h2/jdbc/JdbcDatabaseMetaData;->debugCodeCall(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
