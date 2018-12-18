.class public Lorg/h2/command/dml/ScriptCommand;
.super Lorg/h2/command/dml/ScriptBase;
.source "ScriptCommand.java"


# instance fields
.field private buffer:[B

.field private charset:Ljava/nio/charset/Charset;

.field private data:Z

.field private drop:Z

.field private lineSeparator:[B

.field private lineSeparatorString:Ljava/lang/String;

.field private lobBlockSize:I

.field private nextLobId:I

.field private passwords:Z

.field private result:Lorg/h2/result/LocalResult;

.field private schemaNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private settings:Z

.field private simple:Z

.field private tables:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private tempLobTableCreated:Z


# direct methods
.method public constructor <init>(Lorg/h2/engine/Session;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/h2/command/dml/ScriptBase;-><init>(Lorg/h2/engine/Session;)V

    .line 69
    sget-object p1, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    const/16 p1, 0x1000

    .line 87
    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method private add(Ljava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    array-length v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    aget-byte v0, v0, v2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    :cond_1
    const-string v0, "\n"

    .line 689
    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 692
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_6

    .line 693
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 694
    array-length v3, v0

    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    array-length v4, v4

    add-int/2addr v3, v4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lorg/h2/util/MathUtils;->roundUpInt(II)I

    move-result v3

    .line 696
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    invoke-static {v0, v4}, Lorg/h2/util/Utils;->copy([B[B)[B

    move-result-object v4

    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 698
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    array-length v4, v4

    if-le v3, v4, :cond_3

    .line 699
    new-array v4, v3, [B

    iput-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 701
    :cond_3
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    array-length v0, v0

    :goto_0
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    array-length v4, v4

    sub-int v4, v3, v4

    if-ge v0, v4, :cond_4

    .line 703
    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    const/16 v5, 0x20

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 705
    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    array-length v0, v0

    sub-int v0, v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v0, v3, :cond_5

    .line 706
    iget-object v5, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    iget-object v6, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    aget-byte v6, v6, v4

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v4, v1

    goto :goto_1

    .line 708
    :cond_5
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    iget-object v4, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    invoke-virtual {v0, v4, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    if-nez p2, :cond_7

    .line 710
    new-array p2, v1, [Lorg/h2/value/Value;

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    aput-object p1, p2, v2

    .line 711
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    goto :goto_2

    .line 714
    :cond_6
    new-array p2, v1, [Lorg/h2/value/Value;

    invoke-static {p1}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object p1

    aput-object p1, p2, v2

    .line 715
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1, p2}, Lorg/h2/result/LocalResult;->addRow([Lorg/h2/value/Value;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static combineBlob(Ljava/sql/Connection;I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "BDATA"

    .line 529
    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    .line 530
    new-instance p1, Lorg/h2/command/dml/ScriptCommand$3;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$3;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method public static combineClob(Ljava/sql/Connection;I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "CDATA"

    .line 585
    invoke-static {p0, v0, p1}, Lorg/h2/command/dml/ScriptCommand;->getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;

    move-result-object p0

    .line 586
    new-instance p1, Lorg/h2/command/dml/ScriptCommand$4;

    invoke-direct {p1, p0}, Lorg/h2/command/dml/ScriptCommand$4;-><init>(Ljava/sql/ResultSet;)V

    return-object p1
.end method

.method private createResult()Lorg/h2/result/LocalResult;
    .locals 7

    const/4 v0, 0x1

    .line 136
    new-array v1, v0, [Lorg/h2/expression/Expression;

    new-instance v2, Lorg/h2/expression/ExpressionColumn;

    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v3}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v3

    new-instance v4, Lorg/h2/table/Column;

    const-string v5, "SCRIPT"

    const/16 v6, 0xd

    invoke-direct {v4, v5, v6}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-direct {v2, v3, v4}, Lorg/h2/expression/ExpressionColumn;-><init>(Lorg/h2/engine/Database;Lorg/h2/table/Column;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 138
    new-instance v2, Lorg/h2/result/LocalResult;

    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-direct {v2, v3, v1, v0}, Lorg/h2/result/LocalResult;-><init>(Lorg/h2/engine/Session;[Lorg/h2/expression/Expression;I)V

    return-object v2
.end method

.method private excludeSchema(Lorg/h2/schema/Schema;)Z
    .locals 4

    .line 665
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 668
    :cond_0
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 670
    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getAllTablesAndViews()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/table/Table;

    .line 671
    iget-object v3, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method private excludeTable(Lorg/h2/table/Table;)Z
    .locals 1

    .line 681
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private generateInsertValues(ILorg/h2/table/Table;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lorg/h2/table/Table;->getBestPlanItem(Lorg/h2/engine/Session;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;Ljava/util/HashSet;)Lorg/h2/table/PlanItem;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Lorg/h2/table/PlanItem;->getIndex()Lorg/h2/index/Index;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-interface {v0, v1, v2, v2}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 394
    invoke-virtual {p2}, Lorg/h2/table/Table;->getColumns()[Lorg/h2/table/Column;

    move-result-object v1

    .line 395
    new-instance v3, Lorg/h2/util/StatementBuilder;

    const-string v4, "INSERT INTO "

    invoke-direct {v3, v4}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object p2

    const/16 v4, 0x28

    invoke-virtual {p2, v4}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 397
    array-length p2, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p2, :cond_0

    aget-object v7, v1, v6

    const-string v8, ", "

    .line 398
    invoke-virtual {v3, v8}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v7}, Lorg/h2/table/Column;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const-string p2, ") VALUES"

    .line 401
    invoke-virtual {v3, p2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 402
    iget-boolean p2, p0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez p2, :cond_1

    const/16 p2, 0xa

    .line 403
    invoke-virtual {v3, p2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 405
    :cond_1
    invoke-virtual {v3, v4}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 406
    invoke-virtual {v3}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move v1, p1

    :goto_1
    move-object p1, v2

    .line 408
    :cond_2
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_b

    .line 409
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v3

    if-nez p1, :cond_3

    .line 411
    new-instance p1, Lorg/h2/util/StatementBuilder;

    invoke-direct {p1, p2}, Lorg/h2/util/StatementBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v6, ",\n("

    .line 413
    invoke-virtual {p1, v6}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_2
    const/4 v6, 0x0

    .line 415
    :goto_3
    invoke-virtual {v3}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v7

    if-ge v6, v7, :cond_8

    if-lez v6, :cond_4

    const-string v7, ", "

    .line 417
    invoke-virtual {p1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 419
    :cond_4
    invoke-virtual {v3, v6}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v7

    .line 420
    invoke-virtual {v7}, Lorg/h2/value/Value;->getPrecision()J

    move-result-wide v8

    iget v10, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    int-to-long v10, v10

    cmp-long v12, v8, v10

    if-lez v12, :cond_7

    .line 422
    invoke-virtual {v7}, Lorg/h2/value/Value;->getType()I

    move-result v8

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    .line 423
    invoke-direct {p0, v7}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v7

    .line 424
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYSTEM_COMBINE_CLOB("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_4

    .line 425
    :cond_5
    invoke-virtual {v7}, Lorg/h2/value/Value;->getType()I

    move-result v8

    const/16 v9, 0xf

    if-ne v8, v9, :cond_6

    .line 426
    invoke-direct {p0, v7}, Lorg/h2/command/dml/ScriptCommand;->writeLobStream(Lorg/h2/value/Value;)I

    move-result v7

    .line 427
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SYSTEM_COMBINE_BLOB("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_4

    .line 429
    :cond_6
    invoke-virtual {v7}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_4

    .line 432
    :cond_7
    invoke-virtual {v7}, Lorg/h2/value/Value;->getSQL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    const/16 v3, 0x29

    .line 435
    invoke-virtual {p1, v3}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v3, v1, 0x7f

    if-nez v3, :cond_9

    .line 438
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->checkCanceled()V

    .line 440
    :cond_9
    iget-boolean v3, p0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    if-nez v3, :cond_a

    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->length()I

    move-result v3

    const/16 v6, 0x1000

    if-le v3, v6, :cond_2

    .line 441
    :cond_a
    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_b
    if-eqz p1, :cond_c

    .line 446
    invoke-virtual {p1}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v4}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_c
    return v1
.end method

.method private static getLobStream(Ljava/sql/Connection;Ljava/lang/String;I)Ljava/sql/ResultSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FROM SYSTEM_LOB_STREAM WHERE ID=? ORDER BY PART"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 p1, 0x1

    .line 653
    invoke-interface {p0, p1, p2}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 654
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 658
    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 659
    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 660
    sget-object v0, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparatorString:Ljava/lang/String;

    iget-object v1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->lineSeparator:[B

    return-void
.end method

.method private writeLobStream(Lorg/h2/value/Value;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "CREATE TABLE IF NOT EXISTS SYSTEM_LOB_STREAM(ID INT NOT NULL, PART INT NOT NULL, CDATA VARCHAR, BDATA BINARY)"

    .line 453
    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CREATE PRIMARY KEY SYSTEM_LOB_STREAM_PRIMARY_KEY ON SYSTEM_LOB_STREAM(ID, PART)"

    .line 457
    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_CLOB FOR \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineClob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS SYSTEM_COMBINE_BLOB FOR \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".combineBlob\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 463
    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    .line 465
    :cond_0
    iget v0, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/h2/command/dml/ScriptCommand;->nextLobId:I

    .line 466
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    goto/16 :goto_2

    .line 489
    :pswitch_0
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [C

    .line 490
    invoke-virtual {p1}, Lorg/h2/value/Value;->getReader()Ljava/io/Reader;

    move-result-object p1

    const/4 v4, 0x0

    .line 493
    :goto_0
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT INTO SYSTEM_LOB_STREAM VALUES("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    iget v6, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v6}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/Reader;[CI)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    .line 505
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Reader;)V

    goto/16 :goto_2

    .line 499
    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", NULL)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 502
    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 505
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/Reader;)V

    throw v0

    .line 468
    :pswitch_1
    iget v2, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    new-array v2, v2, [B

    .line 469
    invoke-virtual {p1}, Lorg/h2/value/Value;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 472
    :goto_1
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO SYSTEM_LOB_STREAM VALUES("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", NULL, \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    iget v5, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    invoke-static {p1, v2, v5}, Lorg/h2/util/IOUtils;->readFully(Ljava/io/InputStream;[BI)I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-gtz v5, :cond_2

    .line 484
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    goto :goto_2

    .line 479
    :cond_2
    :try_start_3
    invoke-static {v2, v5}, Lorg/h2/util/StringUtils;->convertBytesToHex([BI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 481
    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 484
    invoke-static {p1}, Lorg/h2/util/IOUtils;->closeSilently(Ljava/io/InputStream;)V

    throw v0

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic checkPowerOff()V
    .locals 0

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkPowerOff()V

    return-void
.end method

.method public bridge synthetic checkWritingAllowed()V
    .locals 0

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->checkWritingAllowed()V

    return-void
.end method

.method public bridge synthetic getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getCompareMode()Lorg/h2/value/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getDatabasePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->getLobCompressionAlgorithm(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobFileListCache()Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobStorage()Lorg/h2/store/LobStorageBackend;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobStorage()Lorg/h2/store/LobStorageBackend;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLobSyncObject()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getLobSyncObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxLengthInplaceLob()I
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getMaxLengthInplaceLob()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public isQuery()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic isTransactional()Z
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->isTransactional()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic needRecompile()Z
    .locals 1

    .line 67
    invoke-super {p0}, Lorg/h2/command/dml/ScriptBase;->needRecompile()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 0

    .line 67
    invoke-super {p0, p1, p2, p3}, Lorg/h2/command/dml/ScriptBase;->openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;

    move-result-object p1

    return-object p1
.end method

.method public query(I)Lorg/h2/result/ResultInterface;
    .locals 10

    .line 143
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/engine/User;->checkAdmin()V

    .line 144
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    .line 145
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x15fdf

    .line 150
    invoke-static {p1, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 156
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 157
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->deleteStore()V

    .line 158
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->openOutput()V

    .line 159
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    const/16 v0, 0x1000

    .line 160
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->buffer:[B

    .line 162
    :cond_2
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 163
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSettings()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Setting;

    .line 164
    invoke-virtual {v2}, Lorg/h2/engine/Setting;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x22

    invoke-static {v4}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    invoke-virtual {v2}, Lorg/h2/engine/Setting;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_1

    .line 173
    :cond_4
    iget-object v0, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    const-string v0, ""

    .line 174
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 176
    :cond_5
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUsers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/User;

    .line 177
    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    invoke-virtual {v3, v4}, Lorg/h2/engine/User;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_2

    .line 179
    :cond_6
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRoles()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Role;

    .line 180
    invoke-virtual {v3, v2}, Lorg/h2/engine/Role;->getCreateSQL(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_3

    .line 182
    :cond_7
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllSchemas()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/Schema;

    .line 183
    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 186
    :cond_8
    invoke-virtual {v3}, Lorg/h2/schema/Schema;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_4

    .line 188
    :cond_9
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllUserDataTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/UserDataType;

    .line 189
    iget-boolean v4, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v4, :cond_a

    .line 190
    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 192
    :cond_a
    invoke-virtual {v3}, Lorg/h2/engine/UserDataType;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_5

    :cond_b
    const/16 v0, 0xb

    .line 194
    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/schema/SchemaObject;

    .line 196
    invoke-interface {v3}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    .line 199
    :cond_c
    check-cast v3, Lorg/h2/schema/Constant;

    .line 200
    invoke-virtual {v3}, Lorg/h2/schema/Constant;->getCreateSQL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_6

    .line 203
    :cond_d
    invoke-virtual {p1, v1}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    new-instance v3, Lorg/h2/command/dml/ScriptCommand$1;

    invoke-direct {v3, p0}, Lorg/h2/command/dml/ScriptCommand$1;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    .line 215
    invoke-virtual {v4}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_7

    .line 218
    :cond_f
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_7

    .line 221
    :cond_10
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    .line 224
    :cond_11
    iget-object v5, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 225
    invoke-virtual {v4}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    goto :goto_7

    .line 230
    :cond_12
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_e

    .line 231
    invoke-virtual {v4}, Lorg/h2/table/Table;->getDropSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_7

    :cond_13
    const/16 v3, 0x9

    .line 234
    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    .line 236
    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_8

    .line 239
    :cond_14
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_15

    .line 240
    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 242
    :cond_15
    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_8

    .line 244
    :cond_16
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllAggregates()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/engine/UserAggregate;

    .line 245
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_17

    .line 246
    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 248
    :cond_17
    invoke-virtual {v4}, Lorg/h2/engine/UserAggregate;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_18
    const/4 v3, 0x3

    .line 250
    invoke-virtual {p1, v3}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/schema/SchemaObject;

    .line 252
    invoke-interface {v4}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_19

    goto :goto_a

    .line 255
    :cond_19
    check-cast v4, Lorg/h2/schema/Sequence;

    .line 256
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    if-eqz v5, :cond_1a

    .line 257
    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getDropSQL()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 259
    :cond_1a
    invoke-virtual {v4}, Lorg/h2/schema/Sequence;->getCreateSQL()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_a

    .line 264
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_1c
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    .line 265
    invoke-virtual {v4}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_b

    .line 268
    :cond_1d
    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_b

    .line 271
    :cond_1e
    invoke-virtual {v4}, Lorg/h2/table/Table;->isHidden()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_b

    .line 274
    :cond_1f
    iget-object v5, p0, Lorg/h2/command/dml/ScriptCommand;->session:Lorg/h2/engine/Session;

    invoke-virtual {v4, v5, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    .line 275
    invoke-virtual {v4}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_20

    goto :goto_b

    .line 280
    :cond_20
    invoke-virtual {v4}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 282
    invoke-virtual {v4}, Lorg/h2/table/Table;->getConstraints()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_22

    .line 284
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_21
    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/h2/constraint/Constraint;

    const-string v8, "PRIMARY KEY"

    .line 285
    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 287
    invoke-virtual {v7}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_c

    :cond_22
    const-string v5, "TABLE"

    .line 291
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 292
    invoke-virtual {v4}, Lorg/h2/table/Table;->canGetRowCount()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/Table;->getRowCountApproximation()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " +/- SELECT COUNT(*) FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    invoke-direct {p0, v5, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 298
    :cond_23
    iget-boolean v5, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    if-eqz v5, :cond_24

    .line 299
    invoke-direct {p0, v3, v4}, Lorg/h2/command/dml/ScriptCommand;->generateInsertValues(ILorg/h2/table/Table;)I

    move-result v3

    .line 302
    :cond_24
    invoke-virtual {v4}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v5, 0x0

    :goto_d
    if-eqz v4, :cond_1c

    .line 303
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1c

    .line 304
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/index/Index;

    .line 305
    invoke-interface {v6}, Lorg/h2/index/Index;->getIndexType()Lorg/h2/index/IndexType;

    move-result-object v7

    invoke-virtual {v7}, Lorg/h2/index/IndexType;->getBelongsToConstraint()Z

    move-result v7

    if-nez v7, :cond_25

    .line 306
    invoke-interface {v6}, Lorg/h2/index/Index;->getCreateSQL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 310
    :cond_26
    iget-boolean v0, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    if-eqz v0, :cond_27

    const-string v0, "DROP TABLE IF EXISTS SYSTEM_LOB_STREAM"

    .line 311
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "CALL SYSTEM_COMBINE_BLOB(-1)"

    .line 312
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_CLOB"

    .line 313
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    const-string v0, "DROP ALIAS IF EXISTS SYSTEM_COMBINE_BLOB"

    .line 314
    invoke-direct {p0, v0, v2}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    .line 315
    iput-boolean v1, p0, Lorg/h2/command/dml/ScriptCommand;->tempLobTableCreated:Z

    :cond_27
    const/4 v0, 0x5

    .line 318
    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 320
    new-instance v2, Lorg/h2/command/dml/ScriptCommand$2;

    invoke-direct {v2, p0}, Lorg/h2/command/dml/ScriptCommand$2;-><init>(Lorg/h2/command/dml/ScriptCommand;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_28
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 327
    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_e

    .line 330
    :cond_29
    check-cast v2, Lorg/h2/constraint/Constraint;

    .line 331
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_e

    .line 334
    :cond_2a
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/table/Table;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_e

    :cond_2b
    const-string v3, "PRIMARY KEY"

    .line 337
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getConstraintType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 338
    invoke-virtual {v2}, Lorg/h2/constraint/Constraint;->getCreateSQLWithoutIndexes()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_e

    :cond_2c
    const/4 v0, 0x4

    .line 342
    invoke-virtual {p1, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/SchemaObject;

    .line 343
    invoke-interface {v2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_f

    .line 346
    :cond_2d
    check-cast v2, Lorg/h2/schema/TriggerObject;

    .line 347
    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getTable()Lorg/h2/table/Table;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_f

    .line 350
    :cond_2e
    invoke-virtual {v2}, Lorg/h2/schema/TriggerObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_f

    .line 353
    :cond_2f
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllRights()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Right;

    .line 354
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getGrantedObject()Lorg/h2/engine/DbObject;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 356
    instance-of v4, v3, Lorg/h2/schema/Schema;

    if-eqz v4, :cond_30

    .line 357
    check-cast v3, Lorg/h2/schema/Schema;

    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_10

    .line 360
    :cond_30
    instance-of v4, v3, Lorg/h2/table/Table;

    if-eqz v4, :cond_32

    .line 361
    check-cast v3, Lorg/h2/table/Table;

    .line 362
    invoke-virtual {v3}, Lorg/h2/table/Table;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/h2/command/dml/ScriptCommand;->excludeSchema(Lorg/h2/schema/Schema;)Z

    move-result v4

    if-eqz v4, :cond_31

    goto :goto_10

    .line 365
    :cond_31
    invoke-direct {p0, v3}, Lorg/h2/command/dml/ScriptCommand;->excludeTable(Lorg/h2/table/Table;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_10

    .line 370
    :cond_32
    invoke-virtual {v2}, Lorg/h2/engine/Right;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_10

    .line 373
    :cond_33
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getAllComments()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Comment;

    .line 374
    invoke-virtual {v0}, Lorg/h2/engine/Comment;->getCreateSQL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lorg/h2/command/dml/ScriptCommand;->add(Ljava/lang/String;Z)V

    goto :goto_11

    .line 376
    :cond_34
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    if-eqz p1, :cond_35

    .line 377
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_35
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->closeIO()V

    .line 384
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->done()V

    .line 385
    iget-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->result:Lorg/h2/result/LocalResult;

    .line 386
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->reset()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_12

    :catch_0
    move-exception p1

    .line 380
    :try_start_1
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :goto_12
    invoke-virtual {p0}, Lorg/h2/command/dml/ScriptCommand;->closeIO()V

    throw p1
.end method

.method public queryMeta()Lorg/h2/result/ResultInterface;
    .locals 1

    .line 130
    invoke-direct {p0}, Lorg/h2/command/dml/ScriptCommand;->createResult()Lorg/h2/result/LocalResult;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/h2/result/LocalResult;->done()V

    return-object v0
.end method

.method public bridge synthetic readLob(J[BJ[BII)I
    .locals 0

    .line 67
    invoke-super/range {p0 .. p8}, Lorg/h2/command/dml/ScriptBase;->readLob(J[BJ[BII)I

    move-result p1

    return p1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 724
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public bridge synthetic setCipher(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCipher(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setCompressionAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method public setData(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->data:Z

    return-void
.end method

.method public setDrop(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->drop:Z

    return-void
.end method

.method public bridge synthetic setFileNameExpr(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setFileNameExpr(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setLobBlockSize(J)V
    .locals 0

    .line 121
    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    iput p1, p0, Lorg/h2/command/dml/ScriptCommand;->lobBlockSize:I

    return-void
.end method

.method public bridge synthetic setPassword(Lorg/h2/expression/Expression;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lorg/h2/command/dml/ScriptBase;->setPassword(Lorg/h2/expression/Expression;)V

    return-void
.end method

.method public setPasswords(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->passwords:Z

    return-void
.end method

.method public setSchemaNames(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 101
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->schemaNames:Ljava/util/Set;

    return-void
.end method

.method public setSettings(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->settings:Z

    return-void
.end method

.method public setSimple(Z)V
    .locals 0

    .line 720
    iput-boolean p1, p0, Lorg/h2/command/dml/ScriptCommand;->simple:Z

    return-void
.end method

.method public setTables(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/h2/table/Table;",
            ">;)V"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lorg/h2/command/dml/ScriptCommand;->tables:Ljava/util/Collection;

    return-void
.end method
