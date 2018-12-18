.class public Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;
.super Ljava/lang/Object;
.source "ConverterForRSS090.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/Converter;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.9"

    .line 43
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setModules(Ljava/util/List;)V

    .line 60
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setForeignMarkup(Ljava/util/List;)V

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getStyleSheet()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setStyleSheet(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEncoding(Ljava/lang/String;)V

    .line 69
    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 71
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setTitle(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLink(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setDescription(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getImage()Lcom/rometools/rome/feed/rss/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSyndImage(Lcom/rometools/rome/feed/rss/Image;)Lcom/rometools/rome/feed/synd/SyndImage;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/rometools/rome/feed/synd/SyndFeed;->setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getItems()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->isPreservingWireFeed()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSyndEntries(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEntries(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected createRSSImage(Lcom/rometools/rome/feed/synd/SyndImage;)Lcom/rometools/rome/feed/rss/Image;
    .locals 2

    .line 179
    new-instance v0, Lcom/rometools/rome/feed/rss/Image;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Image;-><init>()V

    .line 180
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndImage;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setTitle(Ljava/lang/String;)V

    .line 181
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setUrl(Ljava/lang/String;)V

    .line 182
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndImage;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setLink(Ljava/lang/String;)V

    .line 183
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndImage;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setHeight(Ljava/lang/Integer;)V

    .line 184
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndImage;->getWidth()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Image;->setWidth(Ljava/lang/Integer;)V

    return-object v0
.end method

.method protected createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;
    .locals 3

    .line 198
    new-instance v0, Lcom/rometools/rome/feed/rss/Item;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Item;-><init>()V

    .line 200
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setModules(Ljava/util/List;)V

    .line 202
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setTitle(Ljava/lang/String;)V

    .line 204
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setLink(Ljava/lang/String;)V

    .line 206
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    .line 207
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 208
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setForeignMarkup(Ljava/util/List;)V

    .line 211
    :cond_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getSource()Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSource(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/rss/Source;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setSource(Lcom/rometools/rome/feed/rss/Source;)V

    .line 213
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUri()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Item;->setUri(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method protected createRSSItems(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndEntry;

    .line 191
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createRealFeed(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    return-object p1
.end method

.method protected createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 2

    .line 144
    new-instance v0, Lcom/rometools/rome/feed/rss/Channel;

    invoke-direct {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setModules(Ljava/util/List;)V

    .line 146
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getStyleSheet()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setStyleSheet(Ljava/lang/String;)V

    .line 147
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setEncoding(Ljava/lang/String;)V

    .line 149
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setTitle(Ljava/lang/String;)V

    .line 150
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLinks()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 155
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/synd/SyndLink;

    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setLink(Ljava/lang/String;)V

    .line 158
    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setDescription(Ljava/lang/String;)V

    .line 160
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getImage()Lcom/rometools/rome/feed/synd/SyndImage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRSSImage(Lcom/rometools/rome/feed/synd/SyndImage;)Lcom/rometools/rome/feed/rss/Image;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setImage(Lcom/rometools/rome/feed/rss/Image;)V

    .line 165
    :cond_2
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 167
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createRSSItems(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setItems(Ljava/util/List;)V

    .line 170
    :cond_3
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    .line 172
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setForeignMarkup(Ljava/util/List;)V

    :cond_4
    return-object v0
.end method

.method protected createSource(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/rss/Source;
    .locals 2

    if-eqz p1, :cond_0

    .line 224
    new-instance v0, Lcom/rometools/rome/feed/rss/Source;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Source;-><init>()V

    .line 225
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Source;->setUrl(Ljava/lang/String;)V

    .line 226
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Source;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected createSource(Lcom/rometools/rome/feed/rss/Source;)Lcom/rometools/rome/feed/synd/SyndFeed;
    .locals 2

    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>()V

    .line 131
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Source;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLink(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Source;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setUri(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Source;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected createSyndEntries(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/rss/Item;

    .line 99
    invoke-virtual {p0, v1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 2

    .line 106
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndEntryImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;-><init>()V

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setWireEntry(Ljava/lang/Object;)V

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getModules()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setModules(Ljava/util/List;)V

    .line 114
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getForeignMarkup()Ljava/util/List;

    move-result-object p2

    .line 115
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setForeignMarkup(Ljava/util/List;)V

    .line 119
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUri(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLink(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setTitle(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getLink()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLink(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getSource()Lcom/rometools/rome/feed/rss/Source;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->createSource(Lcom/rometools/rome/feed/rss/Source;)Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setSource(Lcom/rometools/rome/feed/synd/SyndFeed;)V

    return-object v0
.end method

.method protected createSyndImage(Lcom/rometools/rome/feed/rss/Image;)Lcom/rometools/rome/feed/synd/SyndImage;
    .locals 2

    .line 87
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndImageImpl;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndImage;->setTitle(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndImage;->setUrl(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndImage;->setLink(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndImage;->setWidth(Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Image;->getHeight()Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndImage;->setHeight(Ljava/lang/Integer;)V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS090;->type:Ljava/lang/String;

    return-object v0
.end method
