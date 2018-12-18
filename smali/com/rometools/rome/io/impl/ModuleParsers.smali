.class public Lcom/rometools/rome/io/impl/ModuleParsers;
.super Lcom/rometools/rome/io/impl/PluginManager;
.source "ModuleParsers.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/rometools/rome/io/impl/PluginManager<",
        "Lcom/rometools/rome/io/ModuleParser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/rometools/rome/io/impl/PluginManager;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;Lcom/rometools/rome/io/WireFeedGenerator;)V

    return-void
.end method

.method private hasElementsFrom(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)Z
    .locals 1

    .line 64
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 65
    invoke-virtual {v0}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 66
    invoke-virtual {p2, v0}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getKey(Lcom/rometools/rome/io/ModuleParser;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-interface {p1}, Lcom/rometools/rome/io/ModuleParser;->getNamespaceUri()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 30
    check-cast p1, Lcom/rometools/rome/io/ModuleParser;

    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/ModuleParsers;->getKey(Lcom/rometools/rome/io/ModuleParser;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getModuleNamespaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/ModuleParsers;->getKeys()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parseModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/rometools/rome/io/impl/ModuleParsers;->getPlugins()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/io/ModuleParser;

    .line 49
    invoke-interface {v2}, Lcom/rometools/rome/io/ModuleParser;->getNamespaceUri()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v3}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    .line 51
    invoke-direct {p0, p1, v3}, Lcom/rometools/rome/io/impl/ModuleParsers;->hasElementsFrom(Lorg/jdom2/Element;Lorg/jdom2/Namespace;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    invoke-interface {v2, p1, p2}, Lcom/rometools/rome/io/ModuleParser;->parse(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/module/Module;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    invoke-static {v1}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
