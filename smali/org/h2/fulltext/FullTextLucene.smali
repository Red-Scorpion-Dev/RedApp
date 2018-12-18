.class public Lorg/h2/fulltext/FullTextLucene;
.super Lorg/h2/fulltext/FullText;
.source "FullTextLucene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/fulltext/FullTextLucene$IndexAccess;,
        Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;
    }
.end annotation


# static fields
.field private static final INDEX_ACCESS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/fulltext/FullTextLucene$IndexAccess;",
            ">;"
        }
    .end annotation
.end field

.field private static final IN_MEMORY_PREFIX:Ljava/lang/String; = "mem:"

.field private static final LUCENE_FIELD_COLUMN_PREFIX:Ljava/lang/String; = "_"

.field private static final LUCENE_FIELD_DATA:Ljava/lang/String; = "_DATA"

.field private static final LUCENE_FIELD_MODIFIED:Ljava/lang/String; = "_modified"

.field private static final LUCENE_FIELD_QUERY:Ljava/lang/String; = "_QUERY"

.field private static final SCHEMA:Ljava/lang/String; = "FTL"

.field protected static final STORE_DOCUMENT_TEXT_IN_INDEX:Z

.field private static final TRIGGER_PREFIX:Ljava/lang/String; = "FTL_"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "h2.storeDocumentTextInIndex"

    const/4 v1, 0x0

    .line 57
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/fulltext/FullTextLucene;->STORE_DOCUMENT_TEXT_IN_INDEX:Z

    .line 60
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/h2/fulltext/FullText;-><init>()V

    return-void
.end method

.method protected static convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 3

    .line 251
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "Error while indexing document"

    const-string v2, "FULLTEXT"

    invoke-direct {v0, v1, v2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method public static createIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 132
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "INSERT INTO FTL.INDEXES(SCHEMA, TABLE, COLUMNS) VALUES(?, ?, ?)"

    .line 133
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 135
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 136
    invoke-interface {v0, v1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 v1, 0x3

    .line 137
    invoke-interface {v0, v1, p3}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 138
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->execute()Z

    .line 139
    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullTextLucene;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p0, p1, p2}, Lorg/h2/fulltext/FullTextLucene;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 271
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    if-eqz p3, :cond_0

    .line 276
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TRIGGER IF NOT EXISTS "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
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

    const-class p1, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method protected static createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 266
    invoke-static {p0, p1, p2, v0}, Lorg/h2/fulltext/FullTextLucene;->createOrDropTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static dropAll(Ljava/sql/Connection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "DROP SCHEMA IF EXISTS FTL"

    .line 194
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v0, "FTL_"

    .line 195
    invoke-static {p0, v0}, Lorg/h2/fulltext/FullTextLucene;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    .line 196
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexFiles(Ljava/sql/Connection;)V

    return-void
.end method

.method public static dropIndex(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "DELETE FROM FTL.INDEXES WHERE SCHEMA=? AND TABLE=?"

    .line 155
    invoke-interface {p0, v0}, Ljava/sql/Connection;->prepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v0

    const/4 v1, 0x1

    .line 157
    invoke-interface {v0, v1, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    const/4 p1, 0x2

    .line 158
    invoke-interface {v0, p1, p2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 159
    invoke-interface {v0}, Ljava/sql/PreparedStatement;->executeUpdate()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->reindex(Ljava/sql/Connection;)V

    return-void
.end method

.method protected static getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 300
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    .line 301
    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    const-string v1, "mem:"

    .line 305
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/lucene/store/RAMDirectory;

    invoke-direct {v1}, Lorg/apache/lucene/store/RAMDirectory;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/apache/lucene/store/FSDirectory;->open(Ljava/io/File;)Lorg/apache/lucene/store/FSDirectory;

    move-result-object v1

    .line 307
    :goto_0
    new-instance v2, Lorg/apache/lucene/analysis/standard/StandardAnalyzer;

    sget-object v3, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    invoke-direct {v2, v3}, Lorg/apache/lucene/analysis/standard/StandardAnalyzer;-><init>(Lorg/apache/lucene/util/Version;)V

    .line 308
    new-instance v3, Lorg/apache/lucene/index/IndexWriterConfig;

    sget-object v4, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    invoke-direct {v3, v4, v2}, Lorg/apache/lucene/index/IndexWriterConfig;-><init>(Lorg/apache/lucene/util/Version;Lorg/apache/lucene/analysis/Analyzer;)V

    .line 309
    sget-object v2, Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;->CREATE_OR_APPEND:Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;

    invoke-virtual {v3, v2}, Lorg/apache/lucene/index/IndexWriterConfig;->setOpenMode(Lorg/apache/lucene/index/IndexWriterConfig$OpenMode;)Lorg/apache/lucene/index/IndexWriterConfig;

    .line 310
    new-instance v2, Lorg/apache/lucene/index/IndexWriter;

    invoke-direct {v2, v1, v3}, Lorg/apache/lucene/index/IndexWriter;-><init>(Lorg/apache/lucene/store/Directory;Lorg/apache/lucene/index/IndexWriterConfig;)V

    const/4 v1, 0x1

    .line 312
    invoke-static {v2, v1}, Lorg/apache/lucene/index/IndexReader;->open(Lorg/apache/lucene/index/IndexWriter;Z)Lorg/apache/lucene/index/IndexReader;

    move-result-object v1

    .line 313
    new-instance v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    invoke-direct {v3}, Lorg/h2/fulltext/FullTextLucene$IndexAccess;-><init>()V

    .line 314
    iput-object v2, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    .line 315
    iput-object v1, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    .line 316
    new-instance v2, Lorg/apache/lucene/search/IndexSearcher;

    invoke-direct {v2, v1}, Lorg/apache/lucene/search/IndexSearcher;-><init>(Lorg/apache/lucene/index/IndexReader;)V

    iput-object v2, v3, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    :try_start_2
    sget-object v1, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    goto :goto_1

    :catch_0
    move-exception p0

    .line 318
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 322
    :cond_1
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 323
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method protected static getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 333
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CALL DATABASE_PATH()"

    .line 334
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    const/4 v1, 0x1

    .line 336
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mem:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/sql/Connection;->getCatalog()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x3a

    .line 340
    invoke-virtual {v2, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-le p0, v1, :cond_1

    add-int/2addr p0, v1

    .line 343
    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 345
    :cond_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    return-object v2
.end method

.method protected static indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 358
    new-instance v7, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;

    invoke-direct {v7}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 359
    invoke-virtual/range {v0 .. v6}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 360
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

    .line 362
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p0

    .line 363
    invoke-interface {p0}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object p1

    invoke-interface {p1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result p1

    .line 364
    :goto_0
    invoke-interface {p0}, Ljava/sql/ResultSet;->next()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 365
    new-array p2, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 367
    invoke-interface {p0, v2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p2, v1

    move v1, v2

    goto :goto_1

    .line 369
    :cond_0
    invoke-virtual {v7, p2, v0}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->insert([Ljava/lang/Object;Z)V

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v7}, Lorg/h2/fulltext/FullTextLucene$FullTextTrigger;->commitIndex()V

    return-void
.end method

.method public static init(Ljava/sql/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 97
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "CREATE SCHEMA IF NOT EXISTS FTL"

    .line 98
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    const-string v1, "CREATE TABLE IF NOT EXISTS FTL.INDEXES(SCHEMA VARCHAR, TABLE VARCHAR, COLUMNS VARCHAR, PRIMARY KEY(SCHEMA, TABLE))"

    .line 99
    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_CREATE_INDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".createIndex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_DROP_INDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropIndex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_SEARCH FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".search\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_SEARCH_DATA FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".searchData\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_REINDEX FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".reindex\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE ALIAS IF NOT EXISTS FTL_DROP_ALL FOR \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lorg/h2/fulltext/FullTextLucene;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dropAll\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z

    .line 115
    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 117
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static reindex(Ljava/sql/Connection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 174
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->init(Ljava/sql/Connection;)V

    const-string v0, "FTL_"

    .line 175
    invoke-static {p0, v0}, Lorg/h2/fulltext/FullTextLucene;->removeAllTriggers(Ljava/sql/Connection;Ljava/lang/String;)V

    .line 176
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexFiles(Ljava/sql/Connection;)V

    .line 177
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "SELECT * FROM FTL.INDEXES"

    .line 178
    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    .line 179
    :goto_0
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SCHEMA"

    .line 180
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TABLE"

    .line 181
    invoke-interface {v0, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullTextLucene;->createTrigger(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-static {p0, v1, v2}, Lorg/h2/fulltext/FullTextLucene;->indexExistingRows(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 394
    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    monitor-enter v0

    .line 396
    :try_start_0
    sget-object v1, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    invoke-virtual {p1}, Lorg/apache/lucene/search/IndexSearcher;->close()V

    .line 398
    iget-object p1, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->reader:Lorg/apache/lucene/index/IndexReader;

    invoke-virtual {p1}, Lorg/apache/lucene/index/IndexReader;->close()V

    .line 399
    iget-object p0, p0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {p0}, Lorg/apache/lucene/index/IndexWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 403
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static removeIndexFiles(Ljava/sql/Connection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexPath(Ljava/sql/Connection;)Ljava/lang/String;

    move-result-object p0

    .line 376
    sget-object v0, Lorg/h2/fulltext/FullTextLucene;->INDEX_ACCESS:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    if-eqz v0, :cond_0

    .line 378
    invoke-static {v0, p0}, Lorg/h2/fulltext/FullTextLucene;->removeIndexAccess(Lorg/h2/fulltext/FullTextLucene$IndexAccess;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mem:"

    .line 380
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 381
    invoke-static {p0, v0}, Lorg/h2/store/fs/FileUtils;->deleteRecursive(Ljava/lang/String;Z)V

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

    .line 216
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullTextLucene;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
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

    .line 418
    invoke-static/range {p4 .. p4}, Lorg/h2/fulltext/FullTextLucene;->createResultSet(Z)Lorg/h2/tools/SimpleResultSet;

    move-result-object v3

    .line 419
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
    if-eqz v1, :cond_6

    .line 423
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 427
    :cond_1
    :try_start_0
    invoke-static {p0}, Lorg/h2/fulltext/FullTextLucene;->getIndexAccess(Ljava/sql/Connection;)Lorg/h2/fulltext/FullTextLucene$IndexAccess;

    move-result-object v4

    .line 429
    iget-object v5, v4, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->searcher:Lorg/apache/lucene/search/IndexSearcher;

    .line 432
    iget-object v4, v4, Lorg/h2/fulltext/FullTextLucene$IndexAccess;->writer:Lorg/apache/lucene/index/IndexWriter;

    invoke-virtual {v4}, Lorg/apache/lucene/index/IndexWriter;->getAnalyzer()Lorg/apache/lucene/analysis/Analyzer;

    move-result-object v4

    .line 433
    new-instance v6, Lorg/apache/lucene/queryParser/QueryParser;

    sget-object v7, Lorg/apache/lucene/util/Version;->LUCENE_30:Lorg/apache/lucene/util/Version;

    const-string v8, "_DATA"

    invoke-direct {v6, v7, v8, v4}, Lorg/apache/lucene/queryParser/QueryParser;-><init>(Lorg/apache/lucene/util/Version;Ljava/lang/String;Lorg/apache/lucene/analysis/Analyzer;)V

    .line 435
    invoke-virtual {v6, v1}, Lorg/apache/lucene/queryParser/QueryParser;->parse(Ljava/lang/String;)Lorg/apache/lucene/search/Query;

    move-result-object v1

    if-nez p2, :cond_2

    const/16 v4, 0x64

    goto :goto_0

    :cond_2
    move/from16 v4, p2

    :goto_0
    add-int v4, v4, p3

    .line 441
    invoke-virtual {v5, v1, v4}, Lorg/apache/lucene/search/IndexSearcher;->search(Lorg/apache/lucene/search/Query;I)Lorg/apache/lucene/search/TopDocs;

    move-result-object v1

    if-nez p2, :cond_3

    .line 443
    iget v2, v1, Lorg/apache/lucene/search/TopDocs;->totalHits:I

    goto :goto_1

    :cond_3
    move/from16 v2, p2

    .line 445
    :goto_1
    iget-object v4, v1, Lorg/apache/lucene/search/TopDocs;->scoreDocs:[Lorg/apache/lucene/search/ScoreDoc;

    array-length v4, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_5

    add-int v8, v7, p3

    .line 447
    iget v9, v1, Lorg/apache/lucene/search/TopDocs;->totalHits:I

    if-ge v8, v9, :cond_5

    if-ge v8, v4, :cond_5

    .line 448
    iget-object v9, v1, Lorg/apache/lucene/search/TopDocs;->scoreDocs:[Lorg/apache/lucene/search/ScoreDoc;

    aget-object v8, v9, v8

    .line 449
    iget v9, v8, Lorg/apache/lucene/search/ScoreDoc;->doc:I

    invoke-virtual {v5, v9}, Lorg/apache/lucene/search/IndexSearcher;->doc(I)Lorg/apache/lucene/document/Document;

    move-result-object v9

    .line 450
    iget v8, v8, Lorg/apache/lucene/search/ScoreDoc;->score:F

    const-string v10, "_QUERY"

    .line 451
    invoke-virtual {v9, v10}, Lorg/apache/lucene/document/Document;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    if-eqz p4, :cond_4

    const-string v12, " WHERE "

    .line 453
    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    .line 454
    move-object v13, v0

    check-cast v13, Lorg/h2/jdbc/JdbcConnection;

    .line 455
    invoke-virtual {v13}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v13

    check-cast v13, Lorg/h2/engine/Session;

    .line 456
    new-instance v10, Lorg/h2/command/Parser;

    invoke-direct {v10, v13}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 457
    invoke-virtual {v9, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 458
    invoke-virtual {v10, v13}, Lorg/h2/command/Parser;->parseExpression(Ljava/lang/String;)Lorg/h2/expression/Expression;

    move-result-object v10

    check-cast v10, Lorg/h2/expression/ExpressionColumn;

    .line 459
    invoke-virtual {v10}, Lorg/h2/expression/ExpressionColumn;->getOriginalTableAliasName()Ljava/lang/String;

    move-result-object v13

    .line 460
    invoke-virtual {v10}, Lorg/h2/expression/ExpressionColumn;->getColumnName()Ljava/lang/String;

    move-result-object v10

    const-string v14, " WHERE "

    .line 461
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v12, v14

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 462
    invoke-static {p0, v9}, Lorg/h2/fulltext/FullTextLucene;->parseKey(Ljava/sql/Connection;Ljava/lang/String;)[[Ljava/lang/Object;

    move-result-object v9

    const/4 v12, 0x5

    .line 463
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v13, v12, v6

    aput-object v10, v12, v11

    aget-object v10, v9, v6

    const/4 v13, 0x2

    aput-object v10, v12, v13

    const/4 v10, 0x3

    aget-object v9, v9, v11

    aput-object v9, v12, v10

    const/4 v9, 0x4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v9

    invoke-virtual {v3, v12}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 v10, 0x2

    .line 470
    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v6

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-virtual {v3, v10}, Lorg/h2/tools/SimpleResultSet;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_5
    return-object v3

    :catch_0
    move-exception v0

    .line 474
    invoke-static {v0}, Lorg/h2/fulltext/FullTextLucene;->convertException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_6
    :goto_4
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

    .line 241
    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/fulltext/FullTextLucene;->search(Ljava/sql/Connection;Ljava/lang/String;IIZ)Ljava/sql/ResultSet;

    move-result-object p0

    return-object p0
.end method
