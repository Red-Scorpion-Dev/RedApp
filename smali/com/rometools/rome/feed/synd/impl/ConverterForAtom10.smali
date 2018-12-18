.class public Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;
.super Ljava/lang/Object;
.source "ConverterForAtom10.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/Converter;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "atom_1.0"

    .line 57
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V
    .locals 3

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/rometools/rome/feed/atom/Feed;

    .line 74
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setModules(Ljava/util/List;)V

    .line 76
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 78
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setForeignMarkup(Ljava/util/List;)V

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEncoding(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getStyleSheet()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setStyleSheet(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getLogo()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndImageImpl;-><init>()V

    .line 87
    invoke-interface {v1, p1}, Lcom/rometools/rome/feed/synd/SyndImage;->setUrl(Ljava/lang/String;)V

    .line 88
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getIcon()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndImageImpl;-><init>()V

    .line 94
    invoke-interface {v1, p1}, Lcom/rometools/rome/feed/synd/SyndImage;->setUrl(Ljava/lang/String;)V

    .line 95
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setIcon(Lcom/rometools/rome/feed/synd/SyndImage;)V

    .line 98
    :cond_2
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setUri(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 102
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 103
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 105
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setTitleEx(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getSubtitle()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 111
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 113
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setDescriptionEx(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 117
    :cond_4
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getAlternateLinks()Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 119
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 120
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLink(Ljava/lang/String;)V

    .line 124
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 127
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    :cond_6
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getOtherLinks()Ljava/util/List;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 132
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_7
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLinks(Ljava/util/List;)V

    .line 137
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 139
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->isPreservingWireFeed()Z

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndEntries(Lcom/rometools/rome/feed/atom/Feed;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEntries(Ljava/util/List;)V

    .line 145
    :cond_8
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getAuthors()Ljava/util/List;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 147
    invoke-static {p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setAuthors(Ljava/util/List;)V

    .line 150
    :cond_9
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getContributors()Ljava/util/List;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 152
    invoke-static {p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setContributors(Ljava/util/List;)V

    .line 155
    :cond_a
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getRights()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 157
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setCopyright(Ljava/lang/String;)V

    .line 160
    :cond_b
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getUpdated()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 162
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setPublishedDate(Ljava/util/Date;)V

    :cond_c
    return-void
.end method

.method protected createAtomContent(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/atom/Content;
    .locals 2

    .line 462
    new-instance v0, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 463
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 464
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createAtomContents(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndContent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Content;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndContent;

    .line 471
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomContent(Lcom/rometools/rome/feed/synd/SyndContent;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createAtomEnclosure(Lcom/rometools/rome/feed/synd/SyndEnclosure;)Lcom/rometools/rome/feed/atom/Link;
    .locals 3

    .line 308
    new-instance v0, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v1, "enclosure"

    .line 309
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 310
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    .line 311
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 312
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rometools/rome/feed/atom/Link;->setLength(J)V

    return-object v0
.end method

.method protected createAtomEntries(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Entry;",
            ">;"
        }
    .end annotation

    .line 454
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 455
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndEntry;

    .line 456
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomEntry(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/atom/Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createAtomEntry(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/atom/Entry;
    .locals 9

    .line 478
    new-instance v0, Lcom/rometools/rome/feed/atom/Entry;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Entry;-><init>()V

    .line 480
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setModules(Ljava/util/List;)V

    .line 482
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setId(Ljava/lang/String;)V

    .line 484
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 487
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 488
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    .line 492
    :cond_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 494
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 495
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 496
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setSummary(Lcom/rometools/rome/feed/atom/Content;)V

    .line 501
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 505
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLinks()Ljava/util/List;

    move-result-object v4

    .line 506
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getEnclosures()Ljava/util/List;

    move-result-object v5

    if-eqz v4, :cond_5

    .line 509
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rometools/rome/feed/synd/SyndLink;

    .line 510
    invoke-virtual {p0, v6}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v7

    .line 514
    invoke-interface {v6}, Lcom/rometools/rome/feed/synd/SyndLink;->getRel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v8, "enclosure"

    .line 515
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    .line 519
    :cond_2
    invoke-virtual {v7}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v8

    .line 520
    invoke-static {v8}, Lcom/rometools/utils/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "alternate"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_1

    .line 523
    :cond_3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_4
    :goto_1
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 529
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 530
    new-instance v4, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v6, "alternate"

    .line 531
    invoke-virtual {v4, v6}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 532
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 533
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v5, :cond_7

    if-nez v3, :cond_7

    .line 539
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/synd/SyndEnclosure;

    .line 541
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomEnclosure(Lcom/rometools/rome/feed/synd/SyndEnclosure;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v4

    .line 542
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 546
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 547
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setAlternateLinks(Ljava/util/List;)V

    .line 550
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 551
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setOtherLinks(Ljava/util/List;)V

    .line 554
    :cond_9
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getCategories()Ljava/util/List;

    move-result-object v1

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_a

    .line 557
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/synd/SyndCategory;

    .line 558
    new-instance v4, Lcom/rometools/rome/feed/atom/Category;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Category;-><init>()V

    .line 559
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndCategory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Category;->setTerm(Ljava/lang/String;)V

    .line 561
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndCategory;->getTaxonomyUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/rometools/rome/feed/atom/Category;->setScheme(Ljava/lang/String;)V

    .line 562
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 566
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 567
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setCategories(Ljava/util/List;)V

    .line 570
    :cond_b
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContents()Ljava/util/List;

    move-result-object v1

    .line 571
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomContents(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setContents(Ljava/util/List;)V

    .line 573
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 574
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthor()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 576
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    goto :goto_4

    :cond_c
    if-eqz v2, :cond_d

    .line 578
    new-instance v1, Lcom/rometools/rome/feed/atom/Person;

    invoke-direct {v1}, Lcom/rometools/rome/feed/atom/Person;-><init>()V

    .line 579
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Person;->setName(Ljava/lang/String;)V

    .line 580
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 581
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    .line 585
    :cond_d
    :goto_4
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContributors()Ljava/util/List;

    move-result-object v1

    .line 586
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 587
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setContributors(Ljava/util/List;)V

    .line 590
    :cond_e
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setPublished(Ljava/util/Date;)V

    .line 595
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 596
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUpdatedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setUpdated(Ljava/util/Date;)V

    goto :goto_5

    .line 598
    :cond_f
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setUpdated(Ljava/util/Date;)V

    .line 601
    :goto_5
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    .line 602
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 603
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setForeignMarkup(Ljava/util/List;)V

    .line 606
    :cond_10
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getSource()Lcom/rometools/rome/feed/synd/SyndFeed;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 608
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->createWireFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    check-cast p1, Lcom/rometools/rome/feed/atom/Feed;

    .line 609
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setSource(Lcom/rometools/rome/feed/atom/Feed;)V

    :cond_11
    return-object v0
.end method

.method public createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;
    .locals 3

    .line 328
    new-instance v0, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    .line 329
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getRel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 330
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    .line 331
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 332
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getHreflang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setHreflang(Ljava/lang/String;)V

    .line 333
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/rometools/rome/feed/atom/Link;->setLength(J)V

    .line 334
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Link;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRealFeed(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 7

    .line 340
    new-instance v0, Lcom/rometools/rome/feed/atom/Feed;

    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;-><init>(Ljava/lang/String;)V

    .line 341
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setModules(Ljava/util/List;)V

    .line 343
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setEncoding(Ljava/lang/String;)V

    .line 344
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getStyleSheet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setStyleSheet(Ljava/lang/String;)V

    .line 346
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setId(Ljava/lang/String;)V

    .line 348
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 350
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 351
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 352
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    .line 356
    :cond_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescriptionEx()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 359
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 360
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setSubtitle(Lcom/rometools/rome/feed/atom/Content;)V

    .line 365
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 366
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 367
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLinks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 369
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/synd/SyndLink;

    .line 370
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v4

    .line 371
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v5

    .line 372
    invoke-static {v5}, Lcom/rometools/utils/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "alternate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 375
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_3
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLink()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 381
    new-instance v3, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v3}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v4, "alternate"

    .line 382
    invoke-virtual {v3, v4}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 383
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLink()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 384
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 387
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAlternateLinks(Ljava/util/List;)V

    .line 389
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 390
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setOtherLinks(Ljava/util/List;)V

    .line 393
    :cond_7
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getCategories()Ljava/util/List;

    move-result-object v1

    .line 394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_8

    .line 396
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/synd/SyndCategory;

    .line 397
    new-instance v4, Lcom/rometools/rome/feed/atom/Category;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Category;-><init>()V

    .line 398
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndCategory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Category;->setTerm(Ljava/lang/String;)V

    .line 400
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndCategory;->getTaxonomyUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/rometools/rome/feed/atom/Category;->setScheme(Ljava/lang/String;)V

    .line 401
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 404
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 405
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setCategories(Ljava/util/List;)V

    .line 408
    :cond_9
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 409
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 410
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAuthors(Ljava/util/List;)V

    .line 413
    :cond_a
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getContributors()Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 415
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setContributors(Ljava/util/List;)V

    .line 418
    :cond_b
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getImage()Lcom/rometools/rome/feed/synd/SyndImage;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 420
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setLogo(Ljava/lang/String;)V

    .line 423
    :cond_c
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getIcon()Lcom/rometools/rome/feed/synd/SyndImage;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 425
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndImage;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setIcon(Ljava/lang/String;)V

    .line 428
    :cond_d
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setRights(Ljava/lang/String;)V

    .line 430
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setUpdated(Ljava/util/Date;)V

    .line 432
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 434
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createAtomEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setEntries(Ljava/util/List;)V

    .line 437
    :cond_e
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 439
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setForeignMarkup(Ljava/util/List;)V

    :cond_f
    return-object v0
.end method

.method protected createSyndContent(Lcom/rometools/rome/feed/atom/Content;)Lcom/rometools/rome/feed/synd/SyndContent;
    .locals 2

    .line 447
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 448
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    return-object v0
.end method

.method public createSyndEnclosure(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndEnclosure;
    .locals 0

    .line 300
    new-instance p1, Lcom/rometools/rome/feed/synd/SyndEnclosureImpl;

    invoke-direct {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosureImpl;-><init>()V

    .line 301
    invoke-virtual {p3}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setUrl(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p3}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setType(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Lcom/rometools/rome/feed/atom/Link;->getLength()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setLength(J)V

    return-object p1
.end method

.method protected createSyndEntries(Lcom/rometools/rome/feed/atom/Feed;Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rometools/rome/feed/atom/Feed;",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Entry;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Entry;

    .line 179
    invoke-virtual {p0, p1, v1, p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndEntry(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 7

    .line 185
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndEntryImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;-><init>()V

    if-eqz p3, :cond_0

    .line 187
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setWireEntry(Ljava/lang/Object;)V

    .line 189
    :cond_0
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getModules()Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setModules(Ljava/util/List;)V

    .line 191
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object p3

    .line 192
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setForeignMarkup(Ljava/util/List;)V

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 198
    invoke-virtual {p0, p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndContent(Lcom/rometools/rome/feed/atom/Content;)Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setTitleEx(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 201
    :cond_2
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getSummary()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 203
    invoke-virtual {p0, p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndContent(Lcom/rometools/rome/feed/atom/Content;)Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setDescription(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 206
    :cond_3
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object p3

    .line 207
    invoke-static {p3}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/feed/atom/Content;

    .line 210
    invoke-virtual {p0, v2}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndContent(Lcom/rometools/rome/feed/atom/Content;)Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_4
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setContents(Ljava/util/List;)V

    .line 215
    :cond_5
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object p3

    .line 216
    invoke-static {p3}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 217
    invoke-static {p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setAuthors(Ljava/util/List;)V

    .line 218
    invoke-virtual {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->getAuthors()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 219
    invoke-interface {p3}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setAuthor(Ljava/lang/String;)V

    .line 222
    :cond_6
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getContributors()Ljava/util/List;

    move-result-object p3

    .line 223
    invoke-static {p3}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 224
    invoke-static {p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setContributors(Ljava/util/List;)V

    .line 227
    :cond_7
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 229
    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setPublishedDate(Ljava/util/Date;)V

    .line 232
    :cond_8
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object p3

    if-eqz p3, :cond_9

    .line 234
    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUpdatedDate(Ljava/util/Date;)V

    .line 237
    :cond_9
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getCategories()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/atom/Category;

    .line 241
    new-instance v4, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    invoke-direct {v4}, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;-><init>()V

    .line 242
    invoke-virtual {v3}, Lcom/rometools/rome/feed/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/rometools/rome/feed/synd/SyndCategory;->setName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Lcom/rometools/rome/feed/atom/Category;->getSchemeResolved()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/rometools/rome/feed/synd/SyndCategory;->setTaxonomyUri(Ljava/lang/String;)V

    .line 246
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_a
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setCategories(Ljava/util/List;)V

    .line 252
    :cond_b
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getAlternateLinks()Ljava/util/List;

    move-result-object p3

    .line 253
    invoke-static {p3}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 255
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLink(Ljava/lang/String;)V

    .line 259
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v2

    .line 261
    invoke-static {v2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/atom/Link;

    const-string v5, "enclosure"

    .line 264
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 265
    invoke-virtual {p0, p1, p2, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndEnclosure(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndEnclosure;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 269
    :cond_e
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setEnclosures(Ljava/util/List;)V

    .line 272
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-static {p3}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 274
    invoke-virtual {p0, p3}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    :cond_f
    invoke-static {v2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 277
    invoke-virtual {p0, v2}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_10
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLinks(Ljava/util/List;)V

    .line 281
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 283
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUri(Ljava/lang/String;)V

    goto :goto_3

    .line 285
    :cond_11
    invoke-virtual {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUri(Ljava/lang/String;)V

    .line 290
    :goto_3
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Entry;->getSource()Lcom/rometools/rome/feed/atom/Feed;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 292
    new-instance p2, Lcom/rometools/rome/feed/synd/SyndFeedImpl;

    invoke-direct {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>(Lcom/rometools/rome/feed/WireFeed;)V

    .line 293
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setSource(Lcom/rometools/rome/feed/synd/SyndFeed;)V

    :cond_12
    return-object v0
.end method

.method public createSyndLink(Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndLink;
    .locals 3

    .line 317
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;-><init>()V

    .line 318
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setRel(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setType(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setHref(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHreflang()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setHreflang(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getLength()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/rometools/rome/feed/synd/SyndLink;->setLength(J)V

    .line 323
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndLink;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createSyndLinks(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 170
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->createSyndLink(Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndLink;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom10;->type:Ljava/lang/String;

    return-object v0
.end method
