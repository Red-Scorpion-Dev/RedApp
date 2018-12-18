.class public Lorg/h2/fulltext/FullText;
.super Ljava/lang/Object;
.source "FullText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/fulltext/FullText$FullTextTrigger;
    }
.end annotation


# static fields
.field private static final FIELD_COLUMNS:Ljava/lang/String; = "COLUMNS"

.field private static final FIELD_KEYS:Ljava/lang/String; = "KEYS"

.field private static final FIELD_QUERY:Ljava/lang/String; = "QUERY"

.field private static final FIELD_SCHEMA:Ljava/lang/String; = "SCHEMA"

.field private static final FIELD_SCORE:Ljava/lang/String; = "SCORE"

.field private static final FIELD_TABLE:Ljava/lang/String; = "TABLE"

.field private static final SCHEMA:Ljava/lang/String; = "FT"

.field private static final SELECT_MAP_BY_WORD_ID:Ljava/lang/String; = "SELECT ROWID FROM FT.MAP WHERE WORDID=?"

.field private static final SELECT_ROW_BY_ID:Ljava/lang/String; = "SELECT KEY, INDEXID FROM FT.ROWS WHERE ID=?"

.field private static final TRIGGER_PREFIX:Ljava/lang/String; = "FT_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/h2/expression/Expression;",
            ")V"
        }
    .end annotation

    .line 673
    instance-of v0, p2, Lorg/h2/expression/ConditionAndOr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 674
    check-cast p2, Lorg/h2/expression/ConditionAndOr;

    .line 675
    invoke-virtual {p2, v2}, Lorg/h2/expression/ConditionAndOr;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object v0

    .line 676
    invoke-virtual {p2, v1}, Lorg/h2/expression/ConditionAndOr;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object p2

    .line 677
    invoke-static {p0, p1, v0}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    .line 678
    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    goto :goto_0

    .line 680
    :cond_0
    check-cast p2, Lorg/h2/expression/Comparison;

    .line 681
    invoke-virtual {p2, v2}, Lorg/h2/expression/Comparison;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object v0

    check-cast v0, Lorg/h2/expression/ExpressionColumn;

    .line 682
    invoke-virtual {p2, v1}, Lorg/h2/expression/Comparison;->getExpression(Z)Lorg/h2/expression/Expression;

    move-result-object p2

    check-cast p2, Lorg/h2/expression/ValueExpression;

    .line 683
    invoke-virtual {v0}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    if-nez p2, :cond_1

    .line 686
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {p2, p0}, Lorg/h2/expression/ValueExpression;->getValue(Lorg/h2/engine/Session;)Lorg/h2/value/Value;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected static addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/io/Reader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/fulltext/FullTextSettings;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/io/StreamTokenizer;

    invoke-direct {v0, p2}, Ljava/io/StreamTokenizer;-><init>(Ljava/io/Reader;)V

    .line 703
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->resetSyntax()V

    const/16 p2, 0x21

    const/16 v1, 0xff

    .line 704
    invoke-virtual {v0, p2, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 705
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWhitespaceChars()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    .line 706
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, p2, v2

    .line 707
    invoke-virtual {v0, v3, v3}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 711
    :cond_0
    :goto_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x3

    if-ne p2, v1, :cond_0

    .line 715
    iget-object p2, v0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 716
    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 718
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Tokenizer error"

    .line 723
    invoke-static {p0, p1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method protected static addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/fulltext/FullTextSettings;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWhitespaceChars()Ljava/lang/String;

    move-result-object v0

    .line 737
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, p2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 739
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    .line 740
    invoke-virtual {p0, p2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 742
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static asString(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x46

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, ""

    return-object p0

    .line 412
    :pswitch_0
    :try_start_0
    instance-of p1, p0, Ljava/sql/Clob;

    if-eqz p1, :cond_1

    .line 413
    check-cast p0, Ljava/sql/Clob;

    invoke-interface {p0}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object p0

    .line 415
    :cond_1
    check-cast p0, Ljava/io/Reader;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lorg/h2/util/IOUtils;->readStringAndClose(Ljava/io/Reader;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 417
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 431
    :cond_2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported column data type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 409
    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static closeAll()V
    .locals 0

    .line 1105
    invoke-static {}, Lorg/h2/fulltext/FullTextSettings;->closeAll()V

    return-void
.end method

.method public static createIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 177
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "INSERT INTO FT.INDEXES(SCHEMA, TABLE, COLUMNS) VALUES(?, ?, ?)"

    .line 178
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 180
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 181
    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 182
    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 183
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 184
    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullText;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 761
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    if-eqz p3, :cond_0

    .line 766
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AFTER INSERT, UPDATE, DELETE, ROLLBACK ON "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " FOR EACH ROW CALL \""

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lorg/h2/fulltext/FullText$FullTextTrigger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 777
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected static createResultSet(Z)Lorg/h2/tools/SimpleResultSet;
    .locals 3

    .line 445
    new-instance v0, Lorg/h2/tools/SimpleResultSet;

    invoke-direct {v0}, Lorg/h2/tools/SimpleResultSet;-><init>()V

    const/16 v1, 0xc

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const-string p0, "SCHEMA"

    .line 447
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "TABLE"

    .line 448
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "COLUMNS"

    const/16 v1, 0x7d3

    .line 449
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    const-string p0, "KEYS"

    .line 450
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    goto :goto_0

    :cond_0
    const-string p0, "QUERY"

    .line 452
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    :goto_0
    const-string p0, "SCORE"

    const/4 v1, 0x6

    .line 454
    invoke-virtual {v0, p0, v1, v2, v2}, Lorg/h2/tools/SimpleResultSet;->addColumn(Ljava/lang/String;III)V

    return-object v0
.end method

.method protected static createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 756
    invoke-static {p0, p1, p2, v0}, Lorg/h2/fulltext/FullText;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static dropAll(Ljava/sql/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 263
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    .line 264
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "DROP SCHEMA IF EXISTS FT"

    .line 265
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "FT_"

    .line 266
    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    .line 267
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object p0

    .line 268
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->removeAllIndexes()V

    .line 269
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getIgnoreList()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 270
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static dropIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 222
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "SELECT ID FROM FT.INDEXES WHERE SCHEMA=? AND TABLE=?"

    .line 223
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 225
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 226
    invoke-interface {v0, v2, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 227
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v0

    .line 228
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v0

    const-string v2, "DELETE FROM FT.INDEXES WHERE ID=?"

    .line 232
    invoke-interface {p0, v2}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    .line 234
    invoke-interface {v2, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 235
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->execute()Z

    const/4 v2, 0x0

    .line 236
    invoke-static {p0, p1, p2, v2}, Lorg/h2/fulltext/FullText;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string p1, "DELETE FROM FT.ROWS WHERE INDEXID=? AND ROWNUM<10000"

    .line 237
    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 240
    :cond_1
    invoke-interface {p1, v1, v0}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 241
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "DELETE FROM FT.MAP M WHERE NOT EXISTS (SELECT * FROM FT.ROWS R WHERE R.ID=M.ROWID) AND ROWID<10000"

    .line 246
    invoke-interface {p0, p1}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    .line 250
    :cond_2
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p0

    if-nez p0, :cond_2

    return-void
.end method

.method protected static hasChanged([Ljava/lang/Object;[Ljava/lang/Object;[I)Z
    .locals 6

    .line 847
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p2, v2

    .line 848
    aget-object v4, p0, v3

    aget-object v3, p1, v3

    const/4 v5, 0x1

    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    return v5

    .line 853
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected static indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 790
    new-instance v7, Lorg/h2/fulltext/FullText$FullTextTrigger;

    invoke-direct {v7}, Lorg/h2/fulltext/FullText$FullTextTrigger;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 791
    invoke-virtual/range {v0 .. v6}, Lorg/h2/fulltext/FullText$FullTextTrigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 794
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1

    .line 795
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p2

    invoke-interface {p2}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result p2

    .line 796
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 799
    invoke-interface {p1, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 801
    invoke-virtual {v7, p0, v1, v0}, Lorg/h2/fulltext/FullText$FullTextTrigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static init(Ljava/sql/Connection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 108
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CREATE SCHEMA IF NOT EXISTS FT"

    .line 109
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.INDEXES(ID INT AUTO_INCREMENT PRIMARY KEY, SCHEMA VARCHAR, TABLE VARCHAR, COLUMNS VARCHAR, UNIQUE(SCHEMA, TABLE))"

    .line 110
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.WORDS(ID INT AUTO_INCREMENT PRIMARY KEY, NAME VARCHAR, UNIQUE(NAME))"

    .line 114
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.ROWS(ID IDENTITY, HASH INT, INDEXID INT, KEY VARCHAR, UNIQUE(HASH, INDEXID, KEY))"

    .line 117
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.MAP(ROWID INT, WORDID INT, PRIMARY KEY(WORDID, ROWID))"

    .line 120
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.IGNORELIST(LIST VARCHAR)"

    .line 122
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FT.SETTINGS(KEY VARCHAR PRIMARY KEY, VALUE VARCHAR)"

    .line 124
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_CREATE_INDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".createIndex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_DROP_INDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropIndex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_SEARCH FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".search\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_SEARCH_DATA FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".searchData\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_REINDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".reindex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FT_DROP_ALL FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullText;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropAll\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 138
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object p0

    const-string v1, "SELECT * FROM FT.IGNORELIST"

    .line 139
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 141
    :goto_0
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 142
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {p0, v2}, Lorg/h2/fulltext/FullText;->setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "SELECT * FROM FT.SETTINGS"

    .line 145
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    .line 146
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "whitespaceChars"

    .line 148
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 149
    invoke-interface {v1, v2}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-virtual {p0, v2}, Lorg/h2/fulltext/FullTextSettings;->setWhitespaceChars(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "SELECT * FROM FT.WORDS"

    .line 153
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v1

    .line 155
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "NAME"

    .line 156
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ID"

    .line 157
    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 158
    invoke-virtual {p0, v2}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 160
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 163
    :cond_4
    invoke-virtual {p0, v3}, Lorg/h2/fulltext/FullTextSettings;->setInitialized(Z)V

    return-void
.end method

.method protected static parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;
    .locals 3

    .line 466
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 467
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 468
    check-cast p0, Lorg/h2/jdbc/JdbcConnection;

    .line 469
    invoke-virtual {p0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object p0

    check-cast p0, Lorg/h2/engine/Session;

    .line 470
    new-instance v2, Lorg/h2/command/Parser;

    invoke-direct {v2, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 471
    invoke-virtual {v2, p1}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object p0

    .line 472
    invoke-static {v0, v1, p0}, Lorg/h2/fulltext/FullText;->addColumnData(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/h2/expression/Expression;)V

    .line 473
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Object;

    .line 474
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    .line 476
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x2

    .line 477
    new-array v0, v0, [[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method protected static quoteSQL(Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "NULL"

    return-object p0

    :cond_0
    const/16 v0, 0xc

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    const/16 v0, 0x46

    if-eq p1, v0, :cond_2

    const/16 v0, 0x457

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p0, ""

    return-object p0

    .line 516
    :pswitch_0
    instance-of p1, p0, Ljava/util/UUID;

    if-eqz p1, :cond_1

    .line 517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 519
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, [B

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 530
    :cond_2
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported key data type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 505
    :cond_3
    :pswitch_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v0, 0x27

    .line 806
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 809
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 811
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 813
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_1

    .line 815
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 817
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 819
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 820
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reindex(Ljava/sql/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 195
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    const-string v0, "FT_"

    .line 196
    invoke-static {p0, v0}, Lorg/h2/fulltext/FullText;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    .line 197
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 199
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "TRUNCATE TABLE FT.WORDS"

    .line 200
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "TRUNCATE TABLE FT.ROWS"

    .line 201
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "TRUNCATE TABLE FT.MAP"

    .line 202
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "SELECT * FROM FT.INDEXES"

    .line 203
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 204
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEMA"

    .line 205
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TABLE"

    .line 206
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullText;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullText;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 544
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "SELECT * FROM INFORMATION_SCHEMA.TRIGGERS"

    .line 545
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 546
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 547
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TRIGGER_SCHEMA"

    .line 548
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRIGGER_NAME"

    .line 549
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 550
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TRIGGER "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static search(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 292
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullText;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 294
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method protected static search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 596
    invoke-static/range {p4 .. p4}, Lorg/h2/fulltext/FullText;->createResultSet(Z)Lorg/h2/tools/SimpleResultSet;

    move-result-object v3

    .line 597
    invoke-interface {p0}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object v4

    invoke-interface {v4}, Ljava/sql/DatabaseMetaData;->getURL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jdbc:columnlist:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    if-eqz v1, :cond_f

    .line 601
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 604
    :cond_1
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Lorg/h2/fulltext/FullTextSettings;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    .line 606
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    .line 608
    :cond_2
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v5

    .line 609
    invoke-static {v4, v5, v1}, Lorg/h2/fulltext/FullText;->addWords(Lorg/h2/fulltext/FullTextSettings;Ljava/util/HashSet;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 611
    invoke-virtual {v4}, Lorg/h2/fulltext/FullTextSettings;->getWordList()Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "SELECT ROWID FROM FT.MAP WHERE WORDID=?"

    .line 613
    invoke-virtual {v4, p0, v7}, Lorg/h2/fulltext/FullTextSettings;->prepare(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v7

    .line 615
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 617
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 618
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_3

    goto :goto_2

    .line 622
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v9, v8}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 623
    invoke-interface {v7}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v8

    .line 624
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 625
    invoke-interface {v8, v9}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v1, :cond_5

    .line 626
    invoke-virtual {v1, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 627
    :cond_5
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    :goto_2
    move-object v1, v10

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_e

    .line 631
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v5, "SELECT KEY, INDEXID FROM FT.ROWS WHERE ID=?"

    .line 634
    invoke-virtual {v4, p0, v5}, Lorg/h2/fulltext/FullTextSettings;->prepare(Ljava/sql/Connection;Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5

    .line 636
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    move/from16 v7, p3

    const/4 v8, 0x0

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 637
    invoke-interface {v5, v9, v10}, Ljava/sql/PreparedStatement;->setInt(II)V

    .line 638
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v10

    .line 639
    invoke-interface {v10}, Ljava/sql/ResultSet;->next()Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_3

    :cond_a
    if-lez v7, :cond_b

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 645
    :cond_b
    invoke-interface {v10, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    .line 646
    invoke-interface {v10, v12}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v10

    .line 647
    invoke-virtual {v4, v10}, Lorg/h2/fulltext/FullTextSettings;->getIndexInfo(I)Lorg/h2/fulltext/IndexInfo;

    move-result-object v10

    if-eqz p4, :cond_c

    .line 649
    invoke-static {p0, v11}, Lorg/h2/fulltext/FullText;->parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v11

    const/4 v13, 0x5

    .line 650
    new-array v13, v13, [Ljava/lang/Object;

    iget-object v14, v10, Lorg/h2/fulltext/IndexInfo;->schema:Ljava/lang/String;

    aput-object v14, v13, v6

    iget-object v10, v10, Lorg/h2/fulltext/IndexInfo;->table:Ljava/lang/String;

    aput-object v10, v13, v9

    aget-object v10, v11, v6

    aput-object v10, v13, v12

    const/4 v10, 0x3

    aget-object v11, v11, v9

    aput-object v11, v13, v10

    const/4 v10, 0x4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v13, v10

    invoke-virtual {v3, v13}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_4

    .line 657
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lorg/h2/fulltext/IndexInfo;->schema:Ljava/lang/String;

    invoke-static {v14}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lorg/h2/fulltext/IndexInfo;->table:Ljava/lang/String;

    invoke-static {v10}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " WHERE "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 660
    new-array v11, v12, [Ljava/lang/Object;

    aput-object v10, v11, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v11, v9

    invoke-virtual {v3, v11}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    if-lez v2, :cond_9

    if-lt v8, v2, :cond_9

    :cond_d
    return-object v3

    :cond_e
    :goto_5
    return-object v3

    :cond_f
    :goto_6
    return-object v3
.end method

.method public static searchData(Ljava/sql/Connection;Ljava/lang/String;II)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 323
    :try_start_0
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullText;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 325
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method protected static setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 567
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 568
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 570
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_1
    if-ne v6, v5, :cond_1

    if-ge v7, v4, :cond_1

    .line 572
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 573
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    if-ltz v6, :cond_2

    .line 580
    aput v6, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Column not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :cond_3
    return-void
.end method

.method public static setIgnoreList(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    .line 342
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    .line 343
    invoke-static {v0, p1}, Lorg/h2/fulltext/FullText;->setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V

    .line 344
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "TRUNCATE TABLE FT.IGNORELIST"

    .line 345
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "INSERT INTO FT.IGNORELIST VALUES(?)"

    .line 346
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    .line 348
    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 349
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 351
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static setIgnoreList(Lorg/h2/fulltext/FullTextSettings;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x2c

    .line 825
    invoke-static {p1, v1, v0}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextSettings;->getIgnoreList()Ljava/util/HashSet;

    move-result-object v0

    .line 827
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 828
    invoke-virtual {p0, v3}, Lorg/h2/fulltext/FullTextSettings;->convertWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 830
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static setWhitespaceChars(Ljava/sql/Connection;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 366
    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullText;->init(Ljava/sql/Connection;)V

    .line 367
    invoke-static {p0}, Lorg/h2/fulltext/FullTextSettings;->getInstance(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextSettings;

    move-result-object v0

    .line 368
    invoke-virtual {v0, p1}, Lorg/h2/fulltext/FullTextSettings;->setWhitespaceChars(Ljava/lang/String;)V

    const-string v0, "MERGE INTO FT.SETTINGS VALUES(?, ?)"

    .line 369
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "whitespaceChars"

    .line 371
    invoke-interface {p0, v0, v1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v0, 0x2

    .line 372
    invoke-interface {p0, v0, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 373
    invoke-interface {p0}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 375
    invoke-static {p0}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method protected static throwException(Ljava/lang/String;)Ljava/sql/SQLException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1117
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "FULLTEXT"

    invoke-direct {v0, p0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
