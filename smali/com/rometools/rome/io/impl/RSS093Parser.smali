.class public Lcom/rometools/rome/io/impl/RSS093Parser;
.super Lcom/rometools/rome/io/impl/RSS092Parser;
.source "RSS093Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.93"

    .line 28
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS093Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS092Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getRSSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "0.93"

    return-object v0
.end method

.method protected parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;
    .locals 2

    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/rometools/rome/io/impl/RSS092Parser;->parseItem(Lorg/jdom2/Element;Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/rss/Item;

    move-result-object p1

    const-string v0, "pubDate"

    .line 45
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS093Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/rometools/rome/feed/rss/Item;->setPubDate(Ljava/util/Date;)V

    :cond_0
    const-string v0, "expirationDate"

    .line 50
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS093Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/rometools/rome/feed/rss/Item;->setExpirationDate(Ljava/util/Date;)V

    :cond_1
    const-string p3, "description"

    .line 55
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS093Parser;->getRSSNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "type"

    .line 57
    invoke-virtual {p2, p3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/rometools/rome/feed/rss/Item;->getDescription()Lcom/rometools/rome/feed/rss/Description;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/rometools/rome/feed/rss/Description;->setType(Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method
