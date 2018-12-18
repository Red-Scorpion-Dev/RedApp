.class public Lcom/rometools/rome/io/WireFeedOutput;
.super Ljava/lang/Object;
.source "WireFeedOutput.java"


# static fields
.field private static clMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Lcom/rometools/rome/io/impl/FeedGenerators;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/rometools/rome/io/WireFeedOutput;->clMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFeedGenerators()Lcom/rometools/rome/io/impl/FeedGenerators;
    .locals 4

    .line 48
    const-class v0, Lcom/rometools/rome/io/WireFeedOutput;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;->INSTANCE:Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;

    invoke-virtual {v1}, Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/rometools/rome/io/WireFeedOutput;->clMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/io/impl/FeedGenerators;

    if-nez v2, :cond_0

    .line 52
    new-instance v2, Lcom/rometools/rome/io/impl/FeedGenerators;

    invoke-direct {v2}, Lcom/rometools/rome/io/impl/FeedGenerators;-><init>()V

    .line 53
    sget-object v3, Lcom/rometools/rome/io/WireFeedOutput;->clMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public outputJDom(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 293
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getFeedType()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {}, Lcom/rometools/rome/io/WireFeedOutput;->getFeedGenerators()Lcom/rometools/rome/io/impl/FeedGenerators;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/rometools/rome/io/impl/FeedGenerators;->getGenerator(Ljava/lang/String;)Lcom/rometools/rome/io/WireFeedGenerator;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    invoke-interface {v1}, Lcom/rometools/rome/io/WireFeedGenerator;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v1, p1}, Lcom/rometools/rome/io/WireFeedGenerator;->generate(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;

    move-result-object p1

    return-object p1

    .line 300
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WireFeedOutput type["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] and WireFeed type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] don\'t match"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid feed type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
