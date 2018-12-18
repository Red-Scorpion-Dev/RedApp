.class public Lorg/h2/bnf/context/DbContents;
.super Ljava/lang/Object;
.source "DbContents.java"


# instance fields
.field private defaultSchema:Lorg/h2/bnf/context/DbSchema;

.field private isDB2:Z

.field private isDerby:Z

.field private isFirebird:Z

.field private isH2:Z

.field private isH2ModeMySQL:Z

.field private isMSSQLServer:Z

.field private isMySQL:Z

.field private isOracle:Z

.field private isPostgreSQL:Z

.field private isSQLite:Z

.field private schemas:[Lorg/h2/bnf/context/DbSchema;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDefaultSchemaName(Ljava/sql/DatabaseMetaData;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    if-eqz v1, :cond_0

    .line 246
    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getUserName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 247
    :cond_0
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    if-eqz v1, :cond_1

    const-string p1, "public"

    return-object p1

    .line 249
    :cond_1
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    if-eqz v1, :cond_2

    const-string p1, ""

    return-object p1

    .line 251
    :cond_2
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    if-eqz v1, :cond_3

    .line 252
    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getUserName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 253
    :cond_3
    iget-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    if-eqz v1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 256
    :cond_4
    invoke-interface {p1}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    move-result-object p1

    const-string v1, "IS_DEFAULT"

    .line 257
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v1

    .line 258
    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 259
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "TABLE_SCHEM"

    .line 260
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    :cond_6
    return-object v0
.end method

.method private getSchemaNames(Ljava/sql/DatabaseMetaData;)[Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 193
    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_9

    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 195
    :cond_0
    iget-boolean v1, v0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 196
    new-array v1, v3, [Ljava/lang/String;

    aput-object v4, v1, v2

    return-object v1

    .line 198
    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    move-result-object v1

    .line 199
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 200
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "TABLE_SCHEM"

    .line 201
    invoke-interface {v1, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    iget-boolean v7, v0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    const/16 v8, 0xb

    const/16 v9, 0xa

    const/16 v10, 0x9

    const/16 v11, 0x8

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x5

    const/4 v15, 0x4

    const/16 v16, 0x3

    const/16 v17, 0x2

    if-eqz v7, :cond_2

    const/16 v7, 0x15

    .line 204
    new-array v7, v7, [Ljava/lang/String;

    const-string v18, "CTXSYS"

    aput-object v18, v7, v2

    const-string v18, "DIP"

    aput-object v18, v7, v3

    const-string v18, "DBSNMP"

    aput-object v18, v7, v17

    const-string v17, "DMSYS"

    aput-object v17, v7, v16

    const-string v16, "EXFSYS"

    aput-object v16, v7, v15

    const-string v15, "FLOWS_020100"

    aput-object v15, v7, v14

    const-string v14, "FLOWS_FILES"

    aput-object v14, v7, v13

    const-string v13, "MDDATA"

    aput-object v13, v7, v12

    const-string v12, "MDSYS"

    aput-object v12, v7, v11

    const-string v11, "MGMT_VIEW"

    aput-object v11, v7, v10

    const-string v10, "OLAPSYS"

    aput-object v10, v7, v9

    const-string v9, "ORDSYS"

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "ORDPLUGINS"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    const-string v9, "OUTLN"

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "SI_INFORMTN_SCHEMA"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    const-string v9, "SYS"

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "SYSMAN"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    const-string v9, "SYSTEM"

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "TSMSYS"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    const-string v9, "WMSYS"

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "XDB"

    aput-object v9, v7, v8

    goto :goto_1

    .line 209
    :cond_2
    iget-boolean v7, v0, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    if-eqz v7, :cond_3

    .line 210
    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "sys"

    aput-object v8, v7, v2

    const-string v8, "db_accessadmin"

    aput-object v8, v7, v3

    const-string v8, "db_backupoperator"

    aput-object v8, v7, v17

    const-string v8, "db_datareader"

    aput-object v8, v7, v16

    const-string v8, "db_datawriter"

    aput-object v8, v7, v15

    const-string v8, "db_ddladmin"

    aput-object v8, v7, v14

    const-string v8, "db_denydatareader"

    aput-object v8, v7, v13

    const-string v8, "db_denydatawriter"

    aput-object v8, v7, v12

    const-string v8, "db_owner"

    aput-object v8, v7, v11

    const-string v8, "db_securityadmin"

    aput-object v8, v7, v10

    goto :goto_1

    .line 214
    :cond_3
    iget-boolean v7, v0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    if-eqz v7, :cond_4

    .line 215
    new-array v7, v8, [Ljava/lang/String;

    const-string v8, "NULLID"

    aput-object v8, v7, v2

    const-string v8, "SYSFUN"

    aput-object v8, v7, v3

    const-string v8, "SYSIBMINTERNAL"

    aput-object v8, v7, v17

    const-string v8, "SYSIBMTS"

    aput-object v8, v7, v16

    const-string v8, "SYSPROC"

    aput-object v8, v7, v15

    const-string v8, "SYSPUBLIC"

    aput-object v8, v7, v14

    const-string v8, "SYSCAT"

    aput-object v8, v7, v13

    const-string v8, "SYSIBM"

    aput-object v8, v7, v12

    const-string v8, "SYSIBMADM"

    aput-object v8, v7, v11

    const-string v8, "SYSSTAT"

    aput-object v8, v7, v10

    const-string v8, "SYSTOOLS"

    aput-object v8, v7, v9

    goto :goto_1

    :cond_4
    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_6

    .line 224
    array-length v8, v7

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_6

    aget-object v10, v7, v9

    .line 225
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v6, v4

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-nez v6, :cond_7

    goto/16 :goto_0

    .line 234
    :cond_7
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 236
    :cond_8
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 237
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 238
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    .line 194
    :cond_9
    :goto_4
    new-array v1, v3, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v1, v2

    return-object v1
.end method


# virtual methods
.method public getDefaultSchema()Lorg/h2/bnf/context/DbSchema;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public getSchemas()[Lorg/h2/bnf/context/DbSchema;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    return-object v0
.end method

.method public isDB2()Z
    .locals 1

    .line 112
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    return v0
.end method

.method public isDerby()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    return v0
.end method

.method public isFirebird()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    return v0
.end method

.method public isH2()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    return v0
.end method

.method public isH2ModeMySQL()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    return v0
.end method

.method public isMSSQLServer()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    return v0
.end method

.method public isMySQL()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    return v0
.end method

.method public isOracle()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    return v0
.end method

.method public isPostgreSQL()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    return v0
.end method

.method public isSQLite()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    return v0
.end method

.method public quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 280
    :cond_0
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    if-nez v0, :cond_1

    .line 281
    invoke-static {p1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :cond_1
    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized readContents(Ljava/lang/String;Ljava/sql/Connection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "jdbc:h2:"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    .line 131
    iget-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isH2:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string v0, "SELECT UPPER(VALUE) FROM INFORMATION_SCHEMA.SETTINGS WHERE NAME=?"

    .line 132
    invoke-interface {p2, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const-string v2, "MODE"

    .line 135
    invoke-interface {v0, v1, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 136
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 137
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    const-string v3, "MYSQL"

    .line 138
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iput-boolean v1, p0, Lorg/h2/bnf/context/DbContents;->isH2ModeMySQL:Z

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 142
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V

    :cond_1
    const-string v0, "jdbc:db2:"

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    const-string v0, "jdbc:sqlite:"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isSQLite:Z

    const-string v0, "jdbc:oracle:"

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isOracle:Z

    const-string v0, "jdbc:postgresql:"

    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "jdbc:vertica:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    const-string v0, "jdbc:mysql:"

    .line 150
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isMySQL:Z

    const-string v0, "jdbc:derby:"

    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isDerby:Z

    const-string v0, "jdbc:firebirdsql:"

    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/h2/bnf/context/DbContents;->isFirebird:Z

    const-string v0, "jdbc:sqlserver:"

    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/h2/bnf/context/DbContents;->isMSSQLServer:Z

    .line 154
    invoke-interface {p2}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p1

    .line 155
    invoke-direct {p0, p1}, Lorg/h2/bnf/context/DbContents;->getDefaultSchemaName(Ljava/sql/DatabaseMetaData;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-direct {p0, p1}, Lorg/h2/bnf/context/DbContents;->getSchemaNames(Ljava/sql/DatabaseMetaData;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    array-length v3, v0

    new-array v3, v3, [Lorg/h2/bnf/context/DbSchema;

    iput-object v3, p0, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    const/4 v3, 0x0

    .line 158
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_8

    .line 159
    aget-object v4, v0, v3

    if-eqz p2, :cond_5

    .line 160
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    .line 162
    :goto_4
    new-instance v6, Lorg/h2/bnf/context/DbSchema;

    invoke-direct {v6, p0, v4, v5}, Lorg/h2/bnf/context/DbSchema;-><init>(Lorg/h2/bnf/context/DbContents;Ljava/lang/String;Z)V

    if-eqz v5, :cond_6

    .line 164
    iput-object v6, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    .line 166
    :cond_6
    iget-object v4, p0, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    aput-object v6, v4, v3

    const/4 v4, 0x7

    .line 167
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "TABLE"

    aput-object v5, v4, v2

    const-string v5, "SYSTEM TABLE"

    aput-object v5, v4, v1

    const/4 v5, 0x2

    const-string v7, "VIEW"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "SYSTEM VIEW"

    aput-object v7, v4, v5

    const/4 v5, 0x4

    const-string v7, "TABLE LINK"

    aput-object v7, v4, v5

    const/4 v5, 0x5

    const-string v7, "SYNONYM"

    aput-object v7, v4, v5

    const/4 v5, 0x6

    const-string v7, "EXTERNAL"

    aput-object v7, v4, v5

    .line 169
    invoke-virtual {v6, p1, v4}, Lorg/h2/bnf/context/DbSchema;->readTables(Ljava/sql/DatabaseMetaData;[Ljava/lang/String;)V

    .line 170
    iget-boolean v4, p0, Lorg/h2/bnf/context/DbContents;->isPostgreSQL:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lorg/h2/bnf/context/DbContents;->isDB2:Z

    if-nez v4, :cond_7

    .line 171
    invoke-virtual {v6, p1}, Lorg/h2/bnf/context/DbSchema;->readProcedures(Ljava/sql/DatabaseMetaData;)V

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 174
    :cond_8
    iget-object p1, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 176
    iget-object p2, p0, Lorg/h2/bnf/context/DbContents;->schemas:[Lorg/h2/bnf/context/DbSchema;

    array-length v0, p2

    :goto_5
    if-ge v2, v0, :cond_c

    aget-object v1, p2, v2

    const-string v3, "dbo"

    .line 177
    iget-object v4, v1, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 179
    iput-object v1, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    goto :goto_6

    .line 182
    :cond_9
    iget-object v3, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;

    if-eqz v3, :cond_a

    if-eqz p1, :cond_a

    iget-object v3, v1, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 185
    :cond_a
    iget-object p1, v1, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lorg/h2/bnf/context/DbContents;->defaultSchema:Lorg/h2/bnf/context/DbSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 190
    :cond_c
    :goto_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 129
    monitor-exit p0

    throw p1
.end method
