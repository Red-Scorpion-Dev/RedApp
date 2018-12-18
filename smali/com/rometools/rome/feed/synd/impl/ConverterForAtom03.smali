.class public Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;
.super Ljava/lang/Object;
.source "ConverterForAtom03.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/Converter;


# instance fields
.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "atom_0.3"

    .line 56
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->type:Ljava/lang/String;

    return-void
.end method

.method protected static createAtomPersons(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 382
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 384
    new-instance v2, Lcom/rometools/rome/feed/atom/Person;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Person;-><init>()V

    .line 385
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Person;->setName(Ljava/lang/String;)V

    .line 386
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Person;->setUri(Ljava/lang/String;)V

    .line 387
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Person;->setEmail(Ljava/lang/String;)V

    .line 388
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Person;->setModules(Ljava/util/List;)V

    .line 389
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected static createSyndPersons(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 397
    new-instance v2, Lcom/rometools/rome/feed/synd/SyndPersonImpl;

    invoke-direct {v2}, Lcom/rometools/rome/feed/synd/SyndPersonImpl;-><init>()V

    .line 398
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/rometools/rome/feed/synd/SyndPerson;->setName(Ljava/lang/String;)V

    .line 399
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/rometools/rome/feed/synd/SyndPerson;->setUri(Ljava/lang/String;)V

    .line 400
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/rometools/rome/feed/synd/SyndPerson;->setEmail(Ljava/lang/String;)V

    .line 401
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/rometools/rome/feed/synd/SyndPerson;->setModules(Ljava/util/List;)V

    .line 402
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V
    .locals 3

    .line 71
    move-object v0, p1

    check-cast v0, Lcom/rometools/rome/feed/atom/Feed;

    .line 73
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setModules(Ljava/util/List;)V

    .line 75
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    .line 76
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setForeignMarkup(Ljava/util/List;)V

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEncoding(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getStyleSheet()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setStyleSheet(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getLogo()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getIcon()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 87
    new-instance v1, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/synd/SyndImageImpl;-><init>()V

    .line 88
    invoke-interface {v1, p1}, Lcom/rometools/rome/feed/synd/SyndImage;->setUrl(Ljava/lang/String;)V

    .line 89
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 91
    new-instance p1, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-direct {p1}, Lcom/rometools/rome/feed/synd/SyndImageImpl;-><init>()V

    .line 92
    invoke-interface {p1, v1}, Lcom/rometools/rome/feed/synd/SyndImage;->setUrl(Ljava/lang/String;)V

    .line 93
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V

    .line 96
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setUri(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setTitle(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getAlternateLinks()Ljava/util/List;

    move-result-object p1

    .line 102
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    .line 103
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 104
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLink(Ljava/lang/String;)V

    .line 107
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_4
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getOtherLinks()Ljava/util/List;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 113
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 115
    :cond_5
    invoke-interface {p2, v1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLinks(Ljava/util/List;)V

    .line 117
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getTagline()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setDescription(Ljava/lang/String;)V

    .line 122
    :cond_6
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 124
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndFeed;->isPreservingWireFeed()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndEntries(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setEntries(Ljava/util/List;)V

    .line 130
    :cond_7
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getLanguage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 132
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setLanguage(Ljava/lang/String;)V

    .line 135
    :cond_8
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getAuthors()Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-static {p1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 137
    invoke-static {p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setAuthors(Ljava/util/List;)V

    .line 140
    :cond_9
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getCopyright()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 142
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setCopyright(Ljava/lang/String;)V

    .line 145
    :cond_a
    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Feed;->getModified()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 147
    invoke-interface {p2, p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->setPublishedDate(Ljava/util/Date;)V

    :cond_b
    return-void
.end method

.method public createAtomEnclosure(Lcom/rometools/rome/feed/synd/SyndEnclosure;)Lcom/rometools/rome/feed/atom/Link;
    .locals 3

    .line 528
    new-instance v0, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v1, "enclosure"

    .line 529
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 530
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    .line 531
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 532
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

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 409
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndEntry;

    .line 410
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomEntry(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/atom/Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createAtomEntry(Lcom/rometools/rome/feed/synd/SyndEntry;)Lcom/rometools/rome/feed/atom/Entry;
    .locals 7

    .line 416
    new-instance v0, Lcom/rometools/rome/feed/atom/Entry;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Entry;-><init>()V

    .line 417
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setModules(Ljava/util/List;)V

    .line 419
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setId(Ljava/lang/String;)V

    .line 421
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 423
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 424
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 426
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 429
    :cond_0
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getMode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 431
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 434
    :cond_1
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    .line 439
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLinks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 444
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/synd/SyndLink;

    .line 445
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v4

    .line 446
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v5

    .line 447
    invoke-static {v5}, Lcom/rometools/utils/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "alternate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 450
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_4
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_5
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 456
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 457
    new-instance v4, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v5, "alternate"

    .line 458
    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v4, v3}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 460
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    :cond_6
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getEnclosures()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 465
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/synd/SyndEnclosure;

    .line 466
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomEnclosure(Lcom/rometools/rome/feed/synd/SyndEnclosure;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v4

    .line 467
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 471
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 472
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setAlternateLinks(Ljava/util/List;)V

    .line 474
    :cond_8
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 475
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setOtherLinks(Ljava/util/List;)V

    .line 478
    :cond_9
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getDescription()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 480
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 481
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 482
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    const-string v1, "escaped"

    .line 483
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setSummary(Lcom/rometools/rome/feed/atom/Content;)V

    .line 487
    :cond_a
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getContents()Ljava/util/List;

    move-result-object v1

    .line 488
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 489
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/rometools/rome/feed/synd/SyndContent;

    .line 491
    new-instance v4, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 492
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 493
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 494
    invoke-interface {v3}, Lcom/rometools/rome/feed/synd/SyndContent;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/rometools/rome/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 495
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 497
    :cond_b
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setContents(Ljava/util/List;)V

    .line 500
    :cond_c
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 501
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getAuthor()Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 503
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    goto :goto_4

    :cond_d
    if-eqz v2, :cond_e

    .line 505
    new-instance v1, Lcom/rometools/rome/feed/atom/Person;

    invoke-direct {v1}, Lcom/rometools/rome/feed/atom/Person;-><init>()V

    .line 506
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Person;->setName(Ljava/lang/String;)V

    .line 507
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 508
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    .line 512
    :cond_e
    :goto_4
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setModified(Ljava/util/Date;)V

    .line 513
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndEntry;->getPublishedDate()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setIssued(Ljava/util/Date;)V

    return-object v0
.end method

.method public createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;
    .locals 2

    .line 519
    new-instance v0, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    .line 520
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getRel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 521
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    .line 522
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 523
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndLink;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Link;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method public createRealFeed(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;
    .locals 7

    .line 295
    new-instance v0, Lcom/rometools/rome/feed/atom/Feed;

    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getModules()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setModules(Ljava/util/List;)V

    .line 298
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setEncoding(Ljava/lang/String;)V

    .line 299
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getStyleSheet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setStyleSheet(Ljava/lang/String;)V

    .line 301
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setId(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 306
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 307
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 309
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 312
    :cond_0
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getMode()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 314
    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-interface {v1}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    .line 322
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 325
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLinks()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 327
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/synd/SyndLink;

    .line 329
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomLink(Lcom/rometools/rome/feed/synd/SyndLink;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-static {v5}, Lcom/rometools/utils/Strings;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "alternate"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 334
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_4
    :goto_1
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 339
    :cond_5
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    if-eqz v3, :cond_6

    .line 341
    new-instance v4, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v4}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v5, "alternate"

    .line 342
    invoke-virtual {v4, v5}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v4, v3}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 344
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 348
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAlternateLinks(Ljava/util/List;)V

    .line 350
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 351
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setOtherLinks(Ljava/util/List;)V

    .line 354
    :cond_8
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 356
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 357
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setTagline(Lcom/rometools/rome/feed/atom/Content;)V

    .line 361
    :cond_9
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setLanguage(Ljava/lang/String;)V

    .line 363
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 364
    invoke-static {v1}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 365
    invoke-static {v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAuthors(Ljava/util/List;)V

    .line 368
    :cond_a
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getCopyright()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setCopyright(Ljava/lang/String;)V

    .line 370
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getPublishedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setModified(Ljava/util/Date;)V

    .line 372
    invoke-interface {p1}, Lcom/rometools/rome/feed/synd/SyndFeed;->getEntries()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 374
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createAtomEntries(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setEntries(Ljava/util/List;)V

    :cond_b
    return-object v0
.end method

.method public createSyndEnclosure(Lcom/rometools/rome/feed/atom/Entry;Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndEnclosure;
    .locals 2

    .line 286
    new-instance p1, Lcom/rometools/rome/feed/synd/SyndEnclosureImpl;

    invoke-direct {p1}, Lcom/rometools/rome/feed/synd/SyndEnclosureImpl;-><init>()V

    .line 287
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setUrl(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setType(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Link;->getLength()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/rometools/rome/feed/synd/SyndEnclosure;->setLength(J)V

    return-object p1
.end method

.method protected createSyndEntries(Ljava/util/List;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Entry;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Entry;

    .line 176
    invoke-virtual {p0, v1, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndEntry(Lcom/rometools/rome/feed/atom/Entry;Z)Lcom/rometools/rome/feed/synd/SyndEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected createSyndEntry(Lcom/rometools/rome/feed/atom/Entry;Z)Lcom/rometools/rome/feed/synd/SyndEntry;
    .locals 9

    .line 183
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndEntryImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;-><init>()V

    if-eqz p2, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setWireEntry(Ljava/lang/Object;)V

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getModules()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->cloneModules(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setModules(Ljava/util/List;)V

    .line 191
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object p2

    .line 192
    invoke-static {p2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setForeignMarkup(Ljava/util/List;)V

    .line 196
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setTitle(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAlternateLinks()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x1

    .line 200
    invoke-static {p2, v1}, Lcom/rometools/utils/Lists;->sizeIs(Ljava/util/List;I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 201
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/feed/atom/Link;

    .line 202
    invoke-virtual {v2}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLink(Ljava/lang/String;)V

    .line 206
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v4

    .line 208
    invoke-static {v4}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 209
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/rometools/rome/feed/atom/Link;

    const-string v7, "enclosure"

    .line 211
    invoke-virtual {v6}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    invoke-virtual {p0, p1, v6}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndEnclosure(Lcom/rometools/rome/feed/atom/Entry;Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndEnclosure;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_4
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setEnclosures(Ljava/util/List;)V

    .line 219
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 221
    invoke-static {p2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 222
    invoke-virtual {p0, p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    :cond_5
    invoke-static {v4}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 226
    invoke-virtual {p0, v4}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    :cond_6
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setLinks(Ljava/util/List;)V

    .line 231
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 233
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUri(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_7
    invoke-virtual {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->getLink()Ljava/lang/String;

    move-result-object p2

    .line 236
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setUri(Ljava/lang/String;)V

    .line 239
    :goto_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getSummary()Lcom/rometools/rome/feed/atom/Content;

    move-result-object p2

    if-nez p2, :cond_8

    .line 241
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object p2

    .line 242
    invoke-static {p2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 243
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rometools/rome/feed/atom/Content;

    goto :goto_2

    .line 246
    :cond_8
    new-instance v2, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v2}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 247
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setDescription(Lcom/rometools/rome/feed/synd/SyndContent;)V

    .line 252
    :cond_9
    :goto_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object p2

    .line 253
    invoke-static {p2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 254
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/atom/Content;

    .line 256
    new-instance v5, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v5}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    .line 257
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/rometools/rome/feed/synd/SyndContent;->setType(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v4}, Lcom/rometools/rome/feed/atom/Content;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lcom/rometools/rome/feed/synd/SyndContent;->setMode(Ljava/lang/String;)V

    .line 260
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 263
    :cond_a
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setContents(Ljava/util/List;)V

    .line 266
    :cond_b
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object p2

    .line 267
    invoke-static {p2}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 268
    invoke-static {p2}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndPersons(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setAuthors(Ljava/util/List;)V

    .line 269
    invoke-virtual {v0}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->getAuthors()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 270
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setAuthor(Ljava/lang/String;)V

    .line 273
    :cond_c
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getModified()Ljava/util/Date;

    move-result-object p2

    if-nez p2, :cond_d

    const/4 p2, 0x2

    .line 275
    new-array p2, p2, [Ljava/util/Date;

    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getIssued()Ljava/util/Date;

    move-result-object v2

    aput-object v2, p2, v3

    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getCreated()Ljava/util/Date;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Lcom/rometools/utils/Alternatives;->firstNotNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Date;

    :cond_d
    if-eqz p2, :cond_e

    .line 279
    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/synd/SyndEntryImpl;->setPublishedDate(Ljava/util/Date;)V

    :cond_e
    return-object v0
.end method

.method public createSyndLink(Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndLink;
    .locals 2

    .line 165
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndLinkImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndLinkImpl;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setRel(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setType(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHrefResolved()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/synd/SyndLink;->setHref(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndLink;->setTitle(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createSyndLinks(Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 156
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enclosure"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->createSyndLink(Lcom/rometools/rome/feed/atom/Link;)Lcom/rometools/rome/feed/synd/SyndLink;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/impl/ConverterForAtom03;->type:Ljava/lang/String;

    return-object v0
.end method
