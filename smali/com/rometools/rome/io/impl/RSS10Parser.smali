.class public Lcom/rometools/rome/io/impl/RSS10Parser;
.super Lcom/rometools/rome/io/impl/RSS090Parser;
.source "RSS10Parser.java"


# static fields
.field private static final RSS_NS:Lorg/jdom2/Namespace;

.field private static final RSS_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/"

    .line 34
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/RSS10Parser;->RSS_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "rss_1.0"

    .line 37
    sget-object v1, Lcom/rometools/rome/io/impl/RSS10Parser;->RSS_NS:Lorg/jdom2/Namespace;

    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/io/impl/RSS10Parser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    return-void
.end method


# virtual methods
.method protected getRSSNamespace()Lorg/jdom2/Namespace;
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/"

    .line 69
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 2

    .line 56
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "channel"

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;
    .locals 2

    .line 112
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseChannel(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p2

    check-cast p2, Lcom/rometools/rome/feed/rss/Channel;

    const-string v0, "channel"

    .line 114
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "about"

    .line 115
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p2, p1}, Lcom/rometools/rome/feed/rss/Channel;->setUri(Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method protected parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 2

    .line 86
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS090Parser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object p3

    const-string v0, "description"

    .line 88
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/rometools/rome/io/impl/RSS10Parser;->parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/rometools/rome/feed/rss/Item;->setDescription(Lcom/rometools/rome/feed/rss/Description;)V

    :cond_0
    const-string p1, "encoded"

    .line 93
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getContentNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 95
    new-instance v0, Lcom/rometools/rome/feed/rss/Content;

    invoke-direct {v0}, Lcom/rometools/rome/feed/rss/Content;-><init>()V

    const-string v1, "html"

    .line 96
    invoke-virtual {v0, v1}, Lcom/rometools/rome/feed/rss/Content;->setType(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/rss/Content;->setValue(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3, v0}, Lcom/rometools/rome/feed/rss/Item;->setContent(Lcom/rometools/rome/feed/rss/Content;)V

    :cond_1
    const-string p1, "about"

    .line 101
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS10Parser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p3, p1}, Lcom/rometools/rome/feed/rss/Item;->setUri(Ljava/lang/String;)V

    :cond_2
    return-object p3
.end method

.method protected parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;
    .locals 1

    .line 124
    new-instance p1, Lcom/rometools/rome/feed/rss/Description;

    invoke-direct {p1}, Lcom/rometools/rome/feed/rss/Description;-><init>()V

    const-string v0, "text/plain"

    .line 125
    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Description;->setType(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/rometools/rome/feed/rss/Description;->setValue(Ljava/lang/String;)V

    return-object p1
.end method
