.class public Lcom/rometools/rome/io/impl/Atom03Generator;
.super Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;
.source "Atom03Generator.java"


# static fields
.field private static final ATOM_03_URI:Ljava/lang/String; = "http://purl.org/atom/ns#"

.field private static final ATOM_NS:Lorg/jdom2/Namespace;


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://purl.org/atom/ns#"

    .line 48
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/Atom03Generator;->ATOM_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "atom_0.3"

    const-string v1, "0.3"

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object p2, p0, Lcom/rometools/rome/io/impl/Atom03Generator;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addEntries(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 105
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 106
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/atom/Entry;

    .line 107
    invoke-virtual {p0, v0, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->addEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->checkEntriesConstraints(Lorg/jdom2/Element;)V

    return-void
.end method

.method protected addEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "entry"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->populateEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->checkEntryConstraints(Lorg/jdom2/Element;)V

    .line 116
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateItemModules(Ljava/util/List;Lorg/jdom2/Element;)V

    .line 117
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    return-void
.end method

.method protected addFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->populateFeedHeader(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 99
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->checkFeedHeaderConstraints(Lorg/jdom2/Element;)V

    .line 100
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateFeedModules(Ljava/util/List;Lorg/jdom2/Element;)V

    .line 101
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    return-void
.end method

.method protected checkEntriesConstraints(Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method

.method protected checkEntryConstraints(Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method

.method protected checkFeedHeaderConstraints(Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method

.method protected createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;
    .locals 1

    .line 79
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method protected createRootElement(Lcom/rometools/rome/feed/atom/Feed;)Lorg/jdom2/Element;
    .locals 3

    .line 83
    new-instance p1, Lorg/jdom2/Element;

    const-string v0, "feed"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 84
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 85
    new-instance v0, Lorg/jdom2/Attribute;

    const-string v1, "version"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 87
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateModuleNamespaceDefs(Lorg/jdom2/Element;)V

    return-object p1
.end method

.method protected fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 343
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    new-instance v1, Lorg/jdom2/Attribute;

    const-string v2, "type"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 349
    :cond_0
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 351
    new-instance v1, Lorg/jdom2/Attribute;

    const-string v2, "mode"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 355
    :cond_1
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    if-eqz v0, :cond_4

    const-string v1, "escaped"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "base64"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    invoke-static {p2}, Lcom/rometools/rome/io/impl/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    goto :goto_1

    :cond_3
    const-string v1, "xml"

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 368
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<tmpdoc>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "</tmpdoc>"

    .line 370
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 375
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 376
    invoke-virtual {v0, p2}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    invoke-virtual {p2}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom2/Element;->removeContent()Ljava/util/List;

    move-result-object p2

    .line 382
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 378
    new-instance p2, Lcom/rometools/rome/io/FeedException;

    const-string v0, "Invalid XML"

    invoke-direct {p2, v0, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 360
    :cond_4
    :goto_0
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_5
    :goto_1
    return-void
.end method

.method protected fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V
    .locals 2

    .line 305
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "name"

    .line 307
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 310
    :cond_0
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "url"

    .line 312
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 315
    :cond_1
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getEmail()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string v0, "email"

    .line 317
    invoke-virtual {p0, v0, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_2
    return-void
.end method

.method public generate(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 71
    check-cast p1, Lcom/rometools/rome/feed/atom/Feed;

    .line 72
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/Atom03Generator;->createRootElement(Lcom/rometools/rome/feed/atom/Feed;)Lorg/jdom2/Element;

    move-result-object v0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->populateFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 74
    invoke-static {v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->purgeUnusedNamespaceDeclarations(Lorg/jdom2/Element;)V

    .line 75
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object p1

    return-object p1
.end method

.method protected generateGeneratorElement(Lcom/rometools/rome/feed/atom/Generator;)Lorg/jdom2/Element;
    .locals 4

    .line 390
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "generator"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 392
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 394
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "url"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 398
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 400
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "version"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 404
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 406
    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_2
    return-object v0
.end method

.method protected generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;
    .locals 4

    .line 279
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "link"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 281
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "rel"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 287
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 289
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "type"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 295
    new-instance v1, Lorg/jdom2/Attribute;

    const-string v2, "href"

    invoke-direct {v1, v2, p1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    :cond_2
    return-object v0
.end method

.method protected generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2

    .line 414
    new-instance v0, Lorg/jdom2/Element;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 415
    invoke-virtual {v0, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected generateTagLineElement(Lcom/rometools/rome/feed/atom/Content;)Lorg/jdom2/Element;
    .locals 4

    .line 324
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "tagline"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 326
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "type"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 332
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 334
    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_1
    return-object v0
.end method

.method protected getFeedNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 66
    sget-object v0, Lcom/rometools/rome/io/impl/Atom03Generator;->ATOM_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/rometools/rome/io/impl/Atom03Generator;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected populateEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "title"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 197
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 200
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAlternateLinks()Ljava/util/List;

    move-result-object v0

    .line 201
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 202
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 207
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 212
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "author"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    const/4 v2, 0x0

    .line 213
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/synd/SyndPerson;

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 214
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 217
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContributors()Ljava/util/List;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 219
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "contributor"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 220
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 221
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "id"

    .line 226
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 229
    :cond_5
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getModified()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 231
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "modified"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 232
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 233
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 236
    :cond_6
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getIssued()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 238
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "issued"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 239
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 240
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 243
    :cond_7
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getCreated()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 245
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "created"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 246
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 247
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 250
    :cond_8
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getSummary()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 252
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "summary"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 253
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 254
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 257
    :cond_9
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object v0

    .line 258
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Content;

    .line 259
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "content"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 260
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 261
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_3

    .line 264
    :cond_a
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    return-void
.end method

.method protected populateFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->addFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom03Generator;->addEntries(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected populateFeedHeader(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 122
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "title"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 125
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 126
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 129
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getAlternateLinks()Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 131
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getOtherLinks()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 136
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 141
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "author"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    const/4 v2, 0x0

    .line 142
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/synd/SyndPerson;

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 143
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 146
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getContributors()Ljava/util/List;

    move-result-object v0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 148
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "contributor"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 149
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 150
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_2

    .line 153
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getTagline()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 155
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "tagline"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 156
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 157
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 160
    :cond_5
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "id"

    .line 162
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 165
    :cond_6
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getGenerator()Lcom/rometools/rome/feed/atom/Generator;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateGeneratorElement(Lcom/rometools/rome/feed/atom/Generator;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 170
    :cond_7
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getCopyright()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "copyright"

    .line 172
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 175
    :cond_8
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getInfo()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 177
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "info"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 178
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom03Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 179
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 182
    :cond_9
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getModified()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 184
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "modified"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 185
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v1}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 186
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_a
    return-void
.end method
