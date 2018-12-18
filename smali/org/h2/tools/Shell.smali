.class public Lorg/h2/tools/Shell;
.super Lorg/h2/util/Tool;
.source "Shell.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final BOX_VERTICAL:C = '|'

.field private static final HISTORY_COUNT:I = 0x14

.field private static final MAX_ROW_BUFFER:I = 0x1388


# instance fields
.field private conn:Ljava/sql/Connection;

.field private err:Ljava/io/PrintStream;

.field private final history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private in:Ljava/io/InputStream;

.field private listMode:Z

.field private maxColumnSize:I

.field private reader:Ljava/io/BufferedReader;

.field private serverPropertiesDir:Ljava/lang/String;

.field private stat:Ljava/sql/Statement;

.field private stopHide:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    .line 43
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    .line 44
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    const/16 v0, 0x64

    .line 49
    iput v0, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    .line 50
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    const-string v0, "~"

    .line 52
    iput-object v0, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    return-void
.end method

.method private connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "jdbc:h2:~/test"

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "null"

    .line 326
    iget-object v4, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 327
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    .line 329
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".h2.server.properties"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/util/SortedProperties;->loadProperties(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    move-object v6, v2

    const/4 v5, 0x0

    .line 335
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    if-eqz v5, :cond_2

    .line 343
    new-instance v3, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v3, v6}, Lorg/h2/server/web/ConnectionInfo;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object v4, v3, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 345
    :try_start_1
    iget-object v0, v3, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 346
    :try_start_2
    iget-object v1, v3, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v1

    :catch_0
    move-object v1, v0

    :catch_1
    move-object v0, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    move-object v6, v7

    goto :goto_1

    .line 351
    :catch_2
    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Enter]   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v3, "URL       "

    .line 352
    invoke-virtual {p0, v3}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-nez v2, :cond_3

    .line 355
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->getDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Enter]   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_4
    const-string v3, "Driver    "

    .line 360
    invoke-virtual {p0, v3}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Enter]   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v3, "User      "

    .line 363
    invoke-virtual {p0, v3}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[Enter]   Hide"

    .line 365
    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v3, "Password  "

    .line 366
    invoke-virtual {p0, v3}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 367
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 369
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readPassword()Ljava/lang/String;

    move-result-object v3

    .line 371
    :cond_5
    invoke-static {v2, v0, v1, v3}, Lorg/h2/util/JdbcUtils;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    .line 372
    iget-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    const-string v0, "Connected"

    .line 373
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    return-void
.end method

.method private execute(Ljava/lang/String;)V
    .locals 6

    .line 447
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 454
    :try_start_0
    iget-object v3, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {v3, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 455
    iget-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {p1}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 456
    :try_start_1
    iget-boolean v2, p0, Lorg/h2/tools/Shell;->listMode:Z

    invoke-direct {p0, p1, v2}, Lorg/h2/tools/Shell;->printResult(Ljava/sql/ResultSet;Z)I

    move-result v2

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, " row, "

    goto :goto_0

    :cond_1
    const-string v1, " rows, "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_2

    .line 461
    :cond_2
    :try_start_2
    iget-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    invoke-interface {p1}, Ljava/sql/Statement;->getUpdateCount()I

    move-result p1

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    sub-long/2addr v3, v0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Update count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object p1, v2

    .line 466
    :goto_1
    :try_start_3
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    return-void

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/ResultSet;)V

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 470
    iget-boolean v0, p0, Lorg/h2/tools/Shell;->listMode:Z

    if-eqz v0, :cond_3

    .line 471
    iget-object v0, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_3
    return-void
.end method

.method private loadRow(Ljava/sql/ResultSet;ILjava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/sql/ResultSet;",
            "I",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 516
    new-array v0, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 518
    invoke-interface {p1, v4}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v5, "null"

    :cond_0
    const/4 v6, 0x1

    if-le p2, v6, :cond_1

    .line 523
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    if-le v7, v8, :cond_1

    .line 524
    iget v3, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-virtual {v5, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    .line 527
    :cond_1
    aput-object v5, v0, v2

    move v2, v4

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v3
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/h2/tools/Shell;

    invoke-direct {v0}, Lorg/h2/tools/Shell;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/Shell;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private printResult(Ljava/sql/ResultSet;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 479
    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->printResultAsList(Ljava/sql/ResultSet;)I

    move-result p1

    return p1

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->printResultAsTable(Ljava/sql/ResultSet;)I

    move-result p1

    return p1
.end method

.method private printResultAsList(Ljava/sql/ResultSet;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 565
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 567
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    .line 568
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    add-int/lit8 v6, v4, 0x1

    .line 570
    invoke-interface {v0, v6}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    .line 571
    aput-object v7, v2, v4

    .line 572
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v4, v6

    goto :goto_0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 576
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    const/16 v7, 0xa

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 578
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    const-string v6, ""

    .line 580
    invoke-direct {p0, v6}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v1, :cond_4

    if-lez v6, :cond_2

    .line 584
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 586
    :cond_2
    aget-object v8, v2, v6

    .line 587
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    :goto_3
    if-ge v8, v5, :cond_3

    const/16 v9, 0x20

    .line 589
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    const-string v8, ": "

    .line 591
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p1, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 593
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-nez v4, :cond_8

    :goto_4
    if-ge v3, v1, :cond_7

    if-lez v3, :cond_6

    .line 598
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 600
    :cond_6
    aget-object p1, v2, v3

    .line 601
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 603
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_8
    return v4
.end method

.method private printResultAsTable(Ljava/sql/ResultSet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 485
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    .line 488
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 490
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    add-int/lit8 v6, v5, 0x1

    .line 492
    invoke-interface {v0, v6}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    .line 493
    :cond_0
    aput-object v7, v3, v5

    move v5, v6

    goto :goto_0

    .line 495
    :cond_1
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 497
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 499
    invoke-direct {p0, p1, v1, v2}, Lorg/h2/tools/Shell;->loadRow(Ljava/sql/ResultSet;ILjava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v0, v3

    const/16 v3, 0x1388

    if-le v4, v3, :cond_2

    .line 501
    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Shell;->printRows(Ljava/util/ArrayList;I)[I

    .line 502
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 505
    :cond_3
    invoke-direct {p0, v2, v1}, Lorg/h2/tools/Shell;->printRows(Ljava/util/ArrayList;I)[I

    .line 506
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz v0, :cond_4

    const-string p1, "(data is partially truncated)"

    .line 508
    invoke-direct {p0, p1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    :cond_4
    return v4
.end method

.method private printRows(Ljava/util/ArrayList;I)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    .line 534
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_2

    .line 537
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 538
    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 541
    iget v3, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 543
    :cond_1
    aput v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 546
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, p2, :cond_5

    const/16 v5, 0x20

    if-lez v4, :cond_3

    .line 549
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v6, 0x7c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    :cond_3
    aget-object v6, v2, v4

    .line 552
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, p2, -0x1

    if-ge v4, v7, :cond_4

    .line 554
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_4
    aget v7, v0, v4

    if-ge v6, v7, :cond_4

    .line 555
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 559
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private println(Ljava/lang/String;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lorg/h2/tools/Shell;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    iget-object p1, p0, Lorg/h2/tools/Shell;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method private promptLoop()V
    .locals 8

    const-string v0, ""

    .line 196
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome to H2 Shell "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/engine/Constants;->getFullVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "Exit with Ctrl+C"

    .line 198
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V

    .line 203
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_1

    .line 204
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 208
    :goto_1
    :try_start_0
    iget-object v2, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-nez v2, :cond_2

    .line 209
    invoke-direct {p0}, Lorg/h2/tools/Shell;->connect()V

    .line 210
    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V

    :cond_2
    if-nez v1, :cond_3

    const-string v2, "sql> "

    .line 213
    invoke-virtual {p0, v2}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v2, "...> "

    .line 215
    invoke-virtual {p0, v2}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 217
    :goto_2
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_a

    .line 221
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const-string v4, ";"

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_6

    const/16 v7, 0x3b

    .line 227
    invoke-virtual {v2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v2, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 230
    :cond_6
    invoke-static {v3}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "exit"

    .line 231
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "quit"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto/16 :goto_a

    :cond_7
    const-string v7, "help"

    .line 233
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "?"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_9

    :cond_8
    const-string v7, "list"

    .line 235
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 236
    iget-boolean v2, p0, Lorg/h2/tools/Shell;->listMode:Z

    xor-int/2addr v2, v6

    iput-boolean v2, p0, Lorg/h2/tools/Shell;->listMode:Z

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result list mode is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/h2/tools/Shell;->listMode:Z

    if-eqz v3, :cond_9

    const-string v3, "on"

    goto :goto_3

    :cond_9
    const-string v3, "off"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v7, "history"

    .line 238
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 239
    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v5, v2, :cond_b

    .line 240
    iget-object v3, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/16 v4, 0xa

    const/16 v6, 0x20

    .line 241
    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 244
    :cond_b
    iget-object v2, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    const-string v2, "To re-run a statement, type the number and press and enter"

    .line 245
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string v2, "No history"

    .line 247
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string v7, "autocommit"

    .line 249
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v2, "autocommit"

    .line 250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    .line 251
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 252
    iget-object v2, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v6}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_5

    :cond_e
    const-string v3, "false"

    .line 253
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 254
    iget-object v2, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v2, v5}, Ljava/sql/Connection;->setAutoCommit(Z)V

    goto :goto_5

    :cond_f
    const-string v2, "Usage: autocommit [true|false]"

    .line 256
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 258
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Autocommit is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v3}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    const-string v7, "maxwidth"

    .line 259
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    const-string v2, "maxwidth"

    .line 260
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 262
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/h2/tools/Shell;->maxColumnSize:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_0
    :try_start_2
    const-string v2, "Usage: maxwidth <integer value>"

    .line 264
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 266
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum column width is now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lorg/h2/tools/Shell;->maxColumnSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_11
    if-nez v1, :cond_14

    .line 270
    invoke-static {v2}, Lorg/h2/util/StringUtils;->isNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 271
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    .line 272
    iget-object v3, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v2, v3, :cond_12

    goto :goto_7

    .line 275
    :cond_12
    iget-object v1, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 277
    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    move-object v2, v1

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_8

    :cond_13
    :goto_7
    const-string v2, "Not found"

    .line 273
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_8

    .line 284
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_15
    :goto_8
    if-eqz v4, :cond_17

    if-eqz v6, :cond_16

    .line 288
    iget-object v1, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 289
    iget-object v1, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_16

    .line 290
    iget-object v1, p0, Lorg/h2/tools/Shell;->history:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    :cond_16
    invoke-direct {p0, v2}, Lorg/h2/tools/Shell;->execute(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v1, v2

    goto/16 :goto_1

    .line 234
    :cond_18
    :goto_9
    invoke-direct {p0}, Lorg/h2/tools/Shell;->showHelp()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_a

    :catch_2
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 309
    :cond_19
    :goto_a
    iget-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz v0, :cond_1a

    .line 311
    :try_start_3
    iget-object v0, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {v0}, Ljava/sql/Connection;->close()V

    const-string v0, "Connection closed"

    .line 312
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintStream;)V

    :cond_1a
    :goto_b
    return-void

    :catch_4
    move-exception v1

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQL Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 441
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Aborted"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private readPassword()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.lang.System.console"

    .line 393
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/h2/util/Utils;->callStaticMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Password  "

    .line 394
    invoke-virtual {p0, v2}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    const-string v2, "readPassword"

    .line 395
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    check-cast v1, [C

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    return-object v0

    .line 400
    :catch_0
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "Password hider"

    invoke-direct {v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 401
    iput-boolean v0, p0, Lorg/h2/tools/Shell;->stopHide:Z

    .line 402
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-string v0, "Password  > "

    .line 403
    invoke-virtual {p0, v0}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0}, Lorg/h2/tools/Shell;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 405
    iput-boolean v2, p0, Lorg/h2/tools/Shell;->stopHide:Z

    .line 407
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v1, "\u0008\u0008"

    .line 411
    invoke-virtual {p0, v1}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    return-object v0
.end method

.method private showHelp()V
    .locals 1

    const-string v0, "Commands are case insensitive; SQL statements end with \';\'"

    .line 185
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "help or ?      Display this help"

    .line 186
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "list           Toggle result list / stack trace mode"

    .line 187
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "maxwidth       Set maximum column width (default is 100)"

    .line 188
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "autocommit     Enable or disable autocommit"

    .line 189
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "history        Show the last 20 statements"

    .line 190
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, "quit or exit   Close the connection and exit"

    .line 191
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 192
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected print(Ljava/lang/String;)V
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/h2/tools/Shell;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lorg/h2/tools/Shell;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-void
.end method

.method public run()V
    .locals 2

    .line 422
    :goto_0
    iget-boolean v0, p0, Lorg/h2/tools/Shell;->stopHide:Z

    if-nez v0, :cond_0

    const-string v0, "\u0008\u0008><"

    .line 423
    invoke-virtual {p0, v0}, Lorg/h2/tools/Shell;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0xa

    .line 425
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs runTool(Ljava/sql/Connection;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    .line 180
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    .line 181
    invoke-virtual {p0, p2}, Lorg/h2/tools/Shell;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method public varargs runTool([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-eqz p1, :cond_9

    .line 120
    array-length v5, p1

    if-ge v3, v5, :cond_9

    .line 121
    aget-object v5, p1, v3

    const-string v6, "-url"

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 123
    aget-object v2, p1, v3

    goto :goto_1

    :cond_0
    const-string v6, "-user"

    .line 124
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 125
    aget-object v0, p1, v3

    goto :goto_1

    :cond_1
    const-string v6, "-password"

    .line 126
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 127
    aget-object v1, p1, v3

    goto :goto_1

    :cond_2
    const-string v6, "-driver"

    .line 128
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 129
    aget-object v5, p1, v3

    .line 130
    invoke-static {v5}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_1

    :cond_3
    const-string v6, "-sql"

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 132
    aget-object v4, p1, v3

    goto :goto_1

    :cond_4
    const-string v6, "-properties"

    .line 133
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    .line 134
    aget-object v5, p1, v3

    iput-object v5, p0, Lorg/h2/tools/Shell;->serverPropertiesDir:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v6, "-help"

    .line 135
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "-?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v6, "-list"

    .line 138
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 139
    iput-boolean v7, p0, Lorg/h2/tools/Shell;->listMode:Z

    goto :goto_1

    .line 141
    :cond_7
    invoke-virtual {p0, v5}, Lorg/h2/tools/Shell;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/2addr v3, v7

    goto :goto_0

    .line 136
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/Shell;->showUsage()V

    return-void

    :cond_9
    if-eqz v2, :cond_a

    .line 145
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    .line 146
    invoke-static {v2, v0, v1}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    .line 147
    iget-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Shell;->stat:Ljava/sql/Statement;

    :cond_a
    if-nez v4, :cond_b

    .line 150
    invoke-direct {p0}, Lorg/h2/tools/Shell;->promptLoop()V

    goto :goto_4

    .line 152
    :cond_b
    new-instance p1, Lorg/h2/util/ScriptReader;

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 154
    :goto_3
    invoke-virtual {p1}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 160
    iget-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    if-eqz p1, :cond_c

    .line 161
    iget-object p1, p0, Lorg/h2/tools/Shell;->conn:Ljava/sql/Connection;

    invoke-interface {p1}, Ljava/sql/Connection;->close()V

    :cond_c
    :goto_4
    return-void

    .line 158
    :cond_d
    invoke-direct {p0, v0}, Lorg/h2/tools/Shell;->execute(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setErr(Ljava/io/PrintStream;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lorg/h2/tools/Shell;->err:Ljava/io/PrintStream;

    return-void
.end method

.method public setIn(Ljava/io/InputStream;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/h2/tools/Shell;->in:Ljava/io/InputStream;

    return-void
.end method

.method public setInReader(Ljava/io/BufferedReader;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/h2/tools/Shell;->reader:Ljava/io/BufferedReader;

    return-void
.end method
