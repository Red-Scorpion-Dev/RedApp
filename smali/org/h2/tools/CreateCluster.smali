.class public Lorg/h2/tools/CreateCluster;
.super Lorg/h2/util/Tool;
.source "CreateCluster.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    return-void
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/h2/tools/CreateCluster;

    invoke-direct {v0}, Lorg/h2/tools/CreateCluster;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/CreateCluster;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    const-string v13, "backup.sql"

    const/4 v2, 0x0

    .line 104
    :try_start_0
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 110
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";IFEXISTS=TRUE;CLUSTER="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TRUE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v3
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 113
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v4, "DROP ALL OBJECTS DELETE FILES"

    .line 114
    invoke-interface {v0, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 115
    invoke-interface {v0}, Ljava/sql/Statement;->close()V

    .line 117
    invoke-interface {v3}, Ljava/sql/Connection;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v2

    .line 119
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v4

    const v5, 0x15f9d

    if-ne v4, v5, :cond_0

    .line 134
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";CLUSTER=\'\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 136
    :try_start_4
    invoke-interface {v14}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    const-string v0, "SET EXCLUSIVE 2"

    .line 140
    invoke-interface {v15, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 145
    :try_start_6
    new-instance v0, Lorg/h2/tools/Script;

    invoke-direct {v0}, Lorg/h2/tools/Script;-><init>()V

    .line 146
    iget-object v4, v1, Lorg/h2/tools/CreateCluster;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v4}, Lorg/h2/tools/Script;->setOut(Ljava/io/PrintStream;)V

    const-string v0, ""

    const-string v4, ""

    .line 147
    invoke-static {v14, v13, v0, v4}, Lorg/h2/tools/Script;->process(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";CLUSTER=\'\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v11}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 152
    :try_start_7
    invoke-interface/range {v16 .. v16}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    const-string v0, "DROP ALL OBJECTS DELETE FILES"

    .line 153
    invoke-interface {v8, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 154
    invoke-interface/range {v16 .. v16}, Ljava/sql/Connection;->close()V

    .line 156
    new-instance v2, Lorg/h2/tools/RunScript;

    invoke-direct {v2}, Lorg/h2/tools/RunScript;-><init>()V

    .line 157
    iget-object v0, v1, Lorg/h2/tools/CreateCluster;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Lorg/h2/tools/RunScript;->setOut(Ljava/io/PrintStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v13

    move-object/from16 v17, v8

    move v8, v0

    .line 158
    :try_start_9
    invoke-virtual/range {v2 .. v8}, Lorg/h2/tools/RunScript;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    .line 160
    invoke-static/range {p2 .. p4}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 161
    :try_start_a
    invoke-interface {v2}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 164
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET CLUSTER \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SET CLUSTER \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/sql/Statement;->executeUpdate(Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    const-string v0, "SET EXCLUSIVE FALSE"

    .line 169
    invoke-interface {v15, v0}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 172
    invoke-static {v13}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 173
    invoke-static {v15}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 174
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 175
    invoke-static {v14}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    .line 176
    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object/from16 v17, v8

    :goto_2
    move-object/from16 v2, v16

    :goto_3
    move-object/from16 v3, v17

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v2

    move-object/from16 v2, v16

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_4
    :try_start_d
    const-string v4, "SET EXCLUSIVE FALSE"

    .line 169
    invoke-interface {v15, v4}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v2

    goto :goto_5

    :catchall_7
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    :goto_5
    move-object v2, v15

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object v4, v3

    move-object v3, v2

    goto :goto_6

    .line 123
    :cond_0
    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :catchall_9
    move-exception v0

    move-object v14, v2

    move-object v4, v3

    move-object v3, v14

    goto :goto_6

    :catchall_a
    move-exception v0

    move-object v3, v2

    move-object v4, v3

    move-object v14, v4

    .line 172
    :goto_6
    invoke-static {v13}, Lorg/h2/store/fs/FileUtils;->delete(Ljava/lang/String;)V

    .line 173
    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 174
    invoke-static {v3}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    .line 175
    invoke-static {v14}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    .line 176
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V

    throw v0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 95
    invoke-direct/range {p0 .. p5}, Lorg/h2/tools/CreateCluster;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v7, v0

    move-object v8, v1

    move-object v5, v2

    move-object v6, v5

    move-object v9, v6

    :goto_0
    if-eqz p1, :cond_7

    .line 58
    array-length v0, p1

    if-ge v3, v0, :cond_7

    .line 59
    aget-object v0, p1, v3

    const-string v1, "-urlSource"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 61
    aget-object v0, p1, v3

    move-object v5, v0

    goto :goto_1

    :cond_0
    const-string v1, "-urlTarget"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 63
    aget-object v0, p1, v3

    move-object v6, v0

    goto :goto_1

    :cond_1
    const-string v1, "-user"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 65
    aget-object v0, p1, v3

    move-object v7, v0

    goto :goto_1

    :cond_2
    const-string v1, "-password"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 67
    aget-object v0, p1, v3

    move-object v8, v0

    goto :goto_1

    :cond_3
    const-string v1, "-serverList"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 69
    aget-object v0, p1, v3

    move-object v9, v0

    goto :goto_1

    :cond_4
    const-string v1, "-help"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "-?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    .line 74
    :cond_5
    invoke-virtual {p0, v0}, Lorg/h2/tools/CreateCluster;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/CreateCluster;->showUsage()V

    return-void

    :cond_7
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    move-object v4, p0

    .line 81
    invoke-direct/range {v4 .. v9}, Lorg/h2/tools/CreateCluster;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_8
    invoke-virtual {p0}, Lorg/h2/tools/CreateCluster;->showUsage()V

    .line 79
    new-instance p1, Ljava/sql/SQLException;

    const-string v0, "Source URL, target URL, or server list not set"

    invoke-direct {p1, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
