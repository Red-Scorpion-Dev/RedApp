.class public Lcom/rometools/rome/io/impl/DCModuleGenerator;
.super Ljava/lang/Object;
.source "DCModuleGenerator.java"

# interfaces
.implements Lcom/rometools/rome/io/ModuleGenerator;


# static fields
.field private static final DC_NS:Lorg/jdom2/Namespace;

.field private static final DC_URI:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field private static final NAMESPACES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private static final RDF_NS:Lorg/jdom2/Namespace;

.field private static final RDF_URI:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final TAXO_NS:Lorg/jdom2/Namespace;

.field private static final TAXO_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/taxonomy/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "dc"

    const-string v1, "http://purl.org/dc/elements/1.1/"

    .line 46
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->DC_NS:Lorg/jdom2/Namespace;

    const-string v0, "taxo"

    const-string v1, "http://purl.org/rss/1.0/modules/taxonomy/"

    .line 47
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->TAXO_NS:Lorg/jdom2/Namespace;

    const-string v0, "rdf"

    const-string v1, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 48
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->RDF_NS:Lorg/jdom2/Namespace;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    sget-object v1, Lcom/rometools/rome/io/impl/DCModuleGenerator;->DC_NS:Lorg/jdom2/Namespace;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/rometools/rome/io/impl/DCModuleGenerator;->TAXO_NS:Lorg/jdom2/Namespace;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/rometools/rome/io/impl/DCModuleGenerator;->RDF_NS:Lorg/jdom2/Namespace;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->NAMESPACES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDCNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 66
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->DC_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method private final getRDFNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 70
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->RDF_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method private final getTaxonomyNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 74
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->TAXO_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method


# virtual methods
.method public final generate(Lcom/rometools/rome/feed/module/Module;Lorg/jdom2/Element;)V
    .locals 4

    .line 101
    check-cast p1, Lcom/rometools/rome/feed/module/DCModule;

    .line 103
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "title"

    .line 105
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getTitles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 108
    :cond_0
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getCreator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "creator"

    .line 110
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getCreators()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 113
    :cond_1
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getSubjects()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/module/DCSubject;

    .line 115
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSubjectElement(Lcom/rometools/rome/feed/module/DCSubject;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 118
    :cond_2
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "description"

    .line 120
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getDescriptions()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 123
    :cond_3
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getPublisher()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "publisher"

    .line 125
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getPublishers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 128
    :cond_4
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getContributors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "contributor"

    .line 130
    invoke-virtual {p0, v1, v0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 133
    :cond_5
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 135
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const-string v2, "date"

    .line 136
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v3}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_1

    .line 140
    :cond_6
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v0, "type"

    .line 142
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 145
    :cond_7
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getFormat()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "format"

    .line 147
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getFormats()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 150
    :cond_8
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v0, "identifier"

    .line 152
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getIdentifiers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 155
    :cond_9
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getSource()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v0, "source"

    .line 157
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getSources()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 160
    :cond_a
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getLanguage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v0, "language"

    .line 162
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getLanguages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 165
    :cond_b
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getRelation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    const-string v0, "relation"

    .line 167
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getRelations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 170
    :cond_c
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getCoverage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v0, "coverage"

    .line 172
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getCoverages()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    .line 175
    :cond_d
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getRights()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "rights"

    .line 177
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCModule;->getRightsList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jdom2/Element;->addContent(Ljava/util/Collection;)Lorg/jdom2/Element;

    :cond_e
    return-void
.end method

.method protected final generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;
    .locals 2

    .line 230
    new-instance v0, Lorg/jdom2/Element;

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 231
    invoke-virtual {v0, p2}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    return-object v0
.end method

.method protected final generateSimpleElementList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    invoke-virtual {p0, p1, v1}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->generateSimpleElement(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final generateSubjectElement(Lcom/rometools/rome/feed/module/DCSubject;)Lorg/jdom2/Element;
    .locals 5

    .line 191
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "subject"

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 193
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCSubject;->getTaxonomyUri()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/DCSubject;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_1

    .line 198
    new-instance v2, Lorg/jdom2/Attribute;

    const-string v3, "resource"

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/jdom2/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 200
    new-instance v1, Lorg/jdom2/Element;

    const-string v3, "topic"

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getTaxonomyNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 201
    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->setAttribute(Lorg/jdom2/Attribute;)Lorg/jdom2/Element;

    .line 203
    new-instance v2, Lorg/jdom2/Element;

    const-string v3, "Description"

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 204
    invoke-virtual {v2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    if-eqz p1, :cond_0

    .line 207
    new-instance v1, Lorg/jdom2/Element;

    const-string v3, "value"

    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleGenerator;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 208
    invoke-virtual {v1, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 209
    invoke-virtual {v2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 212
    :cond_0
    invoke-virtual {v0, v2}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    :goto_0
    return-object v0
.end method

.method public final getNamespaceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "http://purl.org/dc/elements/1.1/"

    return-object v0
.end method

.method public final getNamespaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleGenerator;->NAMESPACES:Ljava/util/Set;

    return-object v0
.end method
