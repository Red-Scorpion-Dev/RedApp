.class public Lcom/rometools/rome/io/impl/FeedParsers;
.super Lcom/rometools/rome/io/impl/PluginManager;
.source "FeedParsers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rometools/rome/io/impl/PluginManager<",
        "Lcom/rometools/rome/io/WireFeedParser;",
        ">;"
    }
.end annotation


# static fields
.field public static final FEED_PARSERS_KEY:Ljava/lang/String; = "WireFeedParser.classes"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WireFeedParser.classes"

    .line 51
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/PluginManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getKey(Lcom/rometools/rome/io/WireFeedParser;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-interface {p1}, Lcom/rometools/rome/io/WireFeedParser;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 37
    check-cast p1, Lcom/rometools/rome/io/WireFeedParser;

    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/FeedParsers;->getKey(Lcom/rometools/rome/io/WireFeedParser;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParserFor(Lorg/jdom2/Document;)Lcom/rometools/rome/io/WireFeedParser;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/FeedParsers;->getPlugins()Ljava/util/List;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/io/WireFeedParser;

    .line 70
    invoke-interface {v1, p1}, Lcom/rometools/rome/io/WireFeedParser;->isMyType(Lorg/jdom2/Document;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSupportedFeedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/FeedParsers;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
