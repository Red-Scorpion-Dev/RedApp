.class public Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;
.super Ljava/lang/Object;
.source "FullTextLucene.java"

# interfaces
.implements Lorg/h2/api/Trigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/fulltext/FullTextLucene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FullTextTrigger"
.end annotation


# instance fields
.field protected columnTypes:[I

.field protected columns:[Ljava/lang/String;

.field protected indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

.field protected indexColumns:[I

.field protected indexPath:Ljava/lang/String;

.field protected keys:[I

.field protected schema:Ljava/lang/String;

.field protected table:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getQuery([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 680
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 681
    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->schema:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->schema:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 684
    :cond_0
    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->table:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v1

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 685
    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->keys:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    const-string v5, " AND "

    .line 686
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 687
    iget-object v5, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-static {v5}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 688
    aget-object v5, p1, v4

    if-nez v5, :cond_1

    const-string v4, " IS NULL"

    .line 690
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_1

    :cond_1
    const/16 v6, 0x3d

    .line 692
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    aget v4, v7, v4

    invoke-static {v5, v4}, Lorg/h2/fulltext/FullText;->quoteSQL(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 695
    :cond_2
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/fulltext/FullTextLucene;->removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    :cond_0
    return-void
.end method

.method commitIndex()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 605
    :try_start_0
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexWriter;->commit()V

    .line 607
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {v0}, Lorg/apache/lucene/search/IndexSearcher;->close()V

    .line 608
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v0, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-virtual {v0}, Lorg/apache/lucene/index/IndexReader;->close()V

    .line 609
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v1, v1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/index/IndexWriter;Z)Lorg/apache/lucene/index/IndexReader;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    .line 610
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    new-instance v1, Lorg/apache/lucene/search/IndexSearcher;

    iget-object v2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object v2, v2, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-direct {v1, v2}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object v1, v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 612
    invoke-static {v0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected delete([Ljava/lang/Object;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 667
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->getQuery([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 669
    :try_start_0
    new-instance v0, Lorg/apache/lucene/index/Term;

    const-string v1, "_QUERY"

    invoke-direct {v0, v1, p1}, Lorg/apache/lucene/index/Term;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object p1, p1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1, v0}, Lorg/apache/lucene/index/IndexWriter;->deleteDocuments(Lorg/apache/lucene/index/Term;)V

    if-eqz p2, :cond_0

    .line 672
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 675
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 567
    iget-object v0, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    invoke-static {p2, p3, v0}, Lorg/h2/fulltext/FullText;->hasChanged([Ljava/lang/Object;[Ljava/lang/Object;[I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 568
    invoke-virtual {p0, p2, v0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->delete([Ljava/lang/Object;Z)V

    .line 569
    invoke-virtual {p0, p3, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->insert([Ljava/lang/Object;Z)V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p0, p2, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->delete([Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 577
    invoke-virtual {p0, p3, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->insert([Ljava/lang/Object;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 499
    iput-object p2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->schema:Ljava/lang/String;

    .line 500
    iput-object p4, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->table:Ljava/lang/String;

    .line 501
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexPath:Ljava/lang/String;

    .line 502
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    move-result-object p3

    iput-object p3, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    .line 503
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p3

    .line 504
    invoke-interface {p1}, Ljava/sql/Connection;->getMetaData()Ljava/sql/DatabaseMetaData;

    move-result-object p5

    .line 505
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p5, v1, p6, v0, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    .line 509
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 510
    :goto_0
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "COLUMN_NAME"

    .line 511
    invoke-interface {p6, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    new-array p6, p6, [I

    iput-object p6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p6

    new-array p6, p6, [Ljava/lang/String;

    iput-object p6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    .line 515
    iget-object p6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 516
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-static {p4}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p5, v1, p6, v2, v1}, Ljava/sql/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p6

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 520
    :goto_1
    invoke-interface {p6}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 521
    iget-object v4, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    const-string v6, "DATA_TYPE"

    invoke-interface {p6, v6}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v3

    add-int/2addr v3, v5

    goto :goto_1

    .line 523
    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p6

    if-nez p6, :cond_2

    .line 524
    invoke-static {p2}, Lorg/h2/util/StringUtils;->escapeMetaDataPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p5, v1, p6, p4}, Ljava/sql/DatabaseMetaData;->getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p5

    .line 527
    :goto_2
    invoke-interface {p5}, Ljava/sql/ResultSet;->next()Z

    move-result p6

    if-eqz p6, :cond_2

    const-string p6, "COLUMN_NAME"

    .line 528
    invoke-interface {p5, p6}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 531
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-eqz p5, :cond_5

    .line 534
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p5

    const-string p6, "SELECT COLUMNS FROM FTL.INDEXES WHERE SCHEMA=? AND TABLE=?"

    .line 535
    invoke-interface {p1, p6}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 538
    invoke-interface {p1, v5, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p2, 0x2

    .line 539
    invoke-interface {p1, p2, p4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 540
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p1

    .line 541
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 542
    invoke-interface {p1, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const/16 p2, 0x2c

    .line 544
    invoke-static {p1, p2, v5}, Lorg/h2/util/StringUtils;->arraySplit(Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    :goto_3
    if-ge v2, p2, :cond_3

    aget-object p4, p1, v2

    .line 545
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 549
    :cond_3
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 550
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 552
    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->keys:[I

    .line 553
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->keys:[I

    invoke-static {p1, p3, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 554
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    .line 555
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    invoke-static {p1, p5, v0}, Lorg/h2/fulltext/FullText;->setColumns([ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 532
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No primary key for table "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/fulltext/FullText;->throwException(Ljava/lang/String;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected insert([Ljava/lang/Object;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 623
    invoke-direct {p0, p1}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->getQuery([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 624
    new-instance v1, Lorg/apache/lucene/document/Document;

    invoke-direct {v1}, Lorg/apache/lucene/document/Document;-><init>()V

    .line 625
    new-instance v2, Lorg/apache/lucene/document/Field;

    const-string v3, "_QUERY"

    sget-object v4, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v5, Lorg/apache/lucene/document/Field$Index;->NOT_ANALYZED:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v2, v3, v0, v4, v5}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v2}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 627
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 628
    new-instance v0, Lorg/apache/lucene/document/Field;

    const-string v4, "_modified"

    sget-object v5, Lorg/apache/lucene/document/DateTools$Resolution;->SECOND:Lorg/apache/lucene/document/DateTools$Resolution;

    invoke-static {v2, v3, v5}, Lorg/apache/lucene/document/DateTools;->timeToString(JLorg/apache/lucene/document/DateTools$Resolution;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    sget-object v5, Lorg/apache/lucene/document/Field$Index;->NOT_ANALYZED:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v0, v4, v2, v3, v5}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v0}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 631
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 632
    iget-object v2, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexColumns:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v2, v4

    .line 633
    iget-object v6, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columns:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 634
    aget-object v7, p1, v5

    iget-object v8, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->columnTypes:[I

    aget v5, v8, v5

    invoke-static {v7, v5}, Lorg/h2/fulltext/FullText;->asString(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "_"

    .line 638
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 641
    :cond_0
    new-instance v7, Lorg/apache/lucene/document/Field;

    sget-object v8, Lorg/apache/lucene/document/Field$Store;->NO:Lorg/apache/lucene/document/Field$Store;

    sget-object v9, Lorg/apache/lucene/document/Field$Index;->ANALYZED:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v7, v6, v5, v8, v9}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v7}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    const-string v6, " "

    .line 643
    invoke-virtual {v0, v6}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 646
    :cond_1
    sget-boolean p1, Lorg/h2/fulltext/FullTextLucene;->STORE_DOCUMENT_TEXT_IN_INDEX:Z

    if-eqz p1, :cond_2

    sget-object p1, Lorg/apache/lucene/document/Field$Store;->YES:Lorg/apache/lucene/document/Field$Store;

    goto :goto_1

    :cond_2
    sget-object p1, Lorg/apache/lucene/document/Field$Store;->NO:Lorg/apache/lucene/document/Field$Store;

    .line 648
    :goto_1
    new-instance v2, Lorg/apache/lucene/document/Field;

    const-string v3, "_DATA"

    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lorg/apache/lucene/document/Field$Index;->ANALYZED:Lorg/apache/lucene/document/Field$Index;

    invoke-direct {v2, v3, v0, p1, v4}, Lorg/apache/lucene/document/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/lucene/document/Field$Store;Lorg/apache/lucene/document/Field$Index;)V

    invoke-virtual {v1, v2}, Lorg/apache/lucene/document/Document;->add(Lorg/apache/lucene/document/Fieldable;)V

    .line 651
    :try_start_0
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->indexAccess:Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    iget-object p1, p1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p1, v1}, Lorg/apache/lucene/index/IndexWriter;->addDocument(Lorg/apache/lucene/document/Document;)V

    if-eqz p2, :cond_3

    .line 653
    invoke-virtual {p0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 656
    invoke-static {p1}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public remove()V
    .locals 0

    return-void
.end method
