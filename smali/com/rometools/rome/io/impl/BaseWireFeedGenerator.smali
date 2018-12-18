.class public abstract Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;
.super Ljava/lang/Object;
.source "BaseWireFeedGenerator.java"

# interfaces
.implements Lcom/rometools/rome/io/WireFeedGenerator;


# static fields
.field private static final FEED_MODULE_GENERATORS_POSFIX_KEY:Ljava/lang/String; = ".feed.ModuleGenerator.classes"

.field private static final ITEM_MODULE_GENERATORS_POSFIX_KEY:Ljava/lang/String; = ".item.ModuleGenerator.classes"

.field private static final PERSON_MODULE_GENERATORS_POSFIX_KEY:Ljava/lang/String; = ".person.ModuleGenerator.classes"


# instance fields
.field private final allModuleNamespaces:[Lorg/jdom2/Namespace;

.field private final feedModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

.field private final itemModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

.field private final personModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

.field private final type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->type:Ljava/lang/String;

    .line 57
    new-instance v0, Lcom/rometools/rome/io/impl/ModuleGenerators;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".feed.ModuleGenerator.classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/io/impl/ModuleGenerators;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;)V

    iput-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->feedModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    .line 58
    new-instance v0, Lcom/rometools/rome/io/impl/ModuleGenerators;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".item.ModuleGenerator.classes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/io/impl/ModuleGenerators;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;)V

    iput-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->itemModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    .line 59
    new-instance v0, Lcom/rometools/rome/io/impl/ModuleGenerators;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".person.ModuleGenerator.classes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/rometools/rome/io/impl/ModuleGenerators;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;)V

    iput-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->personModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    .line 61
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->feedModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0}, Lcom/rometools/rome/io/impl/ModuleGenerators;->getAllNamespaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 64
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->itemModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0}, Lcom/rometools/rome/io/impl/ModuleGenerators;->getAllNamespaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 68
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->personModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0}, Lcom/rometools/rome/io/impl/ModuleGenerators;->getAllNamespaces()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Namespace;

    .line 72
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 75
    :cond_2
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jdom2/Namespace;

    iput-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->allModuleNamespaces:[Lorg/jdom2/Namespace;

    .line 77
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->allModuleNamespaces:[Lorg/jdom2/Namespace;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private static collectUsedPrefixes(Lorg/jdom2/Element;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    invoke-virtual {p0}, Lorg/jdom2/Element;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 156
    invoke-static {v0, p1}, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->collectUsedPrefixes(Lorg/jdom2/Element;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static purgeUnusedNamespaceDeclarations(Lorg/jdom2/Element;)V
    .locals 5

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    invoke-static {p0, v0}, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->collectUsedPrefixes(Lorg/jdom2/Element;Ljava/util/Set;)V

    .line 131
    invoke-virtual {p0}, Lorg/jdom2/Element;->getAdditionalNamespaces()Ljava/util/List;

    move-result-object v1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 138
    invoke-virtual {v2}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    invoke-virtual {p0, v2}, Lorg/jdom2/Element;->removeNamespaceDeclaration(Lorg/jdom2/Namespace;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected generateFeedModules(Ljava/util/List;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;",
            "Lorg/jdom2/Element;",
            ")V"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->feedModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleGenerators;->generateModules(Ljava/util/List;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected generateForeignMarkup(Lorg/jdom2/Element;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/Element;",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 106
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Element;

    .line 107
    invoke-virtual {v0}, Lorg/jdom2/Element;->getParent()Lorg/jdom2/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    invoke-interface {v1, v0}, Lorg/jdom2/Parent;->removeContent(Lorg/jdom2/Content;)Z

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public generateItemModules(Ljava/util/List;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;",
            "Lorg/jdom2/Element;",
            ")V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->itemModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleGenerators;->generateModules(Ljava/util/List;Lorg/jdom2/Element;)V

    return-void
.end method

.method protected generateModuleNamespaceDefs(Lorg/jdom2/Element;)V
    .locals 4

    .line 87
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->allModuleNamespaces:[Lorg/jdom2/Namespace;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 88
    invoke-virtual {p1, v3}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public generatePersonModules(Ljava/util/List;Lorg/jdom2/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;",
            "Lorg/jdom2/Element;",
            ")V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->personModuleGenerators:Lcom/rometools/rome/io/impl/ModuleGenerators;

    invoke-virtual {v0, p1, p2}, Lcom/rometools/rome/io/impl/ModuleGenerators;->generateModules(Ljava/util/List;Lorg/jdom2/Element;)V

    return-void
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/rometools/rome/io/impl/BaseWireFeedGenerator;->type:Ljava/lang/String;

    return-object v0
.end method
