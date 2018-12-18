.class public Lcom/rometools/rome/io/impl/RSS092Generator;
.super Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;
.source "RSS092Generator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_0.92"

    const-string v1, "0.92"

    .line 38
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkChannelConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 173
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 174
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 175
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkImageConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 180
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "url"

    .line 181
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkItemConstraints(Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method

.method protected checkItemsConstraints(Lorg/jdom2/Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    return-void
.end method

.method protected checkTextInputConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 187
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "name"

    .line 188
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 189
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected generateCategoryElement(Lcom/rometools/rome/feed/rss/Category;)Lorg/jdom2/Element;
    .locals 3

    .line 159
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "category"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 161
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Category;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "domain"

    .line 163
    invoke-virtual {v0, v2, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Category;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected generateCloud(Lcom/rometools/rome/feed/rss/Cloud;)Lorg/jdom2/Element;
    .locals 4

    .line 59
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "cloud"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 61
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Cloud;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "domain"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 66
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Cloud;->getPort()I

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "port"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Cloud;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "path"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 76
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Cloud;->getRegisterProcedure()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 78
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "registerProcedure"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 81
    :cond_3
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Cloud;->getProtocol()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 83
    new-instance v1, Lorg/jdom2/Attribute;

    const-string v2, "protocol"

    invoke-direct {v1, v2, p1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    :cond_4
    return-object v0
.end method

.method protected generateEnclosure(Lcom/rometools/rome/feed/rss/Enclosure;)Lorg/jdom2/Element;
    .locals 6

    .line 137
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "enclosure"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 139
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Enclosure;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "url"

    .line 141
    invoke-virtual {v0, v2, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Enclosure;->getLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    const-string v3, "length"

    .line 146
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 149
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Enclosure;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "type"

    .line 151
    invoke-virtual {v0, v1, p1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    :cond_2
    return-object v0
.end method

.method protected generateSourceElement(Lcom/rometools/rome/feed/rss/Source;)Lorg/jdom2/Element;
    .locals 4

    .line 123
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "source"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS092Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 125
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Source;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "url"

    invoke-direct {v2, v3, v1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Source;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected getNumberOfEnclosures(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Enclosure;",
            ">;)I"
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 50
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getCloud()Lcom/rometools/rome/feed/rss/Cloud;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/RSS092Generator;->generateCloud(Lcom/rometools/rome/feed/rss/Cloud;)Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_0
    return-void
.end method

.method protected populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 2

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS091UserlandGenerator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    .line 104
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getSource()Lcom/rometools/rome/feed/rss/Source;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {p0, p3}, Lcom/rometools/rome/io/impl/RSS092Generator;->generateSourceElement(Lcom/rometools/rome/feed/rss/Source;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 109
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getEnclosures()Ljava/util/List;

    move-result-object p3

    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0, p3}, Lcom/rometools/rome/io/impl/RSS092Generator;->getNumberOfEnclosures(Ljava/util/List;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 111
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/rss/Enclosure;

    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/RSS092Generator;->generateEnclosure(Lcom/rometools/rome/feed/rss/Enclosure;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getCategories()Ljava/util/List;

    move-result-object p1

    .line 115
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/rometools/rome/feed/rss/Category;

    .line 116
    invoke-virtual {p0, p3}, Lcom/rometools/rome/io/impl/RSS092Generator;->generateCategoryElement(Lcom/rometools/rome/feed/rss/Category;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    :cond_2
    return-void
.end method
