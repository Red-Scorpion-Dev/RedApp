.class public Lcom/rometools/rome/io/impl/RSS10Generator;
.super Lcom/rometools/rome/io/impl/RSS090Generator;
.source "RSS10Generator.java"


# static fields
.field private static final RSS_NS:Lorg/jdom2/Namespace;

.field private static final RSS_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/"

    .line 37
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS10Generator;->RSS_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_1.0"

    .line 40
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS090Generator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS090Generator;-><init>(Ljava/lang/String;)V

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

    .line 107
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 108
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 109
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

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

    .line 114
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "url"

    .line 115
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 116
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected checkItemConstraints(Lorg/jdom2/Element;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/rometools/rome/io/FeedException;
        }
    .end annotation

    const-string v0, "title"

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 133
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 134
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

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

    .line 121
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "description"

    .line 122
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "name"

    .line 123
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    const-string v0, "link"

    .line 124
    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/rometools/rome/io/impl/RSS10Generator;->checkNotNullAndLength(Lorg/jdom2/Element;Ljava/lang/String;II)V

    return-void
.end method

.method protected getFeedNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 49
    sget-object v0, Lcom/rometools/rome/io/impl/RSS10Generator;->RSS_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method protected populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V
    .locals 6

    .line 55
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateChannel(Lcom/rometools/rome/feed/rss/Channel;Lorg/jdom2/Element;)V

    .line 57
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "about"

    .line 59
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p2, v1, v0, v2}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Channel;->getItems()Ljava/util/List;

    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 64
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "items"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 65
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "Seq"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 66
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/feed/rss/Item;

    .line 67
    new-instance v3, Lorg/jdom2/Element;

    const-string v4, "li"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 68
    invoke-virtual {v2}, Lcom/rometools/rome/feed/rss/Item;->getUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "resource"

    .line 70
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 72
    :cond_1
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 75
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_3
    return-void
.end method

.method protected populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 2

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS090Generator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    .line 84
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getLink()Ljava/lang/String;

    move-result-object p3

    .line 85
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p3, "about"

    .line 87
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, p3, v0, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "about"

    .line 89
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, p3, v1}, Lorg/jdom2/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    .line 92
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getDescription()Lcom/rometools/rome/feed/rss/Description;

    move-result-object p3

    if-eqz p3, :cond_2

    const-string v0, "description"

    .line 94
    invoke-virtual {p3}, Lcom/rometools/rome/feed/rss/Description;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/rometools/rome/io/impl/RSS10Generator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object p3

    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/rometools/rome/feed/rss/Item;->getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getContent()Lcom/rometools/rome/feed/rss/Content;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 98
    new-instance p3, Lorg/jdom2/Element;

    const-string v0, "encoded"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Generator;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {p3, v0, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 99
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getContent()Lcom/rometools/rome/feed/rss/Content;

    move-result-object p1

    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Content;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 100
    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_3
    return-void
.end method
