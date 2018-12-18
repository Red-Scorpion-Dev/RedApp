.class public Lcom/rometools/rome/io/impl/DCModuleParser;
.super Ljava/lang/Object;
.source "DCModuleParser.java"

# interfaces
.implements Lcom/rometools/rome/io/ModuleParser;


# static fields
.field private static final DC_NS:Lorg/jdom2/Namespace;

.field private static final RDF_NS:Lorg/jdom2/Namespace;

.field private static final RDF_URI:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final TAXO_NS:Lorg/jdom2/Namespace;

.field private static final TAXO_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/taxonomy/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://purl.org/dc/elements/1.1/"

    .line 43
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->DC_NS:Lorg/jdom2/Namespace;

    const-string v0, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    .line 44
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->RDF_NS:Lorg/jdom2/Namespace;

    const-string v0, "http://purl.org/rss/1.0/modules/taxonomy/"

    .line 45
    invoke-static {v0}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->TAXO_NS:Lorg/jdom2/Namespace;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getDCNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 53
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->DC_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method private final getRDFNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 57
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->RDF_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method

.method private final getTaxonomyNamespace()Lorg/jdom2/Namespace;
    .locals 1

    .line 61
    sget-object v0, Lcom/rometools/rome/io/impl/DCModuleParser;->TAXO_NS:Lorg/jdom2/Namespace;

    return-object v0
.end method


# virtual methods
.method public final getNamespaceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "http://purl.org/dc/elements/1.1/"

    return-object v0
.end method

.method protected final getTaxonomy(Lorg/jdom2/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "topic"

    .line 185
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getTaxonomyNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "resource"

    .line 187
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/jdom2/Element;->getAttribute(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    invoke-virtual {p1}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public parse(Lorg/jdom2/Element;Ljava/util/Locale;)Lcom/rometools/rome/feed/module/Module;
    .locals 5

    .line 76
    new-instance v0, Lcom/rometools/rome/feed/module/DCModuleImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/module/DCModuleImpl;-><init>()V

    const-string v1, "title"

    .line 78
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 81
    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setTitles(Ljava/util/List;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "creator"

    .line 84
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 87
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setCreators(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_1
    const-string v2, "subject"

    .line 90
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 91
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 93
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseSubjects(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setSubjects(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_2
    const-string v2, "description"

    .line 96
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 97
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setDescriptions(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_3
    const-string v2, "publisher"

    .line 102
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 103
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 105
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setPublishers(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_4
    const-string v2, "contributor"

    .line 108
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 109
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 111
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/rometools/rome/feed/module/DCModule;->setContributors(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_5
    const-string v2, "date"

    .line 114
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 117
    invoke-virtual {p0, v2, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementListDate(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setDates(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_6
    const-string p2, "type"

    .line 120
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 121
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 123
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setTypes(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_7
    const-string p2, "format"

    .line 126
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 127
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 129
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setFormats(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_8
    const-string p2, "identifier"

    .line 132
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 133
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 135
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setIdentifiers(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_9
    const-string p2, "source"

    .line 138
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 139
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 141
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setSources(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_a
    const-string p2, "language"

    .line 144
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 145
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 147
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setLanguages(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_b
    const-string p2, "relation"

    .line 150
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 151
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 153
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setRelations(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_c
    const-string p2, "coverage"

    .line 156
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p2

    .line 157
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 159
    invoke-virtual {p0, p2}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/rometools/rome/feed/module/DCModule;->setCoverages(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_d
    const-string p2, "rights"

    .line 162
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getDCNamespace()Lorg/jdom2/Namespace;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object p1

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    .line 165
    invoke-virtual {p0, p1}, Lcom/rometools/rome/io/impl/DCModuleParser;->parseElementList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setRightsList(Ljava/util/List;)V

    const/4 v1, 0x1

    :cond_e
    if-eqz v1, :cond_f

    return-object v0

    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method protected final parseElementList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 244
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final parseElementListDate(Ljava/util/List;Ljava/util/Locale;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 259
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/rometools/rome/io/impl/DateParser;->parseDate(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected final parseSubjects(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    const-string v2, "Description"

    .line 208
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 212
    invoke-virtual {p0, v2}, Lcom/rometools/rome/io/impl/DCModuleParser;->getTaxonomy(Lorg/jdom2/Element;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    .line 214
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/DCModuleParser;->getRDFNamespace()Lorg/jdom2/Namespace;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/util/List;

    move-result-object v2

    .line 215
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Element;

    .line 217
    new-instance v4, Lcom/rometools/rome/feed/module/DCSubjectImpl;

    invoke-direct {v4}, Lcom/rometools/rome/feed/module/DCSubjectImpl;-><init>()V

    .line 218
    invoke-interface {v4, v1}, Lcom/rometools/rome/feed/module/DCSubject;->setTaxonomyUri(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/rometools/rome/feed/module/DCSubject;->setValue(Ljava/lang/String;)V

    .line 220
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 225
    :cond_1
    new-instance v2, Lcom/rometools/rome/feed/module/DCSubjectImpl;

    invoke-direct {v2}, Lcom/rometools/rome/feed/module/DCSubjectImpl;-><init>()V

    .line 226
    invoke-virtual {v1}, Lorg/jdom2/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/rometools/rome/feed/module/DCSubject;->setValue(Ljava/lang/String;)V

    .line 227
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
