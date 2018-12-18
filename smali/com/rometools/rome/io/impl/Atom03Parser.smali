.class public Lcom/rometools/rome/io/impl/Atom03Parser;
.super Lcom/rometools/rome/io/impl/BaseWireFeedParser;
.source "Atom03Parser.java"


# static fields
.field private static final ATOM_03_NS:Lorg/jdom2/Namespace;

.field private static final ATOM_03_URI:Ljava/lang/String; = "http://purl.org/atom/ns#"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://purl.org/atom/ns#"

    .line 42
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/Atom03Parser;->ATOM_03_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "atom_0.3"

    .line 45
    sget-object v1, Lcom/rometools/rome/io/impl/Atom03Parser;->ATOM_03_NS:Lorg/jdom2/Namespace;

    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/BaseWireFeedParser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method private parseAlternateLinks(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 214
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseLinks(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;
    .locals 7

    const-string v0, "type"

    .line 263
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    const-string v1, "mode"

    .line 268
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "xml"

    :cond_1
    const-string v2, "escaped"

    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 276
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v2, "base64"

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rometools/rome/io/impl/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v2, "xml"

    .line 282
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 284
    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    .line 285
    invoke-virtual {p1}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object p1

    .line 286
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Content;

    .line 287
    instance-of v5, v4, Lorg/jdom2/Element;

    if-eqz v5, :cond_4

    .line 288
    check-cast v4, Lorg/jdom2/Element;

    .line 289
    invoke-virtual {v4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v5

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 290
    sget-object v5, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v4, v5}, Lorg/jdom2/Element;->setNamespace(Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    goto :goto_0

    .line 295
    :cond_5
    invoke-virtual {v2, p1}, Lorg/jdom2/output/XMLOutputter;->outputString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 299
    :goto_1
    new-instance v2, Lcom/rometools/rome/feed/atom/Content;

    invoke-direct {v2}, Lcom/rometools/rome/feed/atom/Content;-><init>()V

    .line 300
    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Content;->setType(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Content;->setMode(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v2, p1}, Lcom/rometools/rome/feed/atom/Content;->setValue(Ljava/lang/String;)V

    return-object v2
.end method

.method private parseEntries(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 311
    invoke-direct {p0, v1, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseEntry(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseEntry(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/atom/Entry;
    .locals 4

    .line 320
    new-instance v0, Lcom/rometools/rome/feed/atom/Entry;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Entry;-><init>()V

    const-string v1, "title"

    .line 322
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 324
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_0
    const-string v1, "link"

    .line 327
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 328
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseAlternateLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setAlternateLinks(Ljava/util/List;)V

    .line 329
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseOtherLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setOtherLinks(Ljava/util/List;)V

    const-string v1, "author"

    .line 331
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parsePerson(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Person;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setAuthors(Ljava/util/List;)V

    :cond_1
    const-string v1, "contributor"

    .line 338
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 340
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parsePersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setContributors(Ljava/util/List;)V

    :cond_2
    const-string v1, "id"

    .line 343
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 345
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setId(Ljava/lang/String;)V

    :cond_3
    const-string v1, "modified"

    .line 348
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 350
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setModified(Ljava/util/Date;)V

    :cond_4
    const-string v1, "issued"

    .line 353
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 355
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setIssued(Ljava/util/Date;)V

    :cond_5
    const-string v1, "created"

    .line 358
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 360
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setCreated(Ljava/util/Date;)V

    :cond_6
    const-string v1, "summary"

    .line 363
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 365
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setSummary(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_7
    const-string v1, "content"

    .line 368
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 369
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 371
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    .line 372
    invoke-direct {p0, v3}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_8
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/atom/Entry;->setContents(Ljava/util/List;)V

    .line 377
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseItemModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/rometools/rome/feed/atom/Entry;->setModules(Ljava/util/List;)V

    .line 379
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 380
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 381
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Entry;->setForeignMarkup(Ljava/util/List;)V

    :cond_a
    return-object v0
.end method

.method private parseLink(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;
    .locals 2

    .line 170
    new-instance v0, Lcom/rometools/rome/feed/atom/Link;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Link;-><init>()V

    const-string v1, "rel"

    .line 172
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setRel(Ljava/lang/String;)V

    :cond_0
    const-string v1, "type"

    .line 177
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Link;->setType(Ljava/lang/String;)V

    :cond_1
    const-string v1, "href"

    .line 182
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Link;->setHref(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private parseLinks(Ljava/util/List;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    const-string v2, "rel"

    .line 196
    invoke-virtual {p0, v1, v2}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, "alternate"

    .line 198
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseLink(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v3, "alternate"

    .line 202
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 203
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseLink(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Link;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parseOtherLinks(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseLinks(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private parsePerson(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Person;
    .locals 3

    .line 224
    new-instance v0, Lcom/rometools/rome/feed/atom/Person;

    invoke-direct {v0}, Lcom/rometools/rome/feed/atom/Person;-><init>()V

    const-string v1, "name"

    .line 226
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Person;->setName(Ljava/lang/String;)V

    :cond_0
    const-string v1, "url"

    .line 232
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 234
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/atom/Person;->setUrl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "email"

    .line 237
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/atom/Person;->setEmail(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private parsePersons(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 252
    invoke-direct {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->parsePerson(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {v0}, Lcom/rometools/utils/Lists;->emptyToNull(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getAtomNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 53
    sget-object v0, Lcom/rometools/rome/io/impl/Atom03Parser;->ATOM_03_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 1

    .line 58
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

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

    .line 67
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/Atom03Parser;->validateFeed(Lorg/jdom2/Document;)V

    .line 70
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1, p3}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseFeed(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    return-object p1
.end method

.method protected parseFeed(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 4

    .line 84
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getType()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object v1

    .line 86
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/Atom03Parser;->getStyleSheet(Lorg/jdom2/Document;)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/rometools/rome/feed/atom/Feed;

    invoke-direct {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Feed;->setStyleSheet(Ljava/lang/String;)V

    const-string v0, "title"

    .line 91
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_0
    const-string v0, "link"

    .line 96
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseAlternateLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAlternateLinks(Ljava/util/List;)V

    .line 98
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseOtherLinks(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setOtherLinks(Ljava/util/List;)V

    const-string v0, "author"

    .line 100
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parsePerson(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Person;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Feed;->setAuthors(Ljava/util/List;)V

    :cond_1
    const-string v0, "contributor"

    .line 107
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parsePersons(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setContributors(Ljava/util/List;)V

    :cond_2
    const-string v0, "tagline"

    .line 112
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 114
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setTagline(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_3
    const-string v0, "id"

    .line 117
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 119
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setId(Ljava/lang/String;)V

    :cond_4
    const-string v0, "generator"

    .line 122
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 124
    new-instance v1, Lcom/rometools/rome/feed/atom/Generator;

    invoke-direct {v1}, Lcom/rometools/rome/feed/atom/Generator;-><init>()V

    .line 125
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/rometools/rome/feed/atom/Generator;->setValue(Ljava/lang/String;)V

    const-string v3, "url"

    .line 126
    invoke-virtual {p0, v0, v3}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 128
    invoke-virtual {v1, v3}, Lcom/rometools/rome/feed/atom/Generator;->setUrl(Ljava/lang/String;)V

    :cond_5
    const-string v3, "version"

    .line 130
    invoke-virtual {p0, v0, v3}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-virtual {v1, v0}, Lcom/rometools/rome/feed/atom/Generator;->setVersion(Ljava/lang/String;)V

    .line 134
    :cond_6
    invoke-virtual {v2, v1}, Lcom/rometools/rome/feed/atom/Feed;->setGenerator(Lcom/rometools/rome/feed/atom/Generator;)V

    :cond_7
    const-string v0, "copyright"

    .line 137
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 139
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setCopyright(Ljava/lang/String;)V

    :cond_8
    const-string v0, "info"

    .line 142
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 144
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseContent(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/atom/Content;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setInfo(Lcom/rometools/rome/feed/atom/Content;)V

    :cond_9
    const-string v0, "modified"

    .line 147
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 149
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setModified(Ljava/util/Date;)V

    .line 152
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseFeedModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/rometools/rome/feed/atom/Feed;->setModules(Ljava/util/List;)V

    const-string v0, "entry"

    .line 154
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 155
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 156
    invoke-direct {p0, v0, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->parseEntries(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/rometools/rome/feed/atom/Feed;->setEntries(Ljava/util/List;)V

    .line 159
    :cond_b
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/Atom03Parser;->getAtomNamespace()Lorg/jdom2/Namespace;

    move-result-object p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/rometools/rome/io/impl/Atom03Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 160
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    .line 161
    invoke-virtual {v2, p1}, Lcom/rometools/rome/feed/atom/Feed;->setForeignMarkup(Ljava/util/List;)V

    :cond_c
    return-object v2
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
