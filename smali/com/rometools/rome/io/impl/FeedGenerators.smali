.class public Lcom/rometools/rome/io/impl/FeedGenerators;
.super Lcom/rometools/rome/io/impl/PluginManager;
.source "FeedGenerators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rometools/rome/io/impl/PluginManager<",
        "Lcom/rometools/rome/io/WireFeedGenerator;",
        ">;"
    }
.end annotation


# static fields
.field public static final FEED_GENERATORS_KEY:Ljava/lang/String; = "WireFeedGenerator.classes"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WireFeedGenerator.classes"

    .line 42
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/PluginManager;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGenerator(Ljava/lang/String;)Lcom/rometools/rome/io/WireFeedGenerator;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/FeedGenerators;->getPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/io/WireFeedGenerator;

    return-object p1
.end method

.method protected getKey(Lcom/rometools/rome/io/WireFeedGenerator;)Ljava/lang/String;
    .locals 0

    .line 51
    invoke-interface {p1}, Lcom/rometools/rome/io/WireFeedGenerator;->getType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 33
    check-cast p1, Lcom/rometools/rome/io/WireFeedGenerator;

    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/FeedGenerators;->getKey(Lcom/rometools/rome/io/WireFeedGenerator;)Ljava/lang/String;

    move-result-object p1

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
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/FeedGenerators;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
