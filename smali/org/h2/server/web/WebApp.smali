.class public Lorg/h2/server/web/WebApp;
.super Ljava/lang/Object;
.source "WebApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/server/web/WebApp$IndexInfo;
    }
.end annotation


# instance fields
.field protected attributes:Ljava/util/Properties;

.field protected cache:Z

.field protected headerLanguage:Ljava/lang/String;

.field protected mimeType:Ljava/lang/String;

.field private profiler:Lorg/h2/util/Profiler;

.field protected final server:Lorg/h2/server/web/WebServer;

.field protected session:Lorg/h2/server/web/WebSession;

.field protected stop:Z


# direct methods
.method constructor <init>(Lorg/h2/server/web/WebServer;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    return-void
.end method

.method private static addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I
    .locals 6

    .line 484
    invoke-virtual {p1}, Lorg/h2/bnf/context/DbTableOrView;->getColumns()[Lorg/h2/bnf/context/DbColumn;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 485
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 486
    aget-object v1, p1, v0

    .line 487
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x20

    .line 488
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    :cond_0
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_1

    const-string v3, ", 1, 1"

    goto :goto_1

    :cond_1
    const-string v3, ", 2, 2"

    .line 493
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setNode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", \'column\', \'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'javascript:ins(\\\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\')\');\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    if-eqz p0, :cond_2

    if-eqz p4, :cond_2

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 2, 2, \'type\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbColumn;->getDataType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', null);\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return p3
.end method

.method private static addDatabaseMetaData(Lorg/h2/tools/SimpleResultSet;Ljava/sql/DatabaseMetaData;)V
    .locals 11

    .line 1222
    const-class v0, Ljava/sql/DatabaseMetaData;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1223
    new-instance v1, Lorg/h2/server/web/WebApp$2;

    invoke-direct {v1}, Lorg/h2/server/web/WebApp$2;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1229
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1230
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 1232
    :try_start_0
    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1233
    new-array v8, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "meta."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v6

    invoke-virtual {p0, v8}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 1237
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "meta."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v7

    .line 1235
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "meta."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v6

    invoke-virtual {p0, v5}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private static addIndexes(ZLjava/sql/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, p3

    move-object v3, p2

    .line 538
    :try_start_0
    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p2

    .line 544
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_6

    const-string p3, "INDEX_NAME"

    .line 545
    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 546
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/server/web/WebApp$IndexInfo;

    if-nez v1, :cond_5

    const-string v1, "TYPE"

    .line 548
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const-string v0, " (${text.tree.hashed})"

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    const-string v0, ""

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 560
    new-instance v1, Lorg/h2/server/web/WebApp$IndexInfo;

    invoke-direct {v1}, Lorg/h2/server/web/WebApp$IndexInfo;-><init>()V

    .line 561
    iput-object p3, v1, Lorg/h2/server/web/WebApp$IndexInfo;->name:Ljava/lang/String;

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NON_UNIQUE"

    invoke-interface {p1, v3}, Ljava/sql/ResultSet;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "${text.tree.nonUnique}"

    goto :goto_2

    :cond_4
    const-string v3, "${text.tree.unique}"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    iput-object v0, v1, Lorg/h2/server/web/WebApp$IndexInfo;->type:Ljava/lang/String;

    const-string v0, "COLUMN_NAME"

    .line 565
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    .line 566
    invoke-virtual {p2, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "COLUMN_NAME"

    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    goto/16 :goto_0

    .line 572
    :cond_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    .line 573
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_a

    if-eqz p0, :cond_7

    const-string p1, ", 1, 1"

    goto :goto_3

    :cond_7
    const-string p1, ", 2, 1"

    :goto_3
    if-eqz p0, :cond_8

    const-string p3, ", 2, 1"

    goto :goto_4

    :cond_8
    const-string p3, ", 3, 1"

    :goto_4
    if-eqz p0, :cond_9

    const-string p0, ", 3, 2"

    goto :goto_5

    :cond_9
    const-string p0, ", 4, 2"

    .line 577
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", \'index_az\', \'${text.tree.indexes}\', null);\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    .line 580
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/server/web/WebApp$IndexInfo;

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \'index\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/h2/server/web/WebApp$IndexInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', null);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p5, p5, 0x1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \'type\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lorg/h2/server/web/WebApp$IndexInfo;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', null);\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p5, v0

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", \'type\', \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/h2/server/web/WebApp$IndexInfo;->columns:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', null);\n"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p5, v0

    goto/16 :goto_6

    :cond_a
    return p5

    :catch_0
    return p5
.end method

.method private addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    if-nez v0, :cond_0

    return p4

    .line 603
    :cond_0
    iget-object v3, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v9

    .line 604
    iget-object v3, v1, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3}, Lorg/h2/server/web/WebSession;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v10

    xor-int/lit8 v3, p2, 0x1

    const/4 v12, 0x1

    if-nez p2, :cond_2

    .line 606
    iget-boolean v4, v0, Lorg/h2/bnf/context/DbSchema;->isSystem:Z

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v13, 0x1

    .line 607
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_3

    const-string v5, "1"

    goto :goto_2

    :cond_3
    const-string v5, "2"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v12

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 2, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 609
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v6

    if-nez v6, :cond_4

    return p4

    .line 613
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->isOracle()Z

    move-result v15

    .line 614
    array-length v3, v6

    sget v4, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_TABLES_LIST_INDEXES:I

    if-ge v3, v4, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    .line 615
    :goto_3
    array-length v5, v6

    move/from16 v3, p4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v5, :cond_b

    aget-object v17, v6, v4

    .line 616
    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbTableOrView;->isView()Z

    move-result v2

    if-eqz v2, :cond_6

    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    :goto_5
    move-object v11, v7

    goto/16 :goto_7

    .line 620
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_7

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 624
    :cond_7
    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setNode("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " \'table\', \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\', \'javascript:ins(\\\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\',true)\');\n"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v3, 0x1

    if-nez p2, :cond_9

    if-eqz v13, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v20, v6

    move v3, v11

    goto :goto_5

    .line 630
    :cond_9
    :goto_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p2

    move v1, v3

    move-object/from16 v3, v17

    move/from16 v18, v4

    move-object/from16 v4, p3

    move/from16 v19, v5

    move v5, v11

    move-object v11, v6

    move/from16 v6, v16

    move-object/from16 v20, v11

    move-object v11, v7

    move-object v7, v12

    .line 631
    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I

    move-result v7

    if-nez v15, :cond_a

    if-eqz v16, :cond_a

    .line 634
    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    move/from16 v2, p2

    move-object v3, v10

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addIndexes(ZLjava/sql/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;I)I

    move-result v7

    .line 637
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addTable(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ");\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v7

    :goto_7
    add-int/lit8 v4, v18, 0x1

    move-object v7, v11

    move/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v1, p0

    const/4 v12, 0x1

    goto/16 :goto_4

    :cond_b
    move v1, v3

    move-object v11, v7

    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getTables()[Lorg/h2/bnf/context/DbTableOrView;

    move-result-object v10

    .line 644
    array-length v12, v10

    move v13, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v12, :cond_11

    aget-object v15, v10, v1

    .line 645
    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->isView()Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_b

    .line 649
    :cond_c
    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->getQuotedName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_d

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->getSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v4

    iget-object v4, v4, Lorg/h2/bnf/context/DbSchema;->quotedName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    :cond_d
    invoke-static {v2}, Lorg/h2/server/web/WebApp;->escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setNode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " \'view\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', \'javascript:ins(\\\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\\\',true)\');\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v13, 0x1

    if-eqz p2, :cond_10

    .line 659
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v2, p2

    move-object v3, v15

    move-object/from16 v4, p3

    move/from16 v6, v16

    move-object/from16 v7, v17

    .line 660
    invoke-static/range {v2 .. v7}, Lorg/h2/server/web/WebApp;->addColumns(ZLorg/h2/bnf/context/DbTableOrView;Ljava/lang/StringBuilder;IZLjava/lang/StringBuilder;)I

    move-result v2

    .line 662
    invoke-virtual/range {p1 .. p1}, Lorg/h2/bnf/context/DbSchema;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME=?"

    .line 665
    invoke-interface {v9, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 667
    :try_start_1
    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v4, v6, v3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 668
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v3

    .line 669
    invoke-interface {v3}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v5, "SQL"

    .line 670
    invoke-interface {v3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNode("

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \'type\', \'"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\', null);\n"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    .line 677
    :cond_e
    invoke-interface {v3}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v4, v3

    :goto_9
    invoke-static {v4}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw v0

    .line 682
    :cond_f
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTable(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lorg/h2/bnf/context/DbTableOrView;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\', "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ");\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v13, v2

    goto :goto_b

    :cond_10
    move v13, v5

    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_11
    return v13
.end method

.method private admin()Ljava/lang/String;
    .locals 4

    .line 341
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "port"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v3}, Lorg/h2/server/web/WebServer;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "allowOthers"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v3}, Lorg/h2/server/web/WebServer;->getAllowOthers()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "ssl"

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2}, Lorg/h2/server/web/WebServer;->getSSL()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "sessions"

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2}, Lorg/h2/server/web/WebServer;->getSessions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "admin.jsp"

    return-object v0
.end method

.method private adminSave()Ljava/lang/String;
    .locals 4

    .line 350
    :try_start_0
    new-instance v0, Lorg/h2/util/SortedProperties;

    invoke-direct {v0}, Lorg/h2/util/SortedProperties;-><init>()V

    .line 351
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "port"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "webPort"

    .line 352
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setPort(I)V

    .line 354
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "allowOthers"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "webAllowOthers"

    .line 356
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 357
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setAllowOthers(Z)V

    .line 358
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "webSSL"

    .line 360
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v2, v1}, Lorg/h2/server/web/WebServer;->setSSL(Z)V

    .line 362
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    .line 366
    :goto_0
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->admin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adminStartTranslate()Ljava/lang/String;
    .locals 3

    .line 416
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v1, v1, Lorg/h2/server/web/WebSession;->map:Ljava/util/HashMap;

    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 419
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->startTranslate(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "translationFile"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "helpTranslate.jsp"

    return-object v0
.end method

.method private autoCompleteList()Ljava/lang/String;
    .locals 11

    .line 251
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    const-string v4, ";"

    .line 259
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v0

    .line 262
    :goto_1
    new-instance v5, Lorg/h2/util/ScriptReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 263
    invoke-virtual {v5, v2}, Lorg/h2/util/ScriptReader;->setSkipRemarks(Z)V

    const-string v4, ""

    .line 266
    :goto_2
    invoke-virtual {v5}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f

    const-string v6, ""

    .line 273
    invoke-virtual {v5}, Lorg/h2/util/ScriptReader;->isInsideRemark()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 274
    invoke-virtual {v5}, Lorg/h2/util/ScriptReader;->isBlockRemark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1#(End Remark)# */\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 277
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1#(Newline)#\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 281
    :cond_3
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-lez v5, :cond_4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-gt v5, v6, :cond_4

    .line 282
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 284
    :cond_4
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    .line 287
    :cond_5
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v5}, Lorg/h2/server/web/WebSession;->getBnf()Lorg/h2/bnf/Bnf;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v0, "autoCompleteList.jsp"

    return-object v0

    .line 291
    :cond_6
    invoke-virtual {v5, v4}, Lorg/h2/bnf/Bnf;->getNextTokenList(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    const-string v7, ""

    .line 293
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 294
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 295
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_7

    if-lt v2, v6, :cond_7

    const/16 v4, 0x27

    if-eq v2, v4, :cond_7

    const/16 v4, 0x22

    if-eq v2, v4, :cond_7

    const-string v7, " "

    .line 300
    :cond_7
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Lorg/h2/util/New;->arrayList(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 301
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 302
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 303
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_8

    goto :goto_4

    .line 308
    :cond_8
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 309
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v1, :cond_9

    .line 310
    invoke-static {v6}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    invoke-static {v5}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    :cond_9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "."

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    :cond_a
    invoke-static {v6}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "+"

    const-string v10, " "

    .line 317
    invoke-static {v6, v9, v10}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 318
    invoke-static {v5}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "+"

    const-string v10, " "

    .line 319
    invoke-static {v5, v9, v10}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 322
    :cond_b
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v1, "\n"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    const-string v0, "1#(Newline)#\n"

    .line 324
    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 326
    :cond_d
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 327
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "|"

    .line 328
    invoke-virtual {v0, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_5

    .line 331
    :cond_e
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    :goto_6
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "autoCompleteList"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_f
    move-object v4, v6

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 335
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_7
    const-string v0, "autoCompleteList.jsp"

    return-object v0
.end method

.method private editResult()Ljava/lang/String;
    .locals 11

    .line 1066
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v0, v0, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    .line 1067
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "row"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1068
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "op"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v6, :cond_4

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    .line 1074
    :try_start_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->moveToInsertRow()V

    goto :goto_1

    .line 1076
    :cond_1
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->absolute(I)Z

    :goto_1
    const/4 v2, 0x0

    .line 1078
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v7

    invoke-interface {v7}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 1079
    iget-object v7, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1080
    invoke-direct {p0, v7, v0, v2}, Lorg/h2/server/web/WebApp;->unescapeData(Ljava/lang/String;Ljava/sql/ResultSet;I)V

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    .line 1083
    invoke-interface {v0}, Ljava/sql/ResultSet;->insertRow()V

    goto :goto_3

    .line 1085
    :cond_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->updateRow()V

    goto :goto_3

    :cond_4
    const/4 v6, 0x2

    if-ne v2, v6, :cond_5

    .line 1088
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->absolute(I)Z

    .line 1089
    invoke-interface {v0}, Ljava/sql/ResultSet;->deleteRow()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<br />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v2

    invoke-direct {p0, v5, v0, v2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/WebApp;->formatAsError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1097
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@edit "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "resultSetSQL"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1098
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v6

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, -0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lorg/h2/server/web/WebApp;->getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1100
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "result.jsp"

    return-object v0
.end method

.method private static escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1773
    invoke-interface {p0, p1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "<i>null</i>"

    return-object p0

    .line 1776
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x186a0

    if-le v1, v2, :cond_2

    .line 1778
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result p0

    invoke-static {p0}, Lorg/h2/server/web/WebApp;->isBinary(I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1779
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "... ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ${text.result.bytes})"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1782
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "... ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ${text.result.characters})"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1785
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<div style=\'display: none\'>=+</div>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "null"

    .line 1786
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "= "

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "=+"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const-string p0, ""

    .line 1788
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, ""

    return-object p0

    .line 1792
    :cond_4
    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1787
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<div style=\'display: none\'>= </div>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 508
    invoke-static {p0}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/util/StringUtils;->urlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private executeLoop(Ljava/sql/Connection;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1429
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 1431
    :goto_0
    iget-boolean v6, v0, Lorg/h2/server/web/WebApp;->stop:Z

    const/16 v7, 0x3f

    const/4 v8, 0x1

    if-nez v6, :cond_2

    .line 1432
    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_2

    .line 1436
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "?/*rnd*/"

    invoke-static {v6, v7}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1437
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/*rnd*/"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1440
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1445
    :cond_2
    :goto_2
    new-instance v5, Ljava/util/Random;

    const-wide/16 v9, 0x1

    invoke-direct {v5, v9, v10}, Ljava/util/Random;-><init>(J)V

    .line 1446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-string v6, "@statement"

    .line 1447
    invoke-static {v4, v6}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "@statement"

    .line 1448
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1450
    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v6

    const/4 v11, 0x0

    .line 1451
    :goto_3
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    if-nez v12, :cond_e

    if-ge v11, v1, :cond_e

    .line 1453
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v4

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 1454
    invoke-virtual {v13, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 1455
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-ne v14, v8, :cond_3

    .line 1456
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    move-object v13, v7

    goto :goto_6

    .line 1458
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :goto_6
    const/16 v7, 0x3f

    goto :goto_4

    .line 1461
    :cond_4
    invoke-interface {v6, v13}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1462
    invoke-interface {v6}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v7

    .line 1463
    :goto_7
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    if-nez v12, :cond_5

    invoke-interface {v7}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_7

    .line 1466
    :cond_5
    invoke-interface {v7}, Ljava/sql/ResultSet;->close()V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    const/16 v7, 0x3f

    goto :goto_3

    :cond_7
    move-object/from16 v6, p1

    .line 1471
    invoke-interface {v6, v4}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v6

    const/4 v7, 0x0

    .line 1472
    :goto_8
    iget-boolean v11, v0, Lorg/h2/server/web/WebApp;->stop:Z

    if-nez v11, :cond_d

    if-ge v7, v1, :cond_d

    const/4 v11, 0x0

    .line 1473
    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 1474
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1475
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v8, :cond_8

    add-int/lit8 v12, v11, 0x1

    .line 1476
    invoke-virtual {v5, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    invoke-interface {v6, v12, v13}, Ljava/sql/PreparedStatement;->setInt(II)V

    goto :goto_a

    :cond_8
    add-int/lit8 v12, v11, 0x1

    .line 1478
    invoke-interface {v6, v12, v7}, Ljava/sql/PreparedStatement;->setInt(II)V

    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1481
    :cond_9
    iget-object v11, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v11}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v11

    invoke-virtual {v11}, Lorg/h2/bnf/context/DbContents;->isSQLite()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1483
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->executeUpdate()I

    goto :goto_c

    .line 1485
    :cond_a
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->execute()Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1486
    invoke-interface {v6}, Ljava/sql/PreparedStatement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v11

    .line 1487
    :goto_b
    iget-boolean v12, v0, Lorg/h2/server/web/WebApp;->stop:Z

    if-nez v12, :cond_b

    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_b

    .line 1490
    :cond_b
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V

    :cond_c
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    const/4 v3, 0x1

    .line 1495
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v9

    .line 1496
    new-instance v7, Lorg/h2/util/StatementBuilder;

    invoke-direct {v7}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 1497
    invoke-virtual {v7, v5, v6}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    const-string v6, " ms: "

    invoke-virtual {v5, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v5

    int-to-long v8, v1

    invoke-virtual {v5, v8, v9}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v5, " * "

    invoke-virtual {v1, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    if-eqz v3, :cond_f

    const-string v1, "(Prepared) "

    .line 1499
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_d

    :cond_f
    const-string v1, "(Statement) "

    .line 1501
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_d
    const/16 v1, 0x28

    .line 1503
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 1504
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, ", "

    .line 1505
    invoke-virtual {v7, v3}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    if-nez v2, :cond_10

    const-string v2, "i"

    goto :goto_f

    :cond_10
    const-string v2, "rnd"

    .line 1506
    :goto_f
    invoke-virtual {v7, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_e

    :cond_11
    const-string v1, ") "

    .line 1508
    invoke-virtual {v7, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatAsError(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<div class=\"error\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</div>"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getComboBox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "<option value=\""

    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, " selected"

    .line 182
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v4, 0x3e

    .line 184
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</option>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getComboBox([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const-string v5, "<option value=\""

    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v2

    invoke-static {v5}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    aget-object v5, v4, v2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, " selected"

    .line 198
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v5, 0x3e

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</option>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommandHistoryString()Ljava/lang/String;
    .locals 5

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1513
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getCommandHistory()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "<table cellspacing=0 cellpadding=0><tr><th></th><th>Command</th></tr>"

    .line 1514
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1516
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 1517
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "<tr><td><a href=\"getHistory.do?id="

    .line 1518
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "&jsessionid=${sessionId}\" target=\"h2query\" >"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "<img width=16 height=16 src=\"ico_write.gif\" onmouseover = \"this.className =\'icon_hover\'\" "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.edit}\" "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "title=\"${text.resultEdit.edit}\" border=\"1\"/></a>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</td><td>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</td></tr>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "</table>"

    .line 1530
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistory()Ljava/lang/String;
    .locals 3

    .line 475
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 476
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebSession;->getCommand(I)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "query"

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query.jsp"

    return-object v0
.end method

.method private getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;
    .locals 3

    .line 938
    instance-of v0, p1, Lorg/h2/jdbc/JdbcSQLException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getErrorCode()I

    move-result v0

    const v2, 0x15fe6

    if-ne v0, v2, :cond_0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "${text.login.driverNotFound}<br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, p1, p2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 942
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMaxrows()I
    .locals 2

    .line 1256
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "maxrows"

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1257
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getMetaResultSet(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1106
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    const-string v1, "@best_row_identifier"

    .line 1107
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    .line 1108
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1109
    aget-object p2, p1, v3

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    aget-object p2, p1, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1110
    :goto_0
    aget-object v1, p1, v2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v6, v1

    .line 1111
    :goto_1
    aget-object v1, p1, v7

    aget-object v2, p1, v5

    aget-object v3, p1, v4

    move v4, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v1, "@catalogs"

    .line 1112
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getCatalogs()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v1, "@columns"

    .line 1114
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1115
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1116
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object v2, p1, v4

    aget-object p1, p1, v3

    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v1, "@column_privileges"

    .line 1117
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1118
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1119
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object v2, p1, v4

    aget-object p1, p1, v3

    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v1, "@cross_references"

    .line 1120
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1121
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1122
    aget-object v1, p1, v7

    aget-object p2, p1, v5

    aget-object v4, p1, v4

    aget-object v5, p1, v3

    aget-object v6, p1, v2

    const/4 v2, 0x6

    aget-object p1, p1, v2

    move-object v2, p2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-interface/range {v0 .. v6}, Ljava/sql/DatabaseMetaData;->getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v1, "@exported_keys"

    .line 1123
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1124
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1125
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v1, "@imported_keys"

    .line 1126
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1127
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1128
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v1, "@index_info"

    .line 1129
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1130
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1131
    aget-object p2, p1, v3

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_2

    :cond_9
    aget-object p2, p1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 1132
    :goto_2
    aget-object v1, p1, v2

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    move v6, v1

    .line 1133
    :goto_3
    aget-object v1, p1, v7

    aget-object v2, p1, v5

    aget-object v3, p1, v4

    move v4, p2

    move v5, v6

    invoke-interface/range {v0 .. v5}, Ljava/sql/DatabaseMetaData;->getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_b
    const-string v1, "@primary_keys"

    .line 1134
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1135
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1136
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_c
    const-string v1, "@procedures"

    .line 1137
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1138
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1139
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v1, "@procedure_columns"

    .line 1140
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1141
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1142
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object v2, p1, v4

    aget-object p1, p1, v3

    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_e
    const-string v1, "@schemas"

    .line 1143
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1144
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getSchemas()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v1, "@tables"

    .line 1145
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2c

    const/4 v8, 0x0

    if-eqz v1, :cond_11

    .line 1146
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1147
    aget-object p2, p1, v3

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    aget-object p2, p1, v3

    invoke-static {p2, v2, v6}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v8

    .line 1148
    :goto_4
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1, v8}, Ljava/sql/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_11
    const-string v1, "@table_privileges"

    .line 1149
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1150
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1151
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_12
    const-string v1, "@table_types"

    .line 1152
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1153
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getTableTypes()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_13
    const-string v1, "@type_info"

    .line 1154
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1155
    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getTypeInfo()Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_14
    const-string v1, "@udts"

    .line 1156
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1157
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1159
    aget-object p2, p1, v3

    if-nez p2, :cond_15

    goto :goto_6

    .line 1162
    :cond_15
    aget-object p2, p1, v3

    invoke-static {p2, v2, v6}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p2

    .line 1163
    array-length v1, p2

    new-array v8, v1, [I

    .line 1164
    :goto_5
    array-length v1, p2

    if-ge v6, v1, :cond_16

    .line 1165
    aget-object v1, p2, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1168
    :cond_16
    :goto_6
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1, v8}, Ljava/sql/DatabaseMetaData;->getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_17
    const-string v1, "@version_columns"

    .line 1169
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1170
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1171
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_18
    const-string v1, "@memory"

    .line 1172
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xc

    if-eqz v1, :cond_19

    .line 1173
    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {p1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string p2, "Type"

    .line 1174
    invoke-virtual {p1, p2, v2, v6, v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p2, "KB"

    .line 1175
    invoke-virtual {p1, p2, v2, v6, v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1176
    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Used Memory"

    aput-object v0, p2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/Utils;->getMemoryUsed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    invoke-virtual {p1, p2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1177
    new-array p2, v5, [Ljava/lang/Object;

    const-string v0, "Free Memory"

    aput-object v0, p2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/h2/util/Utils;->getMemoryFree()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v7

    invoke-virtual {p1, p2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    return-object p1

    :cond_19
    const-string v1, "@info"

    .line 1179
    invoke-static {p2, v1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1180
    new-instance p2, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {p2}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v1, "KEY"

    .line 1181
    invoke-virtual {p2, v1, v2, v6, v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v1, "VALUE"

    .line 1182
    invoke-virtual {p2, v1, v2, v6, v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1183
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.getCatalog"

    aput-object v2, v1, v6

    invoke-interface {p1}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1184
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.getAutoCommit"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->getAutoCommit()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1185
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.getTransactionIsolation"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1186
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.getWarnings"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->getWarnings()Ljava/sql/SQLWarning;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1189
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->getTypeMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    .line 1191
    invoke-virtual {v1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    :goto_7
    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "conn.getTypeMap"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    invoke-virtual {p2, v2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1194
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.isReadOnly"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->isReadOnly()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1195
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "conn.getHoldability"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/sql/Connection;->getHoldability()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-virtual {p2, v1}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1196
    invoke-static {p2, v0}, Lorg/h2/server/web/WebApp;->addDatabaseMetaData(Lorg/h2/tools/SimpleResultSet;Ljava/sql/DatabaseMetaData;)V

    return-object p2

    :cond_1a
    const-string p1, "@attributes"

    .line 1198
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1199
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1200
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object v2, p1, v4

    aget-object p1, p1, v3

    invoke-interface {v0, p2, v1, v2, p1}, Ljava/sql/DatabaseMetaData;->getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string p1, "@super_tables"

    .line 1201
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1202
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1203
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_1c
    const-string p1, "@super_types"

    .line 1204
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1205
    invoke-static {p2}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1206
    aget-object p2, p1, v7

    aget-object v1, p1, v5

    aget-object p1, p1, v4

    invoke-interface {v0, p2, v1, p1}, Ljava/sql/DatabaseMetaData;->getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string p1, "@prof_stop"

    .line 1207
    invoke-static {p2, p1}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1208
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    if-eqz p1, :cond_1e

    .line 1209
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    invoke-virtual {p1}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 1210
    new-instance p1, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {p1}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string p2, "Top Stack Trace(s)"

    .line 1211
    invoke-virtual {p1, p2, v2, v6, v6}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1212
    new-array p2, v7, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    invoke-virtual {v0, v4}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v6

    invoke-virtual {p1, p2}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    .line 1213
    iput-object v8, p0, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    return-object p1

    :cond_1e
    return-object v8
.end method

.method private static getParameterResultSet(Ljava/sql/ParameterMetaData;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "No parameter meta data"

    return-object p0

    :cond_0
    const-string v1, "<table cellspacing=0 cellpadding=0>"

    .line 1540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<tr><th>className</th><th>mode</th><th>type</th>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<th>typeName</th><th>precision</th><th>scale</th></tr>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1543
    :goto_0
    invoke-interface {p0}, Ljava/sql/ParameterMetaData;->getParameterCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, "</tr><td>"

    .line 1544
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterClassName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterMode(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getParameterTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getPrecision(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</td><td>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/sql/ParameterMetaData;->getScale(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</td></tr>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "</table>"

    .line 1558
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;
    .locals 17

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    const/4 v11, 0x0

    .line 1264
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1265
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1266
    invoke-static {v1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CREATE"

    .line 1267
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "DROP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ALTER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "RUNSCRIPT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1271
    :cond_0
    iget-object v2, v10, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "jsessionid"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<script type=\"text/javascript\">parent[\'h2menu\'].location=\'tables.do?jsessionid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\';</script>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_1
    iget-object v2, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v2

    if-nez p5, :cond_3

    if-eqz p4, :cond_2

    .line 1278
    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 1283
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2

    goto :goto_1

    :cond_3
    :goto_0
    const/16 v2, 0x3ec

    const/16 v3, 0x3f0

    .line 1279
    invoke-interface {v0, v2, v3}, Ljava/sql/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object v2

    :goto_1
    move-object v13, v2

    .line 1286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "@autocommit_true"

    .line 1291
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1292
    invoke-interface {v0, v5}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const-string v0, "${text.result.autoCommitOn}"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1419
    :goto_2
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v11, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    return-object v0

    :cond_4
    :try_start_1
    const-string v4, "@autocommit_false"

    .line 1294
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5

    .line 1295
    invoke-interface {v0, v6}, Ljava/sql/Connection;->setAutoCommit(Z)V

    const-string v0, "${text.result.autoCommitOff}"

    goto :goto_2

    :cond_5
    const-string v4, "@cancel"

    .line 1297
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1298
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v0, v0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    if-eqz v0, :cond_6

    .line 1300
    invoke-interface {v0}, Ljava/sql/Statement;->cancel()V

    const-string v0, "${text.result.statementWasCanceled}"

    .line 1301
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const-string v0, "${text.result.noRunningStatement}"

    .line 1303
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    :goto_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v4, "@edit"

    .line 1306
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "@edit"

    .line 1308
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1309
    iget-object v4, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v7, "resultSetSQL"

    invoke-virtual {v4, v7, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v14, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x0

    :goto_4
    const-string v4, "@list"

    .line 1311
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "@list"

    .line 1313
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    :goto_5
    const-string v4, "@meta"

    .line 1315
    invoke-static {v1, v4}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "@meta"

    .line 1317
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    const-string v8, "@generated"

    .line 1319
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v6, "@generated"

    .line 1321
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    const/4 v6, 0x1

    goto/16 :goto_7

    :cond_b
    const-string v8, "@history"

    .line 1322
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1323
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getCommandHistoryString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    const-string v8, "@loop"

    .line 1325
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v2, "@loop"

    .line 1326
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    .line 1327
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1328
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1329
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1330
    invoke-direct {v10, v0, v3, v1}, Lorg/h2/server/web/WebApp;->executeLoop(Ljava/sql/Connection;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    const-string v8, "@maxrows"

    .line 1331
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string v0, "@maxrows"

    .line 1332
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1334
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "maxrows"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "${text.result.maxrowsSet}"

    goto/16 :goto_2

    :cond_e
    const-string v8, "@parameter_meta"

    .line 1336
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v2, "@parameter_meta"

    .line 1337
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-interface {v0, v1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    .line 1339
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->getParameterMetaData()Ljava/sql/ParameterMetaData;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/WebApp;->getParameterResultSet(Ljava/sql/ParameterMetaData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1340
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    const-string v8, "@password_hash"

    .line 1341
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v0, "@password_hash"

    .line 1342
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1343
    invoke-static {v0}, Lorg/h2/server/web/WebApp;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1344
    aget-object v1, v0, v6

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/security/SHA256;->getKeyPasswordHash(Ljava/lang/String;[C)[B

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    const-string v8, "@prof_start"

    .line 1346
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1347
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    if-eqz v0, :cond_11

    .line 1348
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    invoke-virtual {v0}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 1350
    :cond_11
    new-instance v0, Lorg/h2/util/Profiler;

    invoke-direct {v0}, Lorg/h2/util/Profiler;-><init>()V

    iput-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    .line 1351
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->profiler:Lorg/h2/util/Profiler;

    invoke-virtual {v0}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;

    const-string v0, "Ok"

    goto/16 :goto_2

    :cond_12
    const-string v8, "@sleep"

    .line 1353
    invoke-static {v1, v8}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v0, "@sleep"

    .line 1354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    .line 1357
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_13
    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v0, v5

    .line 1359
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    const-string v0, "Ok"

    goto/16 :goto_2

    :cond_14
    const-string v5, "@transaction_isolation"

    .line 1361
    invoke-static {v1, v5}, Lorg/h2/server/web/WebApp;->isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string v5, "@transaction_isolation"

    .line 1362
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1363
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_15

    .line 1364
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1365
    invoke-interface {v0, v5}, Ljava/sql/Connection;->setTransactionIsolation(I)V

    .line 1367
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Transaction Isolation: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/sql/Connection;->getTransactionIsolation()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "<br />"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1: read_uncommitted<br />"

    .line 1369
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2: read_committed<br />"

    .line 1371
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "4: repeatable_read<br />"

    .line 1373
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "8: serializable"

    .line 1375
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    move-object v5, v1

    :goto_7
    const-string v1, "@"

    .line 1378
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1379
    invoke-direct {v10, v0, v5}, Lorg/h2/server/web/WebApp;->getMetaResultSet(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1385
    :cond_17
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getMaxrows()I

    move-result v0

    .line 1386
    invoke-interface {v13, v0}, Ljava/sql/Statement;->setMaxRows(I)V

    .line 1387
    iget-object v0, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v13, v0, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    .line 1388
    invoke-interface {v13, v5}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    move-result v0

    .line 1389
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1, v5}, Lorg/h2/server/web/WebSession;->addCommand(Ljava/lang/String;)V

    if-eqz v6, :cond_18

    .line 1392
    invoke-interface {v13}, Ljava/sql/Statement;->getGeneratedKeys()Ljava/sql/ResultSet;

    move-result-object v0

    goto :goto_8

    :cond_18
    if-nez v0, :cond_19

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "${text.result.updateCount}: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/sql/Statement;->getUpdateCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    const-string v2, "<br />("

    .line 1397
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms)"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    .line 1399
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1401
    :cond_19
    invoke-interface {v13}, Ljava/sql/Statement;->getResultSet()Ljava/sql/ResultSet;

    move-result-object v0

    .line 1404
    :cond_1a
    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    const/4 v1, 0x0

    sub-long/2addr v15, v2

    move-object/from16 v1, p0

    move-object v2, v5

    move-object v3, v0

    move v5, v7

    move v6, v14

    move-wide v7, v15

    move/from16 v9, p4

    .line 1405
    invoke-direct/range {v1 .. v9}, Lorg/h2/server/web/WebApp;->getResultSet(Ljava/lang/String;Ljava/sql/ResultSet;ZZZJZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v14, :cond_1b

    .line 1412
    invoke-interface {v13}, Ljava/sql/Statement;->close()V

    .line 1414
    :cond_1b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 1417
    :try_start_2
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v1

    move/from16 v2, p2

    invoke-direct {v10, v2, v0, v1}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 1419
    :goto_9
    iget-object v1, v10, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v11, v1, Lorg/h2/server/web/WebSession;->executingStatement:Ljava/sql/Statement;

    throw v0
.end method

.method private getResultSet(Ljava/lang/String;Ljava/sql/ResultSet;ZZZJZ)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1565
    invoke-direct/range {p0 .. p0}, Lorg/h2/server/web/WebApp;->getMaxrows()I

    move-result v2

    .line 1566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p6

    .line 1567
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p5, :cond_0

    const-string v6, "<form id=\"editing\" name=\"editing\" method=\"post\" action=\"editResult.do?jsessionid=${sessionId}\" id=\"mainForm\" target=\"h2result\"><input type=\"hidden\" name=\"op\" value=\"1\" /><input type=\"hidden\" name=\"row\" value=\"\" /><table cellspacing=0 cellpadding=0 id=\"editTable\">"

    .line 1569
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v6, "<table cellspacing=0 cellpadding=0>"

    .line 1576
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    .line 1579
    new-instance v8, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v8}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const-string v9, "#"

    const/4 v10, 0x4

    .line 1580
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "label"

    const/16 v11, 0xc

    .line 1581
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "catalog"

    .line 1582
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "schema"

    .line 1583
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "table"

    .line 1584
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "column"

    .line 1585
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "type"

    .line 1586
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "typeName"

    .line 1587
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "class"

    .line 1588
    invoke-virtual {v8, v9, v11, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "precision"

    .line 1589
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "scale"

    .line 1590
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "displaySize"

    .line 1591
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "autoIncrement"

    const/16 v12, 0x10

    .line 1592
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "caseSensitive"

    .line 1593
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "currency"

    .line 1594
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "nullable"

    .line 1595
    invoke-virtual {v8, v9, v10, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "readOnly"

    .line 1596
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "searchable"

    .line 1597
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "signed"

    .line 1598
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "writable"

    .line 1599
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string v9, "definitelyWritable"

    .line 1600
    invoke-virtual {v8, v9, v12, v7, v7}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    .line 1601
    invoke-interface/range {p2 .. p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v9

    const/4 v13, 0x1

    .line 1602
    :goto_1
    invoke-interface {v9}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v14

    if-gt v13, v14, :cond_2

    const/16 v14, 0x15

    .line 1603
    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v6

    const/4 v15, 0x2

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getCatalogName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getSchemaName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getTableName(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v15, 0x5

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnTypeName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnClassName(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getPrecision(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getScale(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xb

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isAutoIncrement(I)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v11

    const/16 v15, 0xd

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isCaseSensitive(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xe

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isCurrency(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xf

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isNullable(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isReadOnly(I)Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v12

    const/16 v15, 0x11

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isSearchable(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x12

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isSigned(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x13

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isWritable(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x14

    invoke-interface {v9, v13}, Ljava/sql/ResultSetMetaData;->isDefinitelyWritable(I)Z

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v8, v14}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_1
    move-object/from16 v8, p2

    .line 1627
    :cond_2
    invoke-interface {v8}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v9

    .line 1628
    invoke-interface {v9}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v10

    if-eqz p4, :cond_5

    const-string v11, "<tr><th>Column</th><th>Data</th></tr><tr>"

    .line 1631
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 1632
    :cond_3
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v12

    if-eqz v12, :cond_b

    if-lez v2, :cond_4

    if-lt v11, v2, :cond_4

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const-string v12, "<tr><td>Row #</td><td>"

    .line 1637
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "</tr>"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_3

    const-string v13, "<tr><td>"

    .line 1640
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v9, v12}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</td><td>"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8, v12}, Lorg/h2/server/web/WebApp;->escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "</td></tr>"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const-string v11, "<tr>"

    .line 1648
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_6

    const-string v11, "<th>${text.resultEdit.action}</th>"

    .line 1650
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_7

    const-string v12, "<th>"

    .line 1653
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v9, v11}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "</th>"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const-string v9, "</tr>"

    .line 1657
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    .line 1658
    :goto_4
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v9

    if-eqz v9, :cond_b

    if-lez v2, :cond_8

    if-lt v11, v2, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v11, v11, 0x1

    const-string v9, "<tr>"

    .line 1663
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_9

    const-string v9, "<td>"

    .line 1665
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<img onclick=\"javascript:editRow("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/sql/ResultSet;->getRow()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",\'${sessionId}\', \'${text.resultEdit.save}\', \'${text.resultEdit.cancel}\'"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")\" width=16 height=16 src=\"ico_write.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.edit}\" title=\"${text.resultEdit.edit}\" border=\"1\"/>"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "<a href=\"editResult.do?op=2&row="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/sql/ResultSet;->getRow()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "&jsessionid=${sessionId}\" target=\"h2result\" ><img width=16 height=16 src=\"ico_remove.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.delete}\" title=\"${text.resultEdit.delete}\" border=\"1\" /></a>"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</td>"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const/4 v9, 0x0

    :goto_5
    if-ge v9, v10, :cond_a

    const-string v12, "<td>"

    .line 1686
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8, v9}, Lorg/h2/server/web/WebApp;->escapeData(Ljava/sql/ResultSet;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "</td>"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    const-string v9, "</tr>"

    .line 1690
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1695
    :cond_b
    :goto_6
    :try_start_0
    iget-object v2, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/bnf/context/DbContents;->isDB2()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1696
    invoke-interface {v8}, Ljava/sql/ResultSet;->getConcurrency()I

    move-result v2

    const/16 v9, 0x3f0

    if-ne v2, v9, :cond_c

    invoke-interface {v8}, Ljava/sql/ResultSet;->getType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v9, 0x3eb

    if-eq v2, v9, :cond_c

    const/4 v2, 0x1

    goto :goto_7

    :catch_0
    :cond_c
    const/4 v2, 0x0

    :goto_7
    if-eqz p5, :cond_e

    .line 1704
    iget-object v9, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v9, v9, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    if-eqz v9, :cond_d

    .line 1706
    invoke-interface {v9}, Ljava/sql/ResultSet;->close()V

    .line 1708
    :cond_d
    iget-object v9, v0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v8, v9, Lorg/h2/server/web/WebSession;->result:Ljava/sql/ResultSet;

    goto :goto_8

    .line 1710
    :cond_e
    invoke-interface {v8}, Ljava/sql/ResultSet;->close()V

    :goto_8
    if-eqz p5, :cond_10

    const-string v8, "<tr><td>"

    .line 1713
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "<img onclick=\"javascript:editRow(-1, \'${sessionId}\', \'${text.resultEdit.save}\', \'${text.resultEdit.cancel}\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")\" width=16 height=16 src=\"ico_add.gif\" onmouseover = \"this.className =\'icon_hover\'\" onmouseout = \"this.className =\'icon\'\" class=\"icon\" alt=\"${text.resultEdit.add}\" title=\"${text.resultEdit.add}\" border=\"1\"/>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "</td>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    if-ge v7, v10, :cond_f

    const-string v8, "<td></td>"

    .line 1723
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_f
    const-string v7, "</tr>"

    .line 1725
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v7, "</table>"

    .line 1727
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_11

    const-string v7, "</form>"

    .line 1729
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-nez v11, :cond_12

    const-string v6, "(${text.result.noRows}"

    .line 1732
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_12
    if-ne v11, v6, :cond_13

    const-string v6, "(${text.result.1row}"

    .line 1734
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_13
    const/16 v6, 0x28

    .line 1736
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ${text.result.rows}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string v6, ", "

    .line 1738
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 1740
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p5, :cond_14

    if-eqz v2, :cond_14

    if-eqz p8, :cond_14

    const-string v1, "<br /><br /><form name=\"editResult\" method=\"post\" action=\"query.do?jsessionid=${sessionId}\" target=\"h2result\"><input type=\"submit\" class=\"button\" value=\"${text.resultEdit.editResult}\" /><input type=\"hidden\" name=\"sql\" value=\"@edit "

    .line 1742
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" /></form>"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    :cond_14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;
    .locals 4

    .line 796
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 797
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 798
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 801
    invoke-static {v0}, Lorg/h2/server/web/WebApp;->linkToSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "\t"

    const-string v2, "&nbsp;&nbsp;&nbsp;&nbsp;"

    .line 803
    invoke-static {v0, v1, v2}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a class=\"error\" href=\"#\" onclick=\"var x=document.getElementById(\'st"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\').style;x.display=x.display==\'\'?\'none\':\'\';\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 810
    instance-of v2, p2, Ljava/sql/SQLException;

    if-eqz v2, :cond_1

    .line 811
    move-object v2, p2

    check-cast v2, Ljava/sql/SQLException;

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    .line 814
    invoke-virtual {v2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p3

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <a href=\"http://h2database.com/javadoc/org/h2/api/ErrorCode.html#c"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\">(${text.a.help})</a>"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<span style=\"display: none;\" id=\"st"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\"><br />"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</span>"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 822
    invoke-static {p1}, Lorg/h2/server/web/WebApp;->formatAsError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 825
    :catch_0
    iget-object p1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {p1, p2}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    .line 826
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private index()Ljava/lang/String;
    .locals 6

    .line 435
    sget-object v0, Lorg/h2/server/web/WebServer;->LANGUAGES:[[Ljava/lang/String;

    .line 436
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "language"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iget-object v2, v2, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 441
    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string v3, ""

    invoke-direct {v2, v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/h2/server/web/WebServer;->readTranslations(Lorg/h2/server/web/WebSession;Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v4, "language"

    invoke-virtual {v3, v4, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 444
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    iput-object v2, v3, Lorg/h2/server/web/WebSession;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "language"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 452
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->headerLanguage:Ljava/lang/String;

    .line 454
    :cond_3
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "languageCombo"

    invoke-static {v0, v1}, Lorg/h2/server/web/WebApp;->getComboBox([[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getSettingNames()[Ljava/lang/String;

    move-result-object v0

    .line 456
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "setting"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 457
    array-length v2, v0

    if-lez v2, :cond_4

    const/4 v1, 0x0

    .line 458
    aget-object v1, v0, v1

    .line 460
    :cond_4
    invoke-static {v0, v1}, Lorg/h2/server/web/WebApp;->getComboBox([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "settingsList"

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->getSetting(Ljava/lang/String;)Lorg/h2/server/web/ConnectionInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 464
    new-instance v0, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v0}, Lorg/h2/server/web/ConnectionInfo;-><init>()V

    .line 466
    :cond_5
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "setting"

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "name"

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 468
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "driver"

    iget-object v3, v0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "url"

    iget-object v3, v0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    invoke-static {v3}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 470
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "user"

    iget-object v0, v0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtmlData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "index.jsp"

    return-object v0
.end method

.method private static isBinary(I)Z
    .locals 1

    const/16 v0, 0x457

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1424
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static linkToSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 832
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<br />"

    .line 833
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 834
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v3, "org.h2."

    .line 836
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_0

    .line 838
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 841
    :cond_0
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    .line 842
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-gez v4, :cond_1

    .line 844
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 847
    :cond_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x28

    .line 848
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    const/16 v6, 0x2e

    .line 849
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 850
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v5

    .line 851
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x3a

    .line 852
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v3, v3, 0x1

    .line 853
    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v7, v7, 0x1

    .line 854
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 855
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v9, 0x2f

    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "<a href=\"http://h2database.com/html/source.html?file="

    .line 856
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&line="

    .line 858
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&build="

    .line 860
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xc0

    .line 861
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\">"

    .line 862
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    .line 864
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    goto/16 :goto_0

    :catch_0
    return-object p0
.end method

.method private login()Ljava/lang/String;
    .locals 7

    .line 946
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "driver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 947
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "user"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 949
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v4, "password"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 950
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "autoCommit"

    const-string v6, "checked"

    invoke-virtual {v4, v5, v6}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 951
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "autoComplete"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 952
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "maxrows"

    const-string v6, "1000"

    invoke-virtual {v4, v5, v6}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "jdbc:h2:"

    .line 953
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 955
    :try_start_0
    iget-object v5, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v5, v0, v1, v2, v3}, Lorg/h2/server/web/WebServer;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    .line 956
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3, v0}, Lorg/h2/server/web/WebSession;->setConnection(Ljava/sql/Connection;)V

    .line 957
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "url"

    invoke-virtual {v0, v3, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "user"

    invoke-virtual {v0, v1, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 959
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    .line 960
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingSave()Ljava/lang/String;

    const-string v0, "frame.jsp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 963
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "error"

    invoke-direct {p0, v0, v4}, Lorg/h2/server/web/WebApp;->getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "login.jsp"

    return-object v0
.end method

.method private logout()Ljava/lang/String;
    .locals 3

    .line 970
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v0

    .line 971
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->setConnection(Ljava/sql/Connection;)V

    .line 972
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "conn"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    .line 973
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    .line 974
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tables"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    .line 976
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tool"

    invoke-virtual {v1, v2}, Lorg/h2/server/web/WebSession;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 978
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getShutdownServerOnDisconnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->shutdown()V

    goto :goto_0

    .line 981
    :cond_0
    invoke-interface {v0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 985
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "index.do"

    return-object v0
.end method

.method private process(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    :goto_0
    const-string v0, ".do"

    .line 209
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "login.do"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->login()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "index.do"

    .line 212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->index()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v0, "logout.do"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->logout()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string v0, "settingRemove.do"

    .line 216
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingRemove()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v0, "settingSave.do"

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->settingSave()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v0, "test.do"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->test()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_5
    const-string v0, "query.do"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->query()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    const-string v0, "tables.do"

    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->tables()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    const-string v0, "editResult.do"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 227
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->editResult()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "getHistory.do"

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 229
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->getHistory()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const-string v0, "admin.do"

    .line 230
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 231
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->admin()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_a
    const-string v0, "adminSave.do"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 233
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->adminSave()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_b
    const-string v0, "adminStartTranslate.do"

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 235
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->adminStartTranslate()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_c
    const-string v0, "adminShutdown.do"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 237
    invoke-virtual {p0}, Lorg/h2/server/web/WebApp;->adminShutdown()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_d
    const-string v0, "autoCompleteList.do"

    .line 238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->autoCompleteList()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_e
    const-string v0, "tools.do"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 241
    invoke-direct {p0}, Lorg/h2/server/web/WebApp;->tools()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    const-string p1, "error.jsp"

    goto/16 :goto_0

    .line 246
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "return "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    return-object p1
.end method

.method private query()Ljava/lang/String;
    .locals 11

    .line 991
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "sql"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 993
    :try_start_0
    new-instance v2, Lorg/h2/util/ScriptReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/h2/util/ScriptReader;-><init>(Ljava/io/Reader;)V

    .line 994
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 996
    :goto_0
    invoke-virtual {v2}, Lorg/h2/util/ScriptReader;->readStatement()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1002
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v2}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v2

    .line 1003
    sget-boolean v3, Lorg/h2/engine/SysProperties;->CONSOLE_STREAM:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v3}, Lorg/h2/server/web/WebServer;->getAllowChunked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    const-string v5, "result.jsp"

    invoke-virtual {v4, v5}, Lorg/h2/server/web/WebServer;->getFile(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v5, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "${result}"

    .line 1005
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1008
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v5, "${result}"

    .line 1009
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v4, "chunks"

    new-instance v5, Lorg/h2/server/web/WebApp$1;

    invoke-direct {v5, p0, v0, v2}, Lorg/h2/server/web/WebApp$1;-><init>(Lorg/h2/server/web/WebApp;Ljava/util/ArrayList;Ljava/sql/Connection;)V

    invoke-virtual {v3, v4, v5}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "result.jsp"

    return-object v0

    .line 1034
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    .line 1035
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_1

    .line 1036
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 1037
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v3, p0

    move-object v4, v2

    move v6, v10

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Lorg/h2/server/web/WebApp;->query(Ljava/sql/Connection;Ljava/lang/String;IILjava/lang/StringBuilder;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1039
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1040
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "result"

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 1000
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 1042
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "result"

    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v4

    invoke-virtual {v4}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v4

    invoke-direct {p0, v1, v0, v4}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "result.jsp"

    return-object v0
.end method

.method private settingRemove()Ljava/lang/String;
    .locals 4

    .line 1867
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1868
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->removeSetting(Ljava/lang/String;)V

    .line 1869
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->getSettings()Ljava/util/ArrayList;

    move-result-object v0

    .line 1870
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1871
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "setting"

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1873
    :cond_0
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V

    const-string v0, "index.do"

    return-object v0
.end method

.method private settingSave()Ljava/lang/String;
    .locals 4

    .line 1760
    new-instance v0, Lorg/h2/server/web/ConnectionInfo;

    invoke-direct {v0}, Lorg/h2/server/web/ConnectionInfo;-><init>()V

    .line 1761
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    .line 1762
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "driver"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->driver:Ljava/lang/String;

    .line 1763
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->url:Ljava/lang/String;

    .line 1764
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "user"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/server/web/ConnectionInfo;->user:Ljava/lang/String;

    .line 1765
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->updateSetting(Lorg/h2/server/web/ConnectionInfo;)V

    .line 1766
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "setting"

    iget-object v0, v0, Lorg/h2/server/web/ConnectionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1767
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/server/web/WebServer;->saveProperties(Ljava/util/Properties;)V

    const-string v0, "index.do"

    return-object v0
.end method

.method private static split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa

    .line 1244
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x20

    .line 1245
    invoke-static {p0, v2, v1}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p0

    .line 1246
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1247
    :goto_0
    array-length p0, v0

    if-ge v2, p0, :cond_1

    const-string p0, "null"

    .line 1248
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 1249
    aput-object p0, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private tables()Ljava/lang/String;
    .locals 13

    .line 692
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v0

    const/4 v1, 0x0

    .line 695
    :try_start_0
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/h2/server/web/WebSession;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 696
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v3}, Lorg/h2/server/web/WebSession;->getConnection()Ljava/sql/Connection;

    move-result-object v3

    .line 697
    invoke-virtual {v0, v2, v3}, Lorg/h2/bnf/context/DbContents;->readContents(Ljava/lang/String;Ljava/sql/Connection;)V

    .line 698
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v4}, Lorg/h2/server/web/WebSession;->loadBnf()V

    .line 699
    invoke-virtual {v0}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 701
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNode(0, 0, 0, \'database\', \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\', null);\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Lorg/h2/bnf/context/DbContents;->getDefaultSchema()Lorg/h2/bnf/context/DbSchema;

    move-result-object v2

    const/4 v6, 0x1

    .line 707
    invoke-direct {p0, v2, v6, v5, v6}, Lorg/h2/server/web/WebApp;->addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I

    move-result v6

    .line 708
    invoke-virtual {v0}, Lorg/h2/bnf/context/DbContents;->getSchemas()[Lorg/h2/bnf/context/DbSchema;

    move-result-object v0

    .line 709
    array-length v7, v0

    move v8, v6

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_2

    aget-object v9, v0, v6

    if-eq v9, v2, :cond_1

    if-nez v9, :cond_0

    goto :goto_1

    .line 713
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNode("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", 0, 1, \'folder\', \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v9, Lorg/h2/bnf/context/DbSchema;->name:Ljava/lang/String;

    invoke-static {v11}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\', null);\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 717
    invoke-direct {p0, v9, v1, v5, v8}, Lorg/h2/server/web/WebApp;->addTablesAndViews(Lorg/h2/bnf/context/DbSchema;ZLjava/lang/StringBuilder;I)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_9

    const/4 v0, 0x0

    .line 722
    :try_start_2
    invoke-interface {v3}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "SELECT * FROM INFORMATION_SCHEMA.SEQUENCES ORDER BY SEQUENCE_NAME"

    .line 723
    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    const/4 v3, 0x0

    .line 725
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v3, :cond_3

    .line 727
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", 0, 1, \'sequences\', \'${text.tree.sequences}\', null);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_3
    const-string v6, "SEQUENCE_NAME"

    .line 731
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CURRENT_VALUE"

    .line 732
    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "INCREMENT"

    .line 733
    invoke-interface {v0, v9}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 734
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setNode("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", 1, 1, \'sequence\', \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', null);\n"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    .line 739
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNode("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", 2, 2, \'type\', \'${text.tree.current}: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\', null);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const-string v6, "1"

    .line 744
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", 2, 2, \'type\', \'${text.tree.increment}: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\', null);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 753
    :cond_5
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    const-string v0, "SELECT * FROM INFORMATION_SCHEMA.USERS ORDER BY NAME"

    .line 754
    invoke-interface {v2, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    const/4 v3, 0x0

    .line 756
    :goto_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v3, :cond_6

    .line 758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", 0, 1, \'users\', \'${text.tree.users}\', null);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_6
    const-string v6, "NAME"

    .line 762
    invoke-interface {v0, v6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ADMIN"

    .line 763
    invoke-interface {v0, v7}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 764
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setNode("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", 1, 1, \'user\', \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', null);\n"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    const-string v6, "TRUE"

    .line 769
    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 770
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNode("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", 2, 2, \'type\', \'${text.tree.admin}\', null);\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 775
    :cond_8
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    :try_start_4
    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    :goto_4
    invoke-static {v2}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Statement;)V

    throw v0

    .line 780
    :cond_9
    :goto_5
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v0}, Lorg/h2/server/web/WebSession;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v0

    .line 781
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getDatabaseProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/sql/DatabaseMetaData;->getDatabaseProductVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", 0, 0, \'info\', \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', null);\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "refreshQueryTables();"

    .line 785
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tree"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    .line 788
    :goto_6
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "tree"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 789
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v3, "error"

    invoke-direct {p0, v1, v0, v4}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_7
    const-string v0, "tables.jsp"

    return-object v0
.end method

.method private test()Ljava/lang/String;
    .locals 10

    .line 878
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "driver"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "url"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 880
    iget-object v2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v3, "user"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 881
    iget-object v3, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v4, "password"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "driver"

    invoke-virtual {v4, v5, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 883
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "url"

    invoke-virtual {v4, v5, v1}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 884
    iget-object v4, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v5, "user"

    invoke-virtual {v4, v5, v2}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "jdbc:h2:"

    .line 885
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 887
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 889
    new-instance v7, Lorg/h2/util/Profiler;

    invoke-direct {v7}, Lorg/h2/util/Profiler;-><init>()V

    .line 890
    invoke-virtual {v7}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x3

    .line 893
    :try_start_1
    iget-object v9, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v9, v0, v1, v2, v3}, Lorg/h2/server/web/WebServer;->getConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 895
    :try_start_2
    invoke-virtual {v7}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 896
    invoke-virtual {v7, v8}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    move-result-object v1

    .line 898
    new-instance v2, Lorg/h2/util/Profiler;

    invoke-direct {v2}, Lorg/h2/util/Profiler;-><init>()V

    .line 899
    invoke-virtual {v2}, Lorg/h2/util/Profiler;->startCollecting()Lorg/h2/util/Profiler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 901
    :try_start_3
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->closeSilently(Ljava/sql/Connection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 903
    :try_start_4
    invoke-virtual {v2}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 904
    invoke-virtual {v2, v8}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v7, 0x0

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x3e8

    cmp-long v7, v2, v5

    if-lez v7, :cond_0

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a class=\"error\" href=\"#\" onclick=\"var x=document.getElementById(\'prof\').style;x.display=x.display==\'\'?\'none\':\'\';\">${text.login.testSuccessful}</a><span style=\"display: none;\" id=\"prof\"><br />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<br />"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</span>"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "${text.login.testSuccessful}"

    .line 921
    :goto_0
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "login.jsp"

    return-object v0

    :catchall_0
    move-exception v0

    .line 903
    invoke-virtual {v2}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 904
    invoke-virtual {v2, v8}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    throw v0

    :catchall_1
    move-exception v0

    .line 895
    invoke-virtual {v7}, Lorg/h2/util/Profiler;->stopCollecting()Lorg/h2/util/Profiler;

    .line 896
    invoke-virtual {v7, v8}, Lorg/h2/util/Profiler;->getTop(I)Ljava/lang/String;

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 925
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "error"

    invoke-direct {p0, v0, v4}, Lorg/h2/server/web/WebApp;->getLoginError(Ljava/lang/Exception;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "login.jsp"

    return-object v0
.end method

.method private tools()Ljava/lang/String;
    .locals 6

    .line 371
    :try_start_0
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v1, "tool"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "tool"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    const-string v2, "args"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    .line 374
    invoke-static {v1, v2, v3}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "Backup"

    .line 376
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    new-instance v0, Lorg/h2/tools/Backup;

    invoke-direct {v0}, Lorg/h2/tools/Backup;-><init>()V

    goto/16 :goto_0

    :cond_0
    const-string v2, "Restore"

    .line 378
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    new-instance v0, Lorg/h2/tools/Restore;

    invoke-direct {v0}, Lorg/h2/tools/Restore;-><init>()V

    goto :goto_0

    :cond_1
    const-string v2, "Recover"

    .line 380
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    new-instance v0, Lorg/h2/tools/Recover;

    invoke-direct {v0}, Lorg/h2/tools/Recover;-><init>()V

    goto :goto_0

    :cond_2
    const-string v2, "DeleteDbFiles"

    .line 382
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 383
    new-instance v0, Lorg/h2/tools/DeleteDbFiles;

    invoke-direct {v0}, Lorg/h2/tools/DeleteDbFiles;-><init>()V

    goto :goto_0

    :cond_3
    const-string v2, "ChangeFileEncryption"

    .line 384
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 385
    new-instance v0, Lorg/h2/tools/ChangeFileEncryption;

    invoke-direct {v0}, Lorg/h2/tools/ChangeFileEncryption;-><init>()V

    goto :goto_0

    :cond_4
    const-string v2, "Script"

    .line 386
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 387
    new-instance v0, Lorg/h2/tools/Script;

    invoke-direct {v0}, Lorg/h2/tools/Script;-><init>()V

    goto :goto_0

    :cond_5
    const-string v2, "RunScript"

    .line 388
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 389
    new-instance v0, Lorg/h2/tools/RunScript;

    invoke-direct {v0}, Lorg/h2/tools/RunScript;-><init>()V

    goto :goto_0

    :cond_6
    const-string v2, "ConvertTraceFile"

    .line 390
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 391
    new-instance v0, Lorg/h2/tools/ConvertTraceFile;

    invoke-direct {v0}, Lorg/h2/tools/ConvertTraceFile;-><init>()V

    goto :goto_0

    :cond_7
    const-string v2, "CreateCluster"

    .line 392
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 393
    new-instance v0, Lorg/h2/tools/CreateCluster;

    invoke-direct {v0}, Lorg/h2/tools/CreateCluster;-><init>()V

    .line 397
    :goto_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 398
    new-instance v4, Ljava/io/PrintStream;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v3, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 399
    invoke-virtual {v0, v4}, Lorg/h2/util/Tool;->setOut(Ljava/io/PrintStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 401
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/h2/util/Tool;->runTool([Ljava/lang/String;)V

    .line 402
    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    .line 403
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 404
    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "toolResult"

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 407
    :try_start_2
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string v2, "toolResult"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v0, v4}, Lorg/h2/server/web/WebApp;->getStackTrace(ILjava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/h2/server/web/WebSession;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 395
    :cond_8
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    .line 410
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v1, v0}, Lorg/h2/server/web/WebServer;->traceError(Ljava/lang/Throwable;)V

    :goto_1
    const-string v0, "tools.jsp"

    return-object v0
.end method

.method private trace(Ljava/lang/String;)V
    .locals 1

    .line 1895
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p1}, Lorg/h2/server/web/WebServer;->trace(Ljava/lang/String;)V

    return-void
.end method

.method private unescapeData(Ljava/lang/String;Ljava/sql/ResultSet;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "null"

    .line 1810
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    invoke-interface {p2, p3}, Ljava/sql/ResultSet;->updateNull(I)V

    return-void

    :cond_0
    const-string v0, "=+"

    .line 1813
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "=*"

    .line 1816
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1818
    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const-string p1, "1"

    .line 1828
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string p1, "12:00:00"

    .line 1821
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "2001-01-01"

    .line 1825
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "= "

    .line 1832
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    .line 1833
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1835
    :cond_3
    invoke-interface {p2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 1836
    invoke-interface {v0, p3}, Ljava/sql/ResultSetMetaData;->getColumnType(I)I

    move-result v0

    .line 1837
    iget-object v1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    invoke-virtual {v1}, Lorg/h2/server/web/WebSession;->getContents()Lorg/h2/bnf/context/DbContents;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/bnf/context/DbContents;->isH2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1838
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    return-void

    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1862
    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateString(ILjava/lang/String;)V

    goto :goto_1

    .line 1853
    :sswitch_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateFloat(IF)V

    goto :goto_1

    .line 1850
    :sswitch_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Ljava/sql/ResultSet;->updateDouble(ID)V

    goto :goto_1

    .line 1856
    :sswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateInt(II)V

    goto :goto_1

    .line 1846
    :sswitch_3
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3, v0}, Ljava/sql/ResultSet;->updateBigDecimal(ILjava/math/BigDecimal;)V

    goto :goto_1

    .line 1843
    :sswitch_4
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, p3, v0, v1}, Ljava/sql/ResultSet;->updateLong(IJ)V

    goto :goto_1

    .line 1859
    :sswitch_5
    invoke-static {p1}, Ljava/lang/Short;->decode(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {p2, p3, p1}, Ljava/sql/ResultSet;->updateShort(IS)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x6 -> :sswitch_5
        -0x5 -> :sswitch_4
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x6 -> :sswitch_1
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected adminShutdown()Ljava/lang/String;
    .locals 1

    .line 430
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0}, Lorg/h2/server/web/WebServer;->shutdown()V

    const-string v0, "admin.jsp"

    return-object v0
.end method

.method getCache()Z
    .locals 1

    .line 1887
    iget-boolean v0, p0, Lorg/h2/server/web/WebApp;->cache:Z

    return v0
.end method

.method getMimeType()Ljava/lang/String;
    .locals 1

    .line 1883
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method getSession()Lorg/h2/server/web/WebSession;
    .locals 1

    .line 1891
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    return-object v0
.end method

.method processRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    add-int/2addr v0, v1

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v2, "ico"

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p2, "image/x-icon"

    .line 141
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    .line 142
    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    goto :goto_2

    :cond_1
    const-string v2, "gif"

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p2, "image/gif"

    .line 144
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    .line 145
    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    goto :goto_2

    :cond_2
    const-string v2, "css"

    .line 146
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 147
    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string p2, "text/css"

    .line 148
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v2, "html"

    .line 149
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "do"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "jsp"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "js"

    .line 160
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 161
    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string p2, "text/javascript"

    .line 162
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    goto :goto_2

    .line 164
    :cond_5
    iput-boolean v1, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string p2, "application/octet-stream"

    .line 165
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lorg/h2/server/web/WebApp;->cache:Z

    const-string v0, "text/html"

    .line 153
    iput-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    if-nez v0, :cond_7

    .line 155
    iget-object v0, p0, Lorg/h2/server/web/WebApp;->server:Lorg/h2/server/web/WebServer;

    invoke-virtual {v0, p2}, Lorg/h2/server/web/WebServer;->createNewSession(Ljava/lang/String;)Lorg/h2/server/web/WebSession;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    const-string p2, "notAllowed.jsp"

    .line 156
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p1, "index.do"

    .line 167
    :cond_7
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mimeType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/server/web/WebApp;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p1}, Lorg/h2/server/web/WebApp;->trace(Ljava/lang/String;)V

    const-string p2, ".do"

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 170
    invoke-direct {p0, p1}, Lorg/h2/server/web/WebApp;->process(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    return-object p1
.end method

.method query(Ljava/sql/Connection;Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 7

    const-string v0, "@"

    .line 1057
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1058
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/server/web/PageParser;->escapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br />"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "@edit"

    .line 1060
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const/4 v0, 0x1

    add-int/lit8 v3, p3, 0x1

    if-ne p4, v0, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 1061
    invoke-direct/range {v1 .. v6}, Lorg/h2/server/web/WebApp;->getResult(Ljava/sql/Connection;ILjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<br />"

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method setSession(Lorg/h2/server/web/WebSession;Ljava/util/Properties;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/h2/server/web/WebApp;->session:Lorg/h2/server/web/WebSession;

    .line 122
    iput-object p2, p0, Lorg/h2/server/web/WebApp;->attributes:Ljava/util/Properties;

    return-void
.end method
