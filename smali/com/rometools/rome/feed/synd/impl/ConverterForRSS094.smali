.class public Lcom/rometools/rome/feed/synd/impl/ConverterForRSS094;
.super Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;
.source "ConverterForRSS094.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.94"

    .line 41
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS094;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V
    .locals 1

    .line 51
    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 53
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;->copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V

    .line 55
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getCategories()Ljava/util/List;

    move-result-object p1

    .line 56
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS094;->createSyndCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 65
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getCategories()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setCategories(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;
    .locals 5

    .line 134
    invoke-super {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;->createRSSItem(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object v0

    .line 136
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 139
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setAuthor(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 143
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUri()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_1

    .line 146
    new-instance v1, Lcom/rometools/rome/feed/rss/Guid;

    invoke-direct {v1}, Lcom/rometools/rome/feed/rss/Guid;-><init>()V

    .line 147
    invoke-virtual {v1, v3}, Lcom/rometools/rome/feed/rss/Guid;->setPermaLink(Z)V

    .line 148
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/rss/Guid;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 150
    new-instance v1, Lcom/rometools/rome/feed/rss/Guid;

    invoke-direct {v1}, Lcom/rometools/rome/feed/rss/Guid;-><init>()V

    const/4 v2, 0x1

    .line 151
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/rss/Guid;->setPermaLink(Z)V

    .line 152
    invoke-virtual {v1, v4}, Lcom/rometools/rome/feed/rss/Guid;->setValue(Ljava/lang/String;)V

    .line 155
    :cond_2
    :goto_0
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Item;->setGuid(Lcom/rometools/rome/feed/rss/Guid;)V

    const-string v1, "comments"

    .line 157
    invoke-interface {p1, v1}, Lcom/rometools/rome/feed/synd/SyndEntry;->findRelatedLink(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/SyndLink;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 158
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    :cond_3
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getHref()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Item;->setComments(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method protected createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 1

    .line 123
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;->createRealFeed(Ljava/lang/String;Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/rss/Channel;

    .line 124
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->getCategories()Ljava/util/List;

    move-result-object p2

    .line 125
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS094;->createRSSCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Channel;->setCategories(Ljava/util/List;)V

    :cond_0
    return-object p1
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 3

    .line 76
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForRSS093;->createSyndEntry(Lcom/rometools/rome/feed/rss/Item;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object p2

    .line 79
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://purl.org/dc/elements/1.1/"

    .line 81
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/module/DCModule;

    invoke-interface {v1}, Lcom/rometools/rome/feed/module/DCModule;->getCreators()Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 88
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 91
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getGuid()Lcom/rometools/rome/feed/rss/Guid;

    move-result-object v0

    .line 99
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getLink()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/rometools/rome/feed/rss/Guid;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {p2, v2}, Lcom/rometools/rome/feed/synd/SyndEntry;->setUri(Ljava/lang/String;)V

    if-nez v1, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/rometools/rome/feed/rss/Guid;->isPermaLink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {p2, v2}, Lcom/rometools/rome/feed/synd/SyndEntry;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndEntry;->setUri(Ljava/lang/String;)V

    .line 110
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getComments()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;-><init>()V

    const-string v1, "comments"

    .line 112
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->setRel(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getComments()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->setHref(Ljava/lang/String;)V

    const-string p1, "text/html"

    .line 114
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;->setType(Ljava/lang/String;)V

    :cond_3
    return-object p2
.end method
