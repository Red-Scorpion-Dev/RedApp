.class public Lcom/rometools/rome/feed/synd/impl/ConverterForRSS10;
.super Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;
.source "ConverterForRSS10.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_1.0"

    .line 36
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS10;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V
    .locals 1

    .line 46
    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 48
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V

    .line 50
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setUri(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setUri(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected createItemContent(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/rss/Content;
    .locals 2

    .line 146
    new-instance v0, Lcom/rometools/rome/feed/rss/Content;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Content;-><init>()V

    .line 147
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Content;->setValue(Ljava/lang/String;)V

    .line 148
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Content;->setType(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createItemDescription(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/rss/Description;
    .locals 2

    .line 139
    new-instance v0, Lcom/rometools/rome/feed/rss/Description;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Description;-><init>()V

    .line 140
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Description;->setValue(Ljava/lang/String;)V

    .line 141
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Description;->setType(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;
    .locals 3

    .line 118
    invoke-super {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object v0

    .line 120
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS10;->createItemDescription(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/rss/Description;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setDescription(Lcom/rometools/rome/feed/rss/Description;)V

    .line 125
    :cond_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContents()Ljava/util/List;

    move-result-object v1

    .line 126
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 127
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS10;->createItemContent(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/rss/Content;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setContent(Lcom/rometools/rome/feed/rss/Content;)V

    .line 130
    :cond_1
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 132
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Item;->setUri(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method protected createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 1

    .line 97
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 99
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Channel;->setUri(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLink()Ljava/lang/String;

    move-result-object p2

    .line 105
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Channel;->setUri(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 3

    .line 67
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object p2

    .line 69
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getDescription()Lcom/rometools/rome/feed/rss/Description;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/rometools/rome/feed/rss/Description;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/rometools/rome/feed/rss/Description;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 74
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndEntry;->setDescription(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getContent()Lcom/rometools/rome/feed/rss/Content;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Content;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->setContents(Ljava/util/List;)V

    :cond_1
    return-object p2
.end method
