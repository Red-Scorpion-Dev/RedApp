.class public Lcom/rometools/rome/io/impl/RSS094Generator;
.super Lcom/rometools/rome/io/impl/RSS093Generator;
.source "RSS094Generator.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_0.94"

    const-string v1, "0.94"

    .line 33
    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS094Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS093Generator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V
    .locals 2

    .line 42
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS093Generator;->populateItem(Lcom/rometools/rome/feed/rss/Item;Lorg/jdom2/Element;I)V

    .line 44
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getDescription()Lcom/rometools/rome/feed/rss/Description;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Description;->getType()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string p3, "description"

    .line 46
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p3

    .line 47
    new-instance v0, Lorg/jdom2/Attribute;

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Description;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    :cond_0
    const-string p1, "expirationDate"

    .line 49
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS094Generator;->getFeedNamespace()Lorg/jdom2/Namespace;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lorg/jdom2/Element;->removeChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Z

    return-void
.end method
