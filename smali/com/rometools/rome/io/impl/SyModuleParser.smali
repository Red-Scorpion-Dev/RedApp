.class public Lcom/rometools/rome/io/impl/SyModuleParser;
.super Ljava/lang/Object;
.source "SyModuleParser.java"

# interfaces
.implements Lcom/rometools/rome/io/ModuleParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDCNamespace()Lorg/jdom2/Namespace;
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/modules/syndication/"

    .line 37
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/modules/syndication/"

    return-object v0
.end method

.method public parse(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/module/Module;
    .locals 5

    .line 45
    new-instance v0, Lcom/rometools/rome/feed/module/SyModuleImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/module/SyModuleImpl;-><init>()V

    const-string v1, "updatePeriod"

    .line 47
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/SyModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/SyModule;->setUpdatePeriod(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "updateFrequency"

    .line 53
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/SyModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 56
    invoke-virtual {v3}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/SyModule;->setUpdateFrequency(I)V

    const/4 v1, 0x1

    :cond_1
    const-string v3, "updateBase"

    .line 59
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/SyModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {p1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/SyModule;->setUpdateBase(Ljava/util/Date;)V

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method
