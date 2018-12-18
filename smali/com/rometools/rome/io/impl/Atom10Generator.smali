.class public Lcom/rometools/rome/io/impl/Atom10Generator;
.super Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;
.source "Atom10Generator.java"


# static fields
.field private static final ATOM_10_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field private static final ATOM_NS:Lorg/jdom2/Namespace;


# instance fields
.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://www.w3.org/2005/Atom"

    .line 53
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/Atom10Generator;->ATOM_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "atom_1.0"

    const-string v1, "1.0"

    .line 58
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;-><init>(Ljava/lang/String;)V

    .line 63
    iput-object p2, p0, Lcom/rometools/rome/io/impl/Atom10Generator;->version:Ljava/lang/String;

    return-void
.end method

.method public static serializeEntry(Lcom/rometools/rome/feed/atom/Entry;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 545
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance p0, Lcom/rometools/rome/feed/atom/Feed;

    invoke-direct {p0}, Lcom/rometools/rome/feed/atom/Feed;-><init>()V

    const-string v1, "atom_1.0"

    .line 547
    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setFeedType(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/atom/Feed;->setEntries(Ljava/util/List;)V

    .line 551
    new-instance v0, Lcom/rometools/rome/io/WireFeedOutput;

    invoke-direct {v0}, Lcom/rometools/rome/io/WireFeedOutput;-><init>()V

    .line 552
    invoke-virtual {v0, p0}, Lcom/rometools/rome/io/WireFeedOutput;->outputJDom(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;

    move-result-object p0

    .line 555
    invoke-virtual {p0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/jdom2/Element;

    .line 557
    new-instance v0, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v0}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    .line 558
    invoke-virtual {v0, p0, p1}, Lorg/jdom2/output/XMLOutputter;->output(Lorg/jdom2/Element;Ljava/io/Writer;)V

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

    .line 121
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object p1

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/atom/Entry;

    .line 123
    invoke-virtual {p0, v0, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->addEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->checkEntriesConstraints(Lorg/jdom2/Element;)V

    return-void
.end method

.method protected addEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "entry"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 132
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getXmlBase()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "base"

    .line 134
    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v2, v1, v3}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 137
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->populateEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V

    .line 138
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->checkEntryConstraints(Lorg/jdom2/Element;)V

    .line 140
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateItemModules(Ljava/util/List;Lorg/jdom2/Element;)V

    .line 141
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

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->populateFeedHeader(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 115
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    .line 116
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->checkFeedHeaderConstraints(Lorg/jdom2/Element;)V

    .line 117
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getModules()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateFeedModules(Ljava/util/List;Lorg/jdom2/Element;)V

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

    .line 84
    new-instance v0, Lorg/jdom2/Document;

    invoke-direct {v0, p1}, Lorg/jdom2/Document;-><init>(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method protected createRootElement(Lcom/rometools/rome/feed/atom/Feed;)Lorg/jdom2/Element;
    .locals 3

    .line 89
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "feed"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 91
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 96
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getXmlBase()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "base"

    .line 98
    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v1, p1, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 101
    :cond_0
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateModuleNamespaceDefs(Lorg/jdom2/Element;)V

    return-object v0
.end method

.method protected fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 452
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "text/plain"

    .line 459
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "text"

    goto :goto_0

    :cond_0
    const-string v1, "text/html"

    .line 461
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "html"

    goto :goto_0

    :cond_1
    const-string v1, "application/xhtml+xml"

    .line 463
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "xhtml"

    .line 467
    :cond_2
    :goto_0
    new-instance v1, Lorg/jdom2/Attribute;

    const-string v2, "type"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 471
    :cond_3
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getSrc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 473
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "src"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 477
    :cond_4
    invoke-virtual {p2}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    const-string v1, "xhtml"

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    const-string v1, "+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_6

    .line 482
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<tmpdoc>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "</tmpdoc>"

    .line 484
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    new-instance p2, Ljava/io/StringReader;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 488
    :try_start_0
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 489
    invoke-virtual {v0, p2}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    invoke-virtual {p2}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p2

    invoke-virtual {p2}, Lorg/jdom2/Element;->removeContent()Ljava/util/List;

    move-result-object p2

    .line 494
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 491
    new-instance p2, Lcom/rometools/rome/io/FeedException;

    const-string v0, "Invalid XML"

    invoke-direct {p2, v0, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 500
    :cond_6
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_7
    :goto_1
    return-void
.end method

.method protected fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V
    .locals 2

    .line 412
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "name"

    .line 414
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 417
    :cond_0
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "uri"

    .line 419
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 422
    :cond_1
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "email"

    .line 424
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 427
    :cond_2
    invoke-interface {p2}, Lcom/rometools/rome/feed/synd/SyndPerson;->getModules()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generatePersonModules(Ljava/util/List;Lorg/jdom2/Element;)V

    return-void
.end method

.method public generate(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 76
    check-cast p1, Lcom/rometools/rome/feed/atom/Feed;

    .line 77
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Generator;->createRootElement(Lcom/rometools/rome/feed/atom/Feed;)Lorg/jdom2/Element;

    move-result-object v0

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->populateFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 79
    invoke-static {v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->purgeUnusedNamespaceDeclarations(Lorg/jdom2/Element;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->createDocument(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object p1

    return-object p1
.end method

.method protected generateCategoryElement(Lcom/rometools/rome/feed/atom/Category;)Lorg/jdom2/Element;
    .locals 4

    .line 341
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 342
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "category"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 344
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "term"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 350
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Category;->getLabel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "label"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 356
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Category;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 358
    new-instance v0, Lorg/jdom2/Attribute;

    const-string v2, "scheme"

    invoke-direct {v0, v2, p1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    :cond_2
    return-object v1
.end method

.method protected generateGeneratorElement(Lcom/rometools/rome/feed/atom/Generator;)Lorg/jdom2/Element;
    .locals 4

    .line 509
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "generator"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 511
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 513
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "uri"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 519
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "version"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Generator;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 525
    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_2
    return-object v0
.end method

.method protected generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;
    .locals 6

    .line 368
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 369
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "link"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 371
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 373
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "rel"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "type"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 383
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 385
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "href"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 389
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getHreflang()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 391
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "hreflang"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 395
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 397
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "title"

    invoke-direct {v2, v3, v0}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 401
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_5

    .line 402
    new-instance v0, Lorg/jdom2/Attribute;

    const-string v2, "length"

    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Link;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    :cond_5
    return-object v1
.end method

.method protected generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2

    .line 533
    new-instance v0, Lorg/jdom2/Element;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 534
    invoke-virtual {v0, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected generateTagLineElement(Lcom/rometools/rome/feed/atom/Content;)Lorg/jdom2/Element;
    .locals 4

    .line 433
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "subtitle"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 435
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 437
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "type"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_1
    return-object v0
.end method

.method protected getFeedNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 71
    sget-object v0, Lcom/rometools/rome/io/impl/Atom10Generator;->ATOM_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getVersion()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/rometools/rome/io/impl/Atom10Generator;->version:Ljava/lang/String;

    return-object v0
.end method

.method protected populateEntry(Lcom/rometools/rome/feed/atom/Entry;Lorg/jdom2/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 236
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "title"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 239
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 240
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 243
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAlternateLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 246
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 250
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 253
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 257
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Category;

    .line 260
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateCategoryElement(Lcom/rometools/rome/feed/atom/Category;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_2

    .line 264
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 266
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 267
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "author"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 268
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 269
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_3

    .line 273
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContributors()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 276
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "contributor"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 277
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 278
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_4

    .line 282
    :cond_5
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "id"

    .line 284
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 287
    :cond_6
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getUpdated()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 289
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "updated"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 290
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 291
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 294
    :cond_7
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 296
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "published"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 297
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 298
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 301
    :cond_8
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getContents()Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 303
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "content"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    const/4 v2, 0x0

    .line 304
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/atom/Content;

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 306
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 309
    :cond_9
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getSummary()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 311
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "summary"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 312
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 313
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 316
    :cond_a
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getSource()Lcom/rometools/rome/feed/atom/Feed;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 318
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "source"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->populateFeedHeader(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 320
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 323
    :cond_b
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Entry;->getRights()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, "rights"

    .line 325
    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_c
    return-void
.end method

.method protected populateFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->addFeed(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Generator;->addEntries(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected populateFeedHeader(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 147
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getTitleEx()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "title"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 150
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 151
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getAlternateLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 157
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getOtherLinks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Link;

    .line 164
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateLinkElement(Lcom/rometools/rome/feed/atom/Link;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 168
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getCategories()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 170
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/atom/Category;

    .line 171
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateCategoryElement(Lcom/rometools/rome/feed/atom/Category;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_2

    .line 175
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 178
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "author"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 179
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 180
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_3

    .line 184
    :cond_4
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getContributors()Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/rometools/utils/Lists;->isNotEmpty(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    .line 187
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "contributor"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 188
    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillPersonElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/synd/SyndPerson;)V

    .line 189
    invoke-virtual {p2, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_4

    .line 193
    :cond_5
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getSubtitle()Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 195
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "subtitle"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 196
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->fillContentElement(Lorg/jdom2/Element;Lcom/rometools/rome/feed/atom/Content;)V

    .line 197
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 200
    :cond_6
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "id"

    .line 202
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 205
    :cond_7
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getGenerator()Lcom/rometools/rome/feed/atom/Generator;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 207
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateGeneratorElement(Lcom/rometools/rome/feed/atom/Generator;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 210
    :cond_8
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getRights()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "rights"

    .line 212
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 215
    :cond_9
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getIcon()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "icon"

    .line 217
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 220
    :cond_a
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getLogo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "logo"

    .line 222
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/Atom10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 225
    :cond_b
    invoke-virtual {p1}, Lcom/rometools/rome/feed/atom/Feed;->getUpdated()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 227
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "updated"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 228
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v1}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 229
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_c
    return-void
.end method
