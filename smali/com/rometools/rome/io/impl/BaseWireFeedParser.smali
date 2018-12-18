.class public abstract Lcom/rometools/rome/io/impl/BaseWireFeedParser;
.super Ljava/lang/Object;
.source "BaseWireFeedParser.java"

# interfaces
.implements Lcom/rometools/rome/io/WireFeedParser;


# static fields
.field private static final FEED_MODULE_PARSERS_POSFIX_KEY:Ljava/lang/String; = ".feed.ModuleParser.classes"

.field private static final ITEM_MODULE_PARSERS_POSFIX_KEY:Ljava/lang/String; = ".item.ModuleParser.classes"

.field private static final PERSON_MODULE_PARSERS_POSFIX_KEY:Ljava/lang/String; = ".person.ModuleParser.classes"


# instance fields
.field private final feedModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

.field private final itemModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

.field private final namespace:Lorg/jdom2/Namespace;

.field private final personModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->type:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->namespace:Lorg/jdom2/Namespace;

    .line 63
    new-instance p2, Lcom/rometools/rome/io/impl/ModuleParsers;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".feed.ModuleParser.classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/rometools/rome/io/impl/ModuleParsers;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;)V

    iput-object p2, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->feedModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    .line 64
    new-instance p2, Lcom/rometools/rome/io/impl/ModuleParsers;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".item.ModuleParser.classes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p0}, Lcom/rometools/rome/io/impl/ModuleParsers;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;)V

    iput-object p2, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->itemModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    .line 65
    new-instance p2, Lcom/rometools/rome/io/impl/ModuleParsers;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".person.ModuleParser.classes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Lcom/rometools/rome/io/impl/ModuleParsers;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;)V

    iput-object p2, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->personModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    return-void
.end method


# virtual methods
.method protected extractForeignMarkup(Lorg/jdom2/Element;Lcom/rometools/rome/feed/module/Extendable;Lorg/jdom2/Namespace;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Lcom/rometools/rome/feed/module/Extendable;",
            "Lorg/jdom2/Namespace;",
            ")",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    invoke-virtual {p1}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 99
    invoke-virtual {v1}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/jdom2/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/rometools/rome/feed/module/Extendable;->getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object v2

    if-nez v2, :cond_0

    .line 102
    invoke-virtual {v1}, Lorg/jdom2/Element;->clone()Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jdom2/Element;

    .line 108
    invoke-virtual {p2}, Lorg/jdom2/Element;->detach()Lorg/jdom2/Element;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method protected getAttribute(Lorg/jdom2/Element;Ljava/lang/String;)Lorg/jdom2/Attribute;
    .locals 1

    .line 116
    invoke-virtual {p1, p2}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->namespace:Lorg/jdom2/Namespace;

    invoke-virtual {p1, p2, v0}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->getAttribute(Lorg/jdom2/Element;Ljava/lang/String;)Lorg/jdom2/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getStyleSheet(Lorg/jdom2/Document;)Ljava/lang/String;
    .locals 3

    .line 134
    new-instance v0, Lorg/jdom2/filter/ContentFilter;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/jdom2/filter/ContentFilter;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/jdom2/Document;->getContent(Lorg/jdom2/filter/Filter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content;

    .line 135
    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    const-string v1, "text/xsl"

    const-string v2, "type"

    .line 136
    invoke-virtual {v0, v2}, Lorg/jdom2/ProcessingInstruction;->getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "href"

    .line 137
    invoke-virtual {v0, p1}, Lorg/jdom2/ProcessingInstruction;->getPseudoAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected parseFeedModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;
    .locals 1
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

    .line 83
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->feedModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleParsers;->parseModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected parseItemModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;
    .locals 1
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

    .line 87
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->itemModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleParsers;->parseModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected parsePersonModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;
    .locals 1
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

    .line 91
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedParser;->personModuleParsers:Lcom/rometools/rome/io/impl/ModuleParsers;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleParsers;->parseModules(Lorg/jdom2/Element;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
