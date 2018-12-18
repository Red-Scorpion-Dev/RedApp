.class public Lcom/rometools/rome/io/impl/RSS091NetscapeParser;
.super Lcom/rometools/rome/io/impl/RSS091UserlandParser;
.source "RSS091NetscapeParser.java"


# static fields
.field static final ELEMENT_NAME:Ljava/lang/String; = "rss"

.field static final PUBLIC_ID:Ljava/lang/String; = "-//Netscape Communications//DTD RSS 0.91//EN"

.field static final SYSTEM_ID:Ljava/lang/String; = "http://my.netscape.com/publish/formats/rss-0.91.dtd"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "rss_0.91N"

    .line 27
    invoke-direct {p0, v0}, Lcom/rometools/rome/io/impl/RSS091NetscapeParser;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/rometools/rome/io/impl/RSS091UserlandParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getTextInputLabel()Ljava/lang/String;
    .locals 1

    const-string v0, "textinput"

    return-object v0
.end method

.method protected isHourFormat24(Lorg/jdom2/Element;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isMyType(Lorg/jdom2/Document;)Z
    .locals 3

    .line 41
    invoke-virtual {p1}, Lorg/jdom2/Document;->getRootElement()Lorg/jdom2/Element;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "version"

    .line 43
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object p1

    const-string v2, "rss"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/RSS091NetscapeParser;->getRSSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "rss"

    .line 47
    invoke-virtual {p1}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-//Netscape Communications//DTD RSS 0.91//EN"

    invoke-virtual {p1}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://my.netscape.com/publish/formats/rss-0.91.dtd"

    invoke-virtual {p1}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
