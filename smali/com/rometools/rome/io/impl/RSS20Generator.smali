.class public Lcom/rometools/rome/io/impl/RSS20Generator;
.super Lcom/rometools/rome/io/impl/RSS094Generator;
.source "RSS20Generator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_2.0"

    const-string v1, "2.0"

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS20Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS094Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 2

    .line 45
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS094Generator;->populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 47
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getGenerator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "generator"

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getTtl()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    const-string v1, "ttl"

    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getCategories()Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/rss/Category;

    .line 59
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateCategoryElement(Lcom/rometools/rome/feed/rss/Category;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getForeignMarkup()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V

    return-void
.end method

.method public populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 1

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS094Generator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    const-string p3, "description"

    .line 71
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS20Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v0, "type"

    .line 73
    invoke-virtual {p3, v0}, Lorg/jdom2/Element;->removeAttribute(Ljava/lang/String;)Z

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getAuthor()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string v0, "author"

    .line 78
    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getComments()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "comments"

    .line 83
    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getGuid()Lcom/rometools/rome/feed/rss/Guid;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p3, "guid"

    .line 88
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Guid;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/rometools/rome/io/impl/RSS20Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    .line 89
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Guid;->isPermaLink()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "isPermaLink"

    const-string v0, "false"

    .line 90
    invoke-virtual {p3, p1, v0}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    .line 92
    :cond_3
    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_4
    return-void
.end method
