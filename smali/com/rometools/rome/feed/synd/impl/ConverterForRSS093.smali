.class public Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;
.super Lcom/rometools/rome/feed/synd/impl/ConverterForRSS092;
.source "ConverterForRSS093.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.93"

    .line 27
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS092;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS092;->createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object v0

    .line 51
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Item;->setPubDate(Ljava/util/Date;)V

    return-object v0
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 1

    .line 37
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS092;->createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object p2

    .line 39
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getPubDate()Ljava/util/Date;

    move-result-object p1

    .line 40
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 42
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->setPublishedDate(Ljava/util/Date;)V

    :cond_0
    return-object p2
.end method
