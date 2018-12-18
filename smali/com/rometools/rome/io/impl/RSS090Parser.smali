.class public Lcom/rometools/rome/io/impl/RSS090Parser;
.super Lcom/rometools/rome/io/impl/BaseWireFeedParser;
.source "RSS090Parser.java"


# static fields
.field private static final CONTENT_NS:Lorg/jdom2/Namespace;

.field private static final CONTENT_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/content/"

.field private static final RDF_NS:Lorg/jdom2/Namespace;

.field private static final RDF_URI:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final RSS_NS:Lorg/jdom2/Namespace;

.field private static final RSS_URI:Ljava/lang/String; = "http://my.netscape.com/rdf/simple/0.9/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 42
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->RDF_NS:Lorg/jdom2/Namespace;

    const-string v0, "http://my.netscape.com/rdf/simple/0.9/"

    .line 43
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->RSS_NS:Lorg/jdom2/Namespace;

    const-string v0, "http://purl.org/rss/1.0/modules/content/"

    .line 44
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->CONTENT_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_0.9"

    .line 47
    sget-object v1, Lcom/rometools/rome/io/impl/RSS090Parser;->RSS_NS:Lorg/jdom2/Namespace;

    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS090Parser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/BaseWireFeedParser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method


# virtual methods
.method protected getContentNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 127
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->CONTENT_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getImage(Lorg/jdom2/Element;)Lorg/jdom2/Element;
    .locals 2

    const-string v0, "image"

    .line 212
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    return-object p1
.end method

.method protected getItems(Lorg/jdom2/Element;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    .line 202
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getRDFNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 115
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->RDF_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getRSSNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 102
    sget-object v0, Lcom/rometools/rome/io/impl/RSS090Parser;->RSS_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected getTextInput(Lorg/jdom2/Element;)Lorg/jdom2/Element;
    .locals 2

    const-string v0, "textinput"

    .line 222
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    return-object p1
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 2

    .line 57
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Namespace;

    .line 64
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
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

    .line 78
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->validateFeed(Lorg/jdom2/Document;)V

    .line 81
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1, p3}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    return-object p1
.end method

.method protected parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 5

    .line 144
    new-instance v0, Lcom/rometools/rome/feed/rss/Channel;

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Lorg/jdom2/Element;->getDocument()Lorg/jdom2/Document;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/RSS090Parser;->getStyleSheet(Lorg/jdom2/Document;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Channel;->setStyleSheet(Ljava/lang/String;)V

    const-string v1, "channel"

    .line 147
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    const-string v2, "title"

    .line 149
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setTitle(Ljava/lang/String;)V

    :cond_0
    const-string v2, "link"

    .line 154
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 156
    invoke-virtual {v2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setLink(Ljava/lang/String;)V

    :cond_1
    const-string v2, "description"

    .line 159
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setDescription(Ljava/lang/String;)V

    .line 164
    :cond_2
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseImage(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setImage(Lcom/rometools/rome/feed/rss/Image;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseTextInput(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/TextInput;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setTextInput(Lcom/rometools/rome/feed/rss/TextInput;)V

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseFeedModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v3

    .line 173
    invoke-virtual {p0, v1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseFeedModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 176
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v4, :cond_4

    .line 180
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    :cond_4
    invoke-virtual {v0, v2}, Lcom/rometools/rome/feed/rss/Channel;->setModules(Ljava/util/List;)V

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseItems(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setItems(Ljava/util/List;)V

    .line 186
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 187
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 188
    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Channel;->setForeignMarkup(Ljava/util/List;)V

    :cond_5
    return-object v0
.end method

.method protected parseImage(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Image;
    .locals 3

    .line 238
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->getImage(Lorg/jdom2/Element;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 241
    new-instance v0, Lcom/rometools/rome/feed/rss/Image;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Image;-><init>()V

    const-string v1, "title"

    .line 243
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setTitle(Ljava/lang/String;)V

    :cond_0
    const-string v1, "url"

    .line 248
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 250
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Image;->setUrl(Ljava/lang/String;)V

    :cond_1
    const-string v1, "link"

    .line 253
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 255
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Image;->setLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method protected parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 3

    .line 295
    new-instance p1, Lcom/rometools/rome/feed/rss/Item;

    invoke-direct {p1}, Lcom/rometools/rome/feed/rss/Item;-><init>()V

    const-string v0, "title"

    .line 297
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setTitle(Ljava/lang/String;)V

    :cond_0
    const-string v0, "link"

    .line 302
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/rometools/rome/feed/rss/Item;->setLink(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setUri(Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseItemModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/rometools/rome/feed/rss/Item;->setModules(Ljava/util/List;)V

    .line 310
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/rometools/rome/io/impl/RSS090Parser;->extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 314
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 315
    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 317
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    .line 318
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "encoded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 324
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 325
    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Item;->setForeignMarkup(Ljava/util/List;)V

    :cond_4
    return-object p1
.end method

.method protected parseItems(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->getItems(Lorg/jdom2/Element;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 278
    invoke-virtual {p0, p1, v2, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected parseTextInput(Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/TextInput;
    .locals 3

    .line 344
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Parser;->getTextInput(Lorg/jdom2/Element;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 347
    new-instance v0, Lcom/rometools/rome/feed/rss/TextInput;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/TextInput;-><init>()V

    const-string v1, "title"

    .line 349
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/TextInput;->setTitle(Ljava/lang/String;)V

    :cond_0
    const-string v1, "description"

    .line 354
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 356
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/TextInput;->setDescription(Ljava/lang/String;)V

    :cond_1
    const-string v1, "name"

    .line 359
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/TextInput;->setName(Ljava/lang/String;)V

    :cond_2
    const-string v1, "link"

    .line 364
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS090Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 366
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/TextInput;->setLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return-object v0
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
