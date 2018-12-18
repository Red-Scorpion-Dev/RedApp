.class public Lcom/rometools/rome/io/impl/Atom10Parser;
.super Lcom/rometools/rome/io/impl/BaseWireFeedParser;
.source "Atom10Parser.java"


# static fields
.field private static final ATOM_10_NS:Lorg/jdom2/Namespace;

.field private static final ATOM_10_URI:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field static absoluteURIPattern:Ljava/util/regex/Pattern;

.field private static resolveURIs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://www.w3.org/2005/Atom"

    .line 56
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/Atom10Parser;->ATOM_10_NS:Lorg/jdom2/Namespace;

    const/4 v0, 0x0

    .line 58
    sput-boolean v0, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURIs:Z

    const-string v0, "^[a-z0-9]*:.*$"

    .line 513
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/Atom10Parser;->absoluteURIPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "atom_1.0"

    .line 69
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom10Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 73
    sget-object v0, Lcom/rometools/rome/io/impl/Atom10Parser;->ATOM_10_NS:Lorg/jdom2/Namespace;

    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/BaseWireFeedParser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method private findAtomLink(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "link"

    .line 624
    sget-object v1, Lcom/rometools/rome/io/impl/Atom10Parser;->ATOM_10_NS:Lorg/jdom2/Namespace;

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 626
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    const-string v1, "rel"

    .line 628
    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v1

    const-string v2, "href"

    .line 629
    invoke-virtual {p0, v0, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    if-nez v1, :cond_1

    const-string v2, "alternate"

    .line 630
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    :cond_2
    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private findBaseURI(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const-string v0, "self"

    .line 602
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->findAtomLink(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, "self"

    .line 603
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->findAtomLink(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    .line 604
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "./"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, ""

    :cond_1
    const-string v2, "/"

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v2, 0x0

    const-string v3, "/"

    .line 608
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 610
    :cond_2
    invoke-static {v1, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static formURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 647
    invoke-static {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 648
    invoke-static {p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->stripStartingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".."

    .line 649
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/"

    .line 650
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 651
    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    move-object p1, p0

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v1, :cond_1

    aget-object v4, v0, p0

    const-string v5, ".."

    .line 652
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/"

    .line 653
    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 655
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    .line 656
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    move-object p0, p1

    move-object p1, v3

    .line 663
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResolveURIs()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURIs:Z

    return v0
.end method

.method public static isAbsoluteURI(Ljava/lang/String;)Z
    .locals 1

    .line 516
    sget-object v0, Lcom/rometools/rome/io/impl/Atom10Parser;->absoluteURIPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isRelativeURI(Ljava/lang/String;)Z
    .locals 0

    .line 521
    invoke-static {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private parseAlternateLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rometools/rome/feed/atom/Feed;",
            "Lcom/rometools/rome/feed/atom/Entry;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 268
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseLink(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "alternate"

    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_2
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseCategories(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Category;",
            ">;"
        }
    .end annotation

    .line 471
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 473
    invoke-direct {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseCategory(Ljava/lang/String;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseCategory(Ljava/lang/String;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Category;
    .locals 3

    .line 482
    new-instance v0, Lcom/rometools/rome/feed/atom/Category;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Category;-><init>()V

    const-string v1, "term"

    .line 484
    invoke-virtual {p0, p2, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Category;->setTerm(Ljava/lang/String;)V

    :cond_0
    const-string v1, "scheme"

    .line 489
    invoke-virtual {p0, p2, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 491
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Category;->setScheme(Ljava/lang/String;)V

    .line 492
    invoke-static {v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->isRelativeURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 493
    invoke-static {p1, p2, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Category;->setSchemeResolved(Ljava/lang/String;)V

    :cond_1
    const-string p1, "label"

    .line 497
    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 499
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Category;->setLabel(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;
    .locals 3

    .line 333
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "src"

    .line 334
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 335
    invoke-virtual {p0, p1, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 337
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 338
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setSrc(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v2, p1}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseEntry(Ljava/io/Reader;Ljava/lang/String;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 693
    new-instance v0, Lorg/jdom2/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom2/input/SAXBuilder;-><init>()V

    .line 694
    invoke-virtual {v0, p0}, Lorg/jdom2/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom2/Document;

    move-result-object p0

    .line 695
    invoke-virtual {p0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p0

    .line 696
    invoke-virtual {p0}, Lorg/jdom2/Element;->detach()Lorg/jdom2/Element;

    .line 700
    new-instance v0, Lcom/rometools/rome/feed/atom/Feed;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Feed;-><init>()V

    const-string v1, "atom_1.0"

    .line 701
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setFeedType(Ljava/lang/String;)V

    .line 702
    new-instance v1, Lcom/rometools/rome/io/WireFeedOutput;

    invoke-direct {v1}, Lcom/rometools/rome/io/WireFeedOutput;-><init>()V

    .line 703
    invoke-virtual {v1, v0}, Lcom/rometools/rome/io/WireFeedOutput;->outputJDom(Lcom/rometools/rome/feed/WireFeed;)Lorg/jdom2/Document;

    move-result-object v0

    .line 704
    invoke-virtual {v0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {v0}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p0

    const-string v1, "base"

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p0, v1, p1, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 710
    :cond_0
    new-instance p0, Lcom/rometools/rome/io/WireFeedInput;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/WireFeedInput;-><init>(ZLjava/util/Locale;)V

    .line 711
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/WireFeedInput;->build(Lorg/jdom2/Document;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p0

    check-cast p0, Lcom/rometools/rome/feed/atom/Feed;

    .line 712
    invoke-virtual {p0}, Lcom/rometools/rome/feed/atom/Feed;->getEntries()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rometools/rome/feed/atom/Entry;

    return-object p0
.end method

.method private parseFeedMetadata(Ljava/lang/String;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Feed;
    .locals 4

    .line 135
    new-instance v0, Lcom/rometools/rome/feed/atom/Feed;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    .line 137
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 139
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 140
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    const-string v3, "type"

    .line 141
    invoke-virtual {p0, v1, v3}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Feed;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_0
    const-string v1, "link"

    .line 145
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 146
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseAlternateLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/rometools/rome/feed/atom/Feed;->setAlternateLinks(Ljava/util/List;)V

    .line 147
    invoke-direct {p0, v0, v2, p1, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseOtherLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setOtherLinks(Ljava/util/List;)V

    const-string v1, "category"

    .line 149
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 150
    invoke-direct {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseCategories(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setCategories(Ljava/util/List;)V

    const-string v1, "author"

    .line 152
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    invoke-direct {p0, p1, v1, p3}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePersons(Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAuthors(Ljava/util/List;)V

    :cond_1
    const-string v1, "contributor"

    .line 157
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    invoke-direct {p0, p1, v1, p3}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePersons(Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setContributors(Ljava/util/List;)V

    :cond_2
    const-string p1, "subtitle"

    .line 162
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    new-instance v1, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v1}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 165
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    const-string v2, "type"

    .line 166
    invoke-virtual {p0, p1, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setSubtitle(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_3
    const-string p1, "id"

    .line 170
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 172
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setId(Ljava/lang/String;)V

    :cond_4
    const-string p1, "generator"

    .line 175
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 178
    new-instance v1, Lcom/rometools/rome/feed/atom/Generator;

    invoke-direct {v1}, Lcom/rometools/rome/feed/atom/Generator;-><init>()V

    .line 179
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Generator;->setValue(Ljava/lang/String;)V

    const-string v2, "uri"

    .line 181
    invoke-virtual {p0, p1, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 183
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Generator;->setUrl(Ljava/lang/String;)V

    :cond_5
    const-string v2, "version"

    .line 186
    invoke-virtual {p0, p1, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 188
    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/atom/Generator;->setVersion(Ljava/lang/String;)V

    .line 191
    :cond_6
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Feed;->setGenerator(Lcom/rometools/rome/feed/atom/Generator;)V

    :cond_7
    const-string p1, "rights"

    .line 195
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 197
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setRights(Ljava/lang/String;)V

    :cond_8
    const-string p1, "icon"

    .line 200
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 202
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setIcon(Ljava/lang/String;)V

    :cond_9
    const-string p1, "logo"

    .line 205
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 207
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setLogo(Ljava/lang/String;)V

    :cond_a
    const-string p1, "updated"

    .line 210
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 212
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Feed;->setUpdated(Ljava/util/Date;)V

    :cond_b
    return-object v0
.end method

.method private parseLink(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;
    .locals 1

    .line 221
    new-instance p1, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {p1}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string p2, "rel"

    .line 223
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    :cond_0
    const-string p2, "type"

    .line 228
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 230
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    :cond_1
    const-string p2, "href"

    .line 233
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 235
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    .line 236
    invoke-static {p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->isRelativeURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    invoke-static {p3, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setHrefResolved(Ljava/lang/String;)V

    :cond_2
    const-string p2, "title"

    .line 241
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 243
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setTitle(Ljava/lang/String;)V

    :cond_3
    const-string p2, "hreflang"

    .line 246
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 248
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/atom/Link;->setHreflang(Ljava/lang/String;)V

    :cond_4
    const-string p2, "length"

    .line 251
    invoke-virtual {p0, p4, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 253
    invoke-static {p2}, Lcom/rometools/rome/io/impl/NumberParser;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 255
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/rometools/rome/feed/atom/Link;->setLength(J)V

    :cond_5
    return-object p1
.end method

.method private parseOtherLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rometools/rome/feed/atom/Feed;",
            "Lcom/rometools/rome/feed/atom/Entry;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 282
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseLink(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v1

    const-string v2, "alternate"

    .line 283
    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Link;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parsePerson(Ljava/lang/String;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Person;
    .locals 3

    .line 294
    new-instance v0, Lcom/rometools/rome/feed/atom/Person;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Person;-><init>()V

    const-string v1, "name"

    .line 296
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Person;->setName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "uri"

    .line 301
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 303
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Person;->setUri(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->isRelativeURI(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Person;->setUriResolved(Ljava/lang/String;)V

    :cond_1
    const-string p1, "email"

    .line 309
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 311
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Person;->setEmail(Ljava/lang/String;)V

    .line 314
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePersonModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Person;->setModules(Ljava/util/List;)V

    return-object v0
.end method

.method private parsePersons(Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 324
    invoke-direct {p0, p1, v1, p3}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePerson(Ljava/lang/String;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 327
    :cond_0
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 5

    const-string v0, "type"

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text"

    :cond_0
    const-string v1, "xhtml"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "/xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 355
    :cond_2
    :goto_0
    new-instance v0, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v0}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    .line 356
    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object p1

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 358
    instance-of v3, v2, Lorg/jdom2/Element;

    if-eqz v3, :cond_3

    .line 359
    check-cast v2, Lorg/jdom2/Element;

    .line 360
    invoke-virtual {v2}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    sget-object v3, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    goto :goto_1

    .line 365
    :cond_4
    invoke-virtual {v0, p1}, Lorg/jdom2/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public static resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 534
    sget-boolean v0, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURIs:Z

    if-nez v0, :cond_0

    return-object p2

    .line 538
    :cond_0
    invoke-static {p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->isRelativeURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "."

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "./"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string p2, ""

    :cond_2
    const-string v0, "/"

    .line 544
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    const-string v0, "//"

    .line 546
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v3, "/"

    add-int/lit8 v0, v0, 0x2

    .line 547
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 549
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 551
    :cond_3
    invoke-static {p1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->formURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_a

    .line 555
    instance-of v0, p1, Lorg/jdom2/Element;

    if-eqz v0, :cond_a

    .line 558
    move-object v0, p1

    check-cast v0, Lorg/jdom2/Element;

    const-string v3, "base"

    sget-object v4, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v0, v3, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 559
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 560
    invoke-static {v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->isAbsoluteURI(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p0, "/"

    .line 562
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "//"

    .line 564
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string p1, "/"

    add-int/lit8 p0, p0, 0x2

    .line 565
    invoke-virtual {v0, p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_5

    .line 567
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 569
    :cond_5
    invoke-static {v0, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->formURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "/"

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "/"

    .line 573
    invoke-virtual {v0, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 575
    :cond_7
    invoke-static {v0, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->formURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 578
    :cond_8
    invoke-interface {p1}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/rometools/rome/io/impl/Atom10Parser;->stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->stripStartingSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 582
    :cond_9
    invoke-interface {p1}, Lorg/jdom2/Parent;->getParent()Lorg/jdom2/Parent;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURI(Ljava/lang/String;Lorg/jdom2/Parent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-eqz p1, :cond_b

    .line 586
    instance-of p1, p1, Lorg/jdom2/Document;

    if-eqz p1, :cond_c

    .line 587
    :cond_b
    invoke-static {p0, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->formURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    return-object p2
.end method

.method public static setResolveURIs(Z)V
    .locals 0

    .line 61
    sput-boolean p0, Lcom/rometools/rome/io/impl/Atom10Parser;->resolveURIs:Z

    return-void
.end method

.method private static stripStartingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 670
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 671
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static stripTrailingSlash(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "/"

    .line 680
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 681
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method protected getAtomNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 77
    sget-object v0, Lcom/rometools/rome/io/impl/Atom10Parser;->ATOM_10_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 1

    .line 82
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public parse(Lorg/jdom2/Document;ZLjava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->validateFeed(Lorg/jdom2/Document;)V

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 93
    invoke-virtual {p0, p1, p3}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseFeed(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    return-object p1
.end method

.method protected parseEntries(Lcom/rometools/rome/feed/atom/Feed;Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/rometools/rome/feed/atom/Feed;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Entry;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 380
    invoke-virtual {p0, p1, v1, p2, p4}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseEntry(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;Ljava/lang/String;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected parseEntry(Lcom/rometools/rome/feed/atom/Feed;Lorg/jdom2/Element;Ljava/lang/String;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Entry;
    .locals 4

    .line 389
    new-instance v0, Lcom/rometools/rome/feed/atom/Entry;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Entry;-><init>()V

    const-string v1, "base"

    .line 391
    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setXmlBase(Ljava/lang/String;)V

    :cond_0
    const-string v1, "title"

    .line 396
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 398
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 399
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseTextConstructToString(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    const-string v3, "type"

    .line 400
    invoke-virtual {p0, v1, v3}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_1
    const-string v1, "link"

    .line 404
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 405
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseAlternateLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setAlternateLinks(Ljava/util/List;)V

    .line 406
    invoke-direct {p0, p1, v0, p3, v1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseOtherLinks(Lcom/rometools/rome/feed/atom/Feed;Lcom/rometools/rome/feed/atom/Entry;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setOtherLinks(Ljava/util/List;)V

    const-string p1, "author"

    .line 408
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 409
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 410
    invoke-direct {p0, p3, p1, p4}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePersons(Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    :cond_2
    const-string p1, "contributor"

    .line 413
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 414
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 415
    invoke-direct {p0, p3, p1, p4}, Lcom/rometools/rome/io/impl/Atom10Parser;->parsePersons(Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setContributors(Ljava/util/List;)V

    :cond_3
    const-string p1, "id"

    .line 418
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 420
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setId(Ljava/lang/String;)V

    :cond_4
    const-string p1, "updated"

    .line 423
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 425
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setUpdated(Ljava/util/Date;)V

    :cond_5
    const-string p1, "published"

    .line 428
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 430
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setPublished(Ljava/util/Date;)V

    :cond_6
    const-string p1, "summary"

    .line 433
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 435
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setSummary(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_7
    const-string p1, "content"

    .line 438
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 440
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 441
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setContents(Ljava/util/List;)V

    :cond_8
    const-string p1, "rights"

    .line 445
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 447
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setRights(Ljava/lang/String;)V

    :cond_9
    const-string p1, "category"

    .line 450
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 451
    invoke-direct {p0, p3, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseCategories(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setCategories(Ljava/util/List;)V

    const-string p1, "source"

    .line 454
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 456
    invoke-direct {p0, p3, p1, p4}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseFeedMetadata(Ljava/lang/String;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Feed;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setSource(Lcom/rometools/rome/feed/atom/Feed;)V

    .line 459
    :cond_a
    invoke-virtual {p0, p2, p4}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseItemModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setModules(Ljava/util/List;)V

    .line 461
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 462
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_b

    .line 463
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setForeignMarkup(Ljava/util/List;)V

    :cond_b
    return-object v0
.end method

.method protected parseFeed(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/Atom10Parser;->findBaseURI(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    invoke-direct {p0, v0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseFeedMetadata(Ljava/lang/String;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Feed;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/Atom10Parser;->getStyleSheet(Lorg/jdom2/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Feed;->setStyleSheet(Ljava/lang/String;)V

    const-string v2, "base"

    .line 114
    sget-object v3, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p1, v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Feed;->setXmlBase(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseFeedModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/rometools/rome/feed/atom/Feed;->setModules(Ljava/util/List;)V

    const-string v2, "entry"

    .line 121
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 122
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    invoke-virtual {p0, v1, v0, v2, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->parseEntries(Lcom/rometools/rome/feed/atom/Feed;Ljava/lang/String;Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/rometools/rome/feed/atom/Feed;->setEntries(Ljava/util/List;)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom10Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/rometools/rome/io/impl/Atom10Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 128
    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/atom/Feed;->setForeignMarkup(Ljava/util/List;)V

    :cond_2
    return-object v1

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Lcom/rometools/rome/io/FeedException;

    const-string v0, "ERROR while finding base URI of feed"

    invoke-direct {p2, v0, p1}, Lcom/rometools/rome/io/FeedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected validateFeed(Lorg/jdom2/Document;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method
