.class public Lcom/rometools/rome/io/impl/RSS094Parser;
.super Lcom/rometools/rome/io/impl/RSS093Parser;
.source "RSS094Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.94"

    .line 32
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS094Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS093Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRSSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.94"

    return-object v0
.end method

.method protected parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 2

    .line 47
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS093Parser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p2

    check-cast p2, Lcom/rometools/rome/feed/rss/Channel;

    const-string v0, "channel"

    .line 49
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "category"

    .line 51
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/rometools/rome/io/impl/RSS094Parser;->parseCategories(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/rometools/rome/feed/rss/Channel;->setCategories(Ljava/util/List;)V

    const-string v0, "ttl"

    .line 54
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/rometools/rome/io/impl/NumberParser;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/rometools/rome/feed/rss/Channel;->setTtl(I)V

    :cond_0
    return-object p2
.end method

.method public parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 3

    .line 68
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS093Parser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object p1

    const/4 p3, 0x0

    .line 70
    invoke-virtual {p1, p3}, Lcom/rometools/rome/feed/rss/Item;->setExpirationDate(Ljava/util/Date;)V

    const-string p3, "author"

    .line 72
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 74
    invoke-virtual {p3}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/rometools/rome/feed/rss/Item;->setAuthor(Ljava/lang/String;)V

    :cond_0
    const-string p3, "guid"

    .line 77
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 80
    new-instance v0, Lcom/rometools/rome/feed/rss/Guid;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Guid;-><init>()V

    const-string v1, "isPermaLink"

    .line 83
    invoke-virtual {p3, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "true"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Guid;->setPermaLink(Z)V

    .line 88
    :cond_1
    invoke-virtual {p3}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/rometools/rome/feed/rss/Guid;->setValue(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setGuid(Lcom/rometools/rome/feed/rss/Guid;)V

    :cond_2
    const-string p3, "comments"

    .line 94
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 96
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Item;->setComments(Ljava/lang/String;)V

    :cond_3
    return-object p1
.end method
