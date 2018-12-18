.class Lorg/briarproject/briar/feed/FeedManagerImpl;
.super Ljava/lang/Object;
.source "FeedManagerImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/event/EventListener;
.implements Lorg/briarproject/bramble/api/sync/Client;
.implements Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;
.implements Lorg/briarproject/briar/api/feed/FeedManager;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0xea60

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field private final blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

.field private final clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

.field private final clock:Lorg/briarproject/bramble/api/system/Clock;

.field private final contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

.field private final db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

.field private final feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

.field private final fetcherStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final ioExecutor:Ljava/util/concurrent/Executor;

.field private final noDnsLookups:Lokhttp3/Dns;

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final torSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lorg/briarproject/briar/feed/FeedManagerImpl;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/briar/feed/FeedFactory;Ljavax/net/SocketFactory;Lorg/briarproject/bramble/api/system/Clock;Lokhttp3/Dns;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation runtime Lorg/briarproject/bramble/api/system/Scheduler;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetcherStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    iput-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    iput-object p2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    .line 109
    iput-object p3, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 110
    iput-object p4, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 111
    iput-object p5, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 112
    iput-object p6, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    .line 113
    iput-object p7, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    .line 114
    iput-object p8, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

    .line 115
    iput-object p9, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->torSocketFactory:Ljavax/net/SocketFactory;

    .line 116
    iput-object p10, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    .line 117
    iput-object p11, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->noDnsLookups:Lokhttp3/Dns;

    return-void
.end method

.method private fetchFeed(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/briar/api/feed/Feed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetchSyndFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->postFeedEntries(Lorg/briarproject/briar/api/feed/Feed;Ljava/util/List;)J

    move-result-wide v1

    .line 350
    iget-object v3, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

    invoke-interface {v3, p1, v0, v1, v2}, Lorg/briarproject/briar/feed/FeedFactory;->createFeed(Lorg/briarproject/briar/api/feed/Feed;Lcom/rometools/rome/feed/synd/SyndFeed;J)Lorg/briarproject/briar/api/feed/Feed;

    move-result-object p1

    return-object p1
.end method

.method private fetchSyndFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/SyndFeed;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-direct {p0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeedInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 315
    invoke-direct {p0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getSyndFeed(Ljava/io/InputStream;)Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object v0

    .line 316
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 318
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_6

    .line 323
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitle()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 324
    sget-object v2, Lorg/briarproject/briar/util/HtmlUtils;->STRIP_ALL:Lorg/jsoup/safety/Whitelist;

    invoke-static {p1, v2}, Lorg/briarproject/briar/util/HtmlUtils;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_1
    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setTitle(Ljava/lang/String;)V

    .line 329
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, v1

    goto :goto_1

    .line 330
    :cond_2
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescription()Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    .line 331
    sget-object v2, Lorg/briarproject/briar/util/HtmlUtils;->STRIP_ALL:Lorg/jsoup/safety/Whitelist;

    invoke-static {p1, v2}, Lorg/briarproject/briar/util/HtmlUtils;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object p1

    .line 332
    :cond_3
    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setDescription(Ljava/lang/String;)V

    .line 336
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->getAuthor()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_5

    .line 337
    sget-object p1, Lorg/briarproject/briar/util/HtmlUtils;->STRIP_ALL:Lorg/jsoup/safety/Whitelist;

    invoke-static {v1, p1}, Lorg/briarproject/briar/util/HtmlUtils;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object v1

    .line 338
    :cond_5
    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setAuthor(Ljava/lang/String;)V

    return-object v0

    .line 319
    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Feed has no entries"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEntryComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation

    .line 478
    sget-object v0, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;->INSTANCE:Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$NImxLjfR4pjeUl6TmJ2_cVyjjWI;

    return-object v0
.end method

.method private getFeedInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->torSocketFactory:Ljavax/net/SocketFactory;

    .line 356
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->socketFactory(Ljavax/net/SocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->noDnsLookups:Lokhttp3/Dns;

    .line 357
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0xea60

    .line 358
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 362
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 363
    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 367
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 368
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    .line 370
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Empty response body"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getFeeds(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            ")",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getLocalGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    .line 234
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 235
    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Lorg/briarproject/bramble/api/client/ClientHelper;->getGroupMetadataAsDictionary(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p1

    const-string v1, "feeds"

    .line 236
    invoke-virtual {p1, v1}, Lorg/briarproject/bramble/api/data/BdfDictionary;->getList(Ljava/lang/String;)Lorg/briarproject/bramble/api/data/BdfList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/data/BdfList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 237
    instance-of v2, v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

    check-cast v1, Lorg/briarproject/bramble/api/data/BdfDictionary;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/feed/FeedFactory;->createFeed(Lorg/briarproject/bramble/api/data/BdfDictionary;)Lorg/briarproject/briar/api/feed/Feed;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    :cond_0
    new-instance p1, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p1
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 242
    new-instance v0, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {v0, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getLocalGroup()Lorg/briarproject/bramble/api/sync/Group;
    .locals 3

    .line 494
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->contactGroupFactory:Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    sget-object v1, Lorg/briarproject/briar/feed/FeedManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/briarproject/bramble/api/client/ContactGroupFactory;->createLocalGroup(Lorg/briarproject/bramble/api/sync/ClientId;I)Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    return-object v0
.end method

.method private getPostText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 473
    sget-object v0, Lorg/briarproject/briar/util/HtmlUtils;->ARTICLE:Lorg/jsoup/safety/Whitelist;

    invoke-static {p1, v0}, Lorg/briarproject/briar/util/HtmlUtils;->clean(Ljava/lang/String;Lorg/jsoup/safety/Whitelist;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x7c00

    .line 474
    invoke-static {p1, v0}, Lorg/briarproject/bramble/util/StringUtils;->truncateUtf8(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getSyndFeed(Ljava/io/InputStream;)Lcom/rometools/rome/feed/synd/SyndFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    new-instance v0, Lcom/rometools/rome/io/SyndFeedInput;

    invoke-direct {v0}, Lcom/rometools/rome/io/SyndFeedInput;-><init>()V

    .line 377
    :try_start_0
    new-instance v1, Lcom/rometools/rome/io/XmlReader;

    invoke-direct {v1, p1}, Lcom/rometools/rome/io/XmlReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, v1}, Lcom/rometools/rome/io/SyndFeedInput;->build(Ljava/io/Reader;)Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/rometools/rome/io/FeedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getEntryComparator$1(Lcom/rometools/rome/feed/synd/SyndEntry;Lcom/rometools/rome/feed/synd/SyndEntry;)I
    .locals 4

    .line 479
    invoke-interface {p0}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object p0

    goto :goto_0

    .line 480
    :cond_0
    invoke-interface {p0}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object p0

    .line 481
    :goto_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object p1

    goto :goto_1

    .line 482
    :cond_1
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    if-nez p0, :cond_2

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 v1, -0x1

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x1

    if-nez p1, :cond_4

    return v2

    .line 487
    :cond_4
    invoke-virtual {p0, p1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_5

    return v2

    .line 488
    :cond_5
    invoke-virtual {p0, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public static synthetic lambda$startFeedExecutor$0(Lorg/briarproject/briar/feed/FeedManagerImpl;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->ioExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lorg/briarproject/briar/feed/-$$Lambda$KhG605fuhR1dQ6v08d47EtmP-0I;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/feed/-$$Lambda$KhG605fuhR1dQ6v08d47EtmP-0I;-><init>(Lorg/briarproject/briar/feed/FeedManagerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private postEntry(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/feed/Feed;Lcom/rometools/rome/feed/synd/SyndEntry;)V
    .locals 9

    .line 414
    sget-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Adding new entry..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<h1>"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</h1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_0
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/feed/synd/SyndContent;

    .line 423
    invoke-interface {v2}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 424
    invoke-interface {v2}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 426
    :cond_2
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 427
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 428
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 429
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, "<p>"

    .line 431
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "-- "

    .line 433
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_4
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v1, " ("

    .line 436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 438
    :cond_5
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, " ("

    .line 439
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_1
    const-string v1, "</p>"

    .line 442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 444
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "<a href=\""

    .line 445
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</a>"

    .line 446
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    :cond_7
    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    .line 451
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clock:Lorg/briarproject/bramble/api/system/Clock;

    invoke-interface {v1}, Lorg/briarproject/bramble/api/system/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 452
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_8

    .line 453
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v4

    :cond_8
    if-nez v4, :cond_9

    :goto_2
    move-wide v4, v1

    goto :goto_3

    :cond_9
    const-wide/16 v5, 0x0

    .line 455
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    goto :goto_2

    .line 456
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getPostText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 459
    :try_start_0
    invoke-virtual {p2}, Lorg/briarproject/briar/api/feed/Feed;->getLocalAuthor()Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v7

    .line 460
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogPostFactory:Lorg/briarproject/briar/api/blog/BlogPostFactory;

    const/4 v6, 0x0

    .line 461
    invoke-interface/range {v2 .. v8}, Lorg/briarproject/briar/api/blog/BlogPostFactory;->createBlogPost(Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/identity/LocalAuthor;Ljava/lang/String;)Lorg/briarproject/briar/api/blog/BlogPost;

    move-result-object p2

    .line 462
    iget-object p3, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {p3, p1, p2}, Lorg/briarproject/briar/api/blog/BlogManager;->addLocalPost(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/BlogPost;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 468
    sget-object p2, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 464
    sget-object p2, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, p3, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private startFeedExecutor()V
    .locals 9

    .line 131
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetcherStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    sget-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Tor started, scheduling RSS feed fetcher"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 133
    new-instance v3, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$RKHwyJJ1WEvPA1e0vXngqbzfVUY;

    invoke-direct {v3, p0}, Lorg/briarproject/briar/feed/-$$Lambda$FeedManagerImpl$RKHwyJJ1WEvPA1e0vXngqbzfVUY;-><init>(Lorg/briarproject/briar/feed/FeedManagerImpl;)V

    .line 134
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x1e

    sget-object v8, Lorg/briarproject/briar/api/feed/FeedConstants;->FETCH_UNIT:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private storeFeeds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 268
    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    return-void
.end method

.method private storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/Transaction;",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/briarproject/bramble/api/data/BdfList;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/data/BdfList;-><init>()V

    .line 251
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/briarproject/briar/api/feed/Feed;

    .line 252
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

    invoke-interface {v2, v1}, Lorg/briarproject/briar/feed/FeedFactory;->feedToBdfDictionary(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/data/BdfList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 254
    new-array p2, p2, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    new-instance v2, Lorg/briarproject/bramble/api/data/BdfEntry;

    const-string v3, "feeds"

    invoke-direct {v2, v3, v0}, Lorg/briarproject/bramble/api/data/BdfEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v2, p2, v1

    invoke-static {p2}, Lorg/briarproject/bramble/api/data/BdfDictionary;->of([Ljava/util/Map$Entry;)Lorg/briarproject/bramble/api/data/BdfDictionary;

    move-result-object p2

    if-nez p1, :cond_1

    .line 257
    :try_start_0
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getLocalGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->clientHelper:Lorg/briarproject/bramble/api/client/ClientHelper;

    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getLocalGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v1

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Lorg/briarproject/bramble/api/client/ClientHelper;->mergeGroupMetadata(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/data/BdfDictionary;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    .line 263
    :goto_2
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public addFeed(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetchSyndFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->feedFactory:Lorg/briarproject/briar/feed/FeedFactory;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/briar/feed/FeedFactory;->createFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lorg/briarproject/briar/api/feed/Feed;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 162
    :try_start_0
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getBlog()Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/briarproject/briar/api/blog/BlogManager;->addBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    .line 163
    invoke-direct {p0, v0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeeds(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/List;

    move-result-object v2

    .line 164
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    invoke-direct {p0, v0, v2}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    .line 166
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 168
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 172
    invoke-direct {p0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetchFeed(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/briar/api/feed/Feed;

    move-result-object v0

    .line 175
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v1

    .line 177
    :try_start_1
    invoke-direct {p0, v1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeeds(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/List;

    move-result-object v2

    .line 178
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    invoke-direct {p0, v1, v2}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    .line 181
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 184
    throw p1

    :catchall_1
    move-exception p1

    .line 168
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 169
    throw p1
.end method

.method public createLocalState(Lorg/briarproject/bramble/api/db/Transaction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getLocalGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->containsGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->addGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 149
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    return-void
.end method

.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 1

    .line 122
    instance-of v0, p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/plugin/event/TransportEnabledEvent;->getTransportId()Lorg/briarproject/bramble/api/plugin/TransportId;

    move-result-object p1

    .line 124
    sget-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {p1, v0}, Lorg/briarproject/bramble/api/plugin/TransportId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->startFeedExecutor()V

    :cond_0
    return-void
.end method

.method fetchFeeds()V
    .locals 6

    .line 281
    sget-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Updating RSS feeds..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 286
    :try_start_0
    invoke-virtual {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeeds()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_2

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/briarproject/briar/api/feed/Feed;

    .line 296
    :try_start_1
    invoke-direct {p0, v2}, Lorg/briarproject/briar/feed/FeedManagerImpl;->fetchFeed(Lorg/briarproject/briar/api/feed/Feed;)Lorg/briarproject/briar/api/feed/Feed;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 298
    sget-object v4, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v4, v5, v3}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 299
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 305
    :cond_0
    :try_start_2
    invoke-direct {p0, v1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 307
    sget-object v1, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    .line 309
    :goto_1
    sget-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Done updating RSS feeds"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    .line 288
    sget-object v1, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getFeeds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/feed/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 222
    :try_start_0
    invoke-direct {p0, v0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeeds(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/List;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v2, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 226
    throw v1
.end method

.method postFeedEntries(Lorg/briarproject/briar/api/feed/Feed;Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/feed/Feed;",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getLastEntryTime()J

    move-result-wide v0

    .line 387
    iget-object v2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v2

    .line 389
    :try_start_0
    invoke-direct {p0}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getEntryComparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 390
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/synd/SyndEntry;

    .line 392
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 393
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1

    .line 394
    :cond_1
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 395
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 401
    :goto_1
    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getLastEntryTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 402
    invoke-direct {p0, v2, p1, v3}, Lorg/briarproject/briar/feed/FeedManagerImpl;->postEntry(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/feed/Feed;Lcom/rometools/rome/feed/synd/SyndEntry;)V

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    move-wide v0, v4

    goto :goto_0

    .line 398
    :cond_2
    sget-object v3, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v4, "Entry has no date, ignored."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p2, v2}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 409
    throw p1
.end method

.method public removeFeed(Lorg/briarproject/briar/api/feed/Feed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 189
    sget-object v0, Lorg/briarproject/briar/feed/FeedManagerImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Removing RSS feed..."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->startTransaction(Z)Lorg/briarproject/bramble/api/db/Transaction;

    move-result-object v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/feed/Feed;->getBlog()Lorg/briarproject/briar/api/blog/Blog;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lorg/briarproject/briar/api/blog/BlogManager;->removeBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    .line 194
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->commitTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    iget-object p1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/briarproject/briar/feed/FeedManagerImpl;->db:Lorg/briarproject/bramble/api/db/DatabaseComponent;

    invoke-interface {v1, v0}, Lorg/briarproject/bramble/api/db/DatabaseComponent;->endTransaction(Lorg/briarproject/bramble/api/db/Transaction;)V

    .line 197
    throw p1
.end method

.method public removingBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 202
    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->isRssFeed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 206
    invoke-direct {p0, p1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->getFeeds(Lorg/briarproject/bramble/api/db/Transaction;)Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/briarproject/briar/api/feed/Feed;

    .line 208
    invoke-virtual {v3}, Lorg/briarproject/briar/api/feed/Feed;->getBlogId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v4

    invoke-virtual {p2}, Lorg/briarproject/briar/api/blog/Blog;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 210
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v0, :cond_3

    .line 214
    invoke-direct {p0, p1, v1}, Lorg/briarproject/briar/feed/FeedManagerImpl;->storeFeeds(Lorg/briarproject/bramble/api/db/Transaction;Ljava/util/List;)V

    :cond_3
    return-void
.end method
