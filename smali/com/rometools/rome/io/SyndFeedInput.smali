.class public Lcom/rometools/rome/io/SyndFeedInput;
.super Ljava/lang/Object;
.source "SyndFeedInput.java"


# instance fields
.field private final feedInput:Lcom/rometools/rome/io/WireFeedInput;

.field private preserveWireFeed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/rometools/rome/io/SyndFeedInput;-><init>(ZLjava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Locale;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/rometools/rome/io/SyndFeedInput;->preserveWireFeed:Z

    .line 59
    new-instance v0, Lcom/rometools/rome/io/WireFeedInput;

    invoke-direct {v0, p1, p2}, Lcom/rometools/rome/io/WireFeedInput;-><init>(ZLjava/util/Locale;)V

    iput-object v0, p0, Lcom/rometools/rome/io/SyndFeedInput;->feedInput:Lcom/rometools/rome/io/WireFeedInput;

    return-void
.end method


# virtual methods
.method public build(Ljava/io/Reader;)Lcom/rometools/rome/feed/synd/SyndFeed;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 150
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;

    iget-object v1, p0, Lcom/rometools/rome/io/SyndFeedInput;->feedInput:Lcom/rometools/rome/io/WireFeedInput;

    invoke-virtual {v1, p1}, Lcom/rometools/rome/io/WireFeedInput;->build(Ljava/io/Reader;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    iget-boolean v1, p0, Lcom/rometools/rome/io/SyndFeedInput;->preserveWireFeed:Z

    invoke-direct {v0, p1, v1}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>(Lcom/rometools/rome/feed/WireFeed;Z)V

    return-object v0
.end method
