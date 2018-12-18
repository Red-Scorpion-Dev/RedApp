.class Lorg/briarproject/briar/feed/FeedFactoryImpl;
.super Ljava/lang/Object;
.source "FeedFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/briar/feed/FeedFactory;


# instance fields
.field private final authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

.field private final blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/briar/api/blog/BlogFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 46
    iput-object p2, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    .line 47
    iput-object p3, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    .line 48
    iput-object p4, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 49
    iput-object p5, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    return-void
.end method


# virtual methods
.method public createFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lorg/briarproject/briar/api/feed/Feed;
    .locals 9

    .line 54
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitle()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "RSS"

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    .line 56
    invoke-static {p2, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 58
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->cryptoComponent:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->generateSignatureKeyPair()Lorg/briarproject/bramble/api/crypto/KeyPair;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    .line 60
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPublic()Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Lorg/briarproject/bramble/api/crypto/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 61
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/crypto/KeyPair;->getPrivate()Lorg/briarproject/bramble/api/crypto/PrivateKey;

    move-result-object v0

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/PrivateKey;->getEncoded()[B

    move-result-object v0

    .line 59
    invoke-interface {v1, p2, v2, v0}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createLocalAuthor(Ljava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v6

    .line 62
    iget-object p2, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {p2, v6}, Lorg/briarproject/briar/api/blog/BlogFactory;->createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v5

    .line 63
    iget-object p2, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {p2}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v7

    .line 65
    new-instance p2, Lorg/briarproject/briar/api/feed/Feed;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/briarproject/briar/api/feed/Feed;-><init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;J)V

    return-object p2
.end method

.method public createFeed(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/feed/Feed;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "feedURL"

    .line 78
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "feedAuthor"

    .line 80
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v2

    const-string v3, "feedPrivateKey"

    .line 81
    invoke-virtual {v1, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getRaw(Ljava/lang/String;)[B

    move-result-object v3

    .line 82
    iget-object v5, v0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v5, v2}, Lorg/briarproject/bramble/api/client/ClientHelper;->parseAndValidateAuthor(Lorg/briarproject/bramble/api/data/BdfList;)Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    .line 83
    iget-object v5, v0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->authorFactory:Lorg/briarproject/bramble/api/identity/AuthorFactory;

    .line 84
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getFormatVersion()I

    move-result v6

    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getName()Ljava/lang/String;

    move-result-object v7

    .line 85
    invoke-virtual {v2}, Lorg/briarproject/bramble/api/identity/Author;->getPublicKey()[B

    move-result-object v2

    .line 83
    invoke-interface {v5, v6, v7, v2, v3}, Lorg/briarproject/bramble/api/identity/AuthorFactory;->createLocalAuthor(ILjava/lang/String;[B[B)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v6

    .line 86
    iget-object v2, v0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->blogFactory:Lorg/briarproject/briar/api/blog/BlogFactory;

    invoke-interface {v2, v6}, Lorg/briarproject/briar/api/blog/BlogFactory;->createFeedBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v5

    const-string v2, "feedDesc"

    .line 88
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "feedRssAuthor"

    .line 89
    invoke-virtual {v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getOptionalString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "feedAdded"

    const-wide/16 v9, 0x0

    .line 90
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v2, "feedUpdated"

    .line 91
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    const-string v2, "feedLastEntryTime"

    .line 92
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 94
    new-instance v15, Lorg/briarproject/briar/api/feed/Feed;

    move-object v3, v15

    move-wide v9, v11

    move-wide v11, v13

    move-wide v13, v1

    invoke-direct/range {v3 .. v14}, Lorg/briarproject/briar/api/feed/Feed;-><init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v15
.end method

.method public createFeed(Lorg/briarproject/briar/api/feed/Feed;Lcom/rometools/rome/feed/synd/SyndFeed;J)Lorg/briarproject/briar/api/feed/Feed;
    .locals 14

    move-object v0, p0

    .line 70
    iget-object v1, v0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v10

    .line 71
    new-instance v1, Lorg/briarproject/briar/api/feed/Feed;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getBlog()Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v4

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v5

    .line 72
    invoke-interface/range {p2 .. p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getAuthor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide v8

    move-object v2, v1

    move-wide/from16 v12, p3

    invoke-direct/range {v2 .. v13}, Lorg/briarproject/briar/api/feed/Feed;-><init>(Ljava/lang/String;Lorg/briarproject/briar/api/blog/Blog;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v1
.end method

.method public feedToBdfDictionary(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/bramble/api/data/BdfDictionary;
    .locals 6

    .line 100
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedFactoryImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/client/ClientHelper;->toList(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object v1

    const/4 v2, 0x6

    .line 102
    new-array v2, v2, [Ljava/util/Map$Entry;

    new-instance v3, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "feedURL"

    .line 103
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v4, "feedAuthor"

    invoke-direct {v3, v4, v1}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    aput-object v3, v2, v1

    new-instance v1, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "feedPrivateKey"

    .line 105
    invoke-virtual {v0}, Lorg/briarproject/bramble/api/identity/LocalAuthor;->getPrivateKey()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x2

    aput-object v1, v2, v0

    new-instance v0, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v1, "feedAdded"

    .line 106
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getAdded()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aput-object v0, v2, v1

    new-instance v0, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v1, "feedUpdated"

    .line 107
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUpdated()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x4

    aput-object v0, v2, v1

    new-instance v0, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v1, "feedLastEntryTime"

    .line 108
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getLastEntryTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 102
    invoke-static {v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "feedDesc"

    .line 111
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getRssAuthor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "feedRssAuthor"

    .line 113
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getRssAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
