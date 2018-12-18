.class public Lcom/rometools/rome/io/impl/RSS20Parser;
.super Lcom/rometools/rome/io/impl/RSS094Parser;
.source "RSS20Parser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_2.0"

    .line 29
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS20Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS094Parser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private rootElementMatches(Lorg/jdom2/Document;)Z
    .locals 1

    .line 59
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rss"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private versionAbsent(Lorg/jdom2/Document;)Z
    .locals 1

    .line 69
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private versionMatches(Lorg/jdom2/Document;)Z
    .locals 1

    .line 63
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS20Parser;->getRSSVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getRSSVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0"

    return-object v0
.end method

.method protected isHourFormat24(Lorg/jdom2/Element;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS20Parser;->rootElementMatches(Lorg/jdom2/Document;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS20Parser;->versionMatches(Lorg/jdom2/Document;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS20Parser;->versionAbsent(Lorg/jdom2/Document;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2}, Lcom/rometools/rome/io/impl/RSS094Parser;->parseItemDescription(Lorg/jdom2/Element;Lorg/jdom2/Element;)Lcom/rometools/rome/feed/rss/Description;

    move-result-object p1

    return-object p1
.end method
