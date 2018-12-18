.class public Lcom/rometools/rome/io/impl/SyModuleGenerator;
.super Ljava/lang/Object;
.source "SyModuleGenerator.java"

# interfaces
.implements Lcom/rometools/rome/io/ModuleGenerator;


# static fields
.field private static final NAMESPACES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation
.end field

.field private static final SY_NS:Lorg/jdom2/Namespace;

.field private static final SY_URI:Ljava/lang/String; = "http://purl.org/rss/1.0/modules/syndication/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sy"

    const-string v1, "http://purl.org/rss/1.0/modules/syndication/"

    .line 39
    invoke-static {v0, v1}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/SyModuleGenerator;->SY_NS:Lorg/jdom2/Namespace;

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    sget-object v1, Lcom/rometools/rome/io/impl/SyModuleGenerator;->SY_NS:Lorg/jdom2/Namespace;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/io/impl/SyModuleGenerator;->NAMESPACES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generate(Lcom/rometools/rome/feed/module/Module;Lorg/jdom2/Element;)V
    .locals 4

    .line 71
    check-cast p1, Lcom/rometools/rome/feed/module/SyModule;

    .line 73
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/SyModule;->getUpdatePeriod()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v1, Lorg/jdom2/Element;

    const-string v2, "updatePeriod"

    sget-object v3, Lcom/rometools/rome/io/impl/SyModuleGenerator;->SY_NS:Lorg/jdom2/Namespace;

    invoke-direct {v1, v2, v3}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 76
    invoke-virtual {v1, v0}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 77
    invoke-virtual {p2, v1}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 80
    :cond_0
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "updateFrequency"

    sget-object v2, Lcom/rometools/rome/io/impl/SyModuleGenerator;->SY_NS:Lorg/jdom2/Namespace;

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 81
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/SyModule;->getUpdateFrequency()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 82
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 84
    invoke-interface {p1}, Lcom/rometools/rome/feed/module/SyModule;->getUpdateBase()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    new-instance v0, Lorg/jdom2/Element;

    const-string v1, "updateBase"

    sget-object v2, Lcom/rometools/rome/io/impl/SyModuleGenerator;->SY_NS:Lorg/jdom2/Namespace;

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Element;-><init>(Ljava/lang/String;Lorg/jdom2/Namespace;)V

    .line 87
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1, v1}, Lcom/rometools/rome/io/impl/DateParser;->formatW3CDateTime(Ljava/util/Date;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jdom2/Element;->addContent(Ljava/lang/String;)Lorg/jdom2/Element;

    .line 88
    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    :cond_1
    return-void
.end method

.method public getNamespaceUri()Ljava/lang/String;
    .locals 1

    const-string v0, "http://purl.org/rss/1.0/modules/syndication/"

    return-object v0
.end method

.method public getNamespaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/jdom2/Namespace;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/rometools/rome/io/impl/SyModuleGenerator;->NAMESPACES:Ljava/util/Set;

    return-object v0
.end method
