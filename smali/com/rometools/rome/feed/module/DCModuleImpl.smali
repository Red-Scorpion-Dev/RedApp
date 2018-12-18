.class public Lcom/rometools/rome/feed/module/DCModuleImpl;
.super Lcom/rometools/rome/feed/module/ModuleImpl;
.source "DCModuleImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/DCModule;


# static fields
.field public static final CONVENIENCE_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

.field private static final IGNORE_PROPERTIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contributors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private coverage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private creator:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private identifier:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private publisher:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private relation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subject:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    .line 70
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->CONVENIENCE_PROPERTIES:Ljava/util/Set;

    .line 73
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "title"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "creator"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "description"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "publisher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "contributor"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "date"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "format"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "identifier"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "source"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "language"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "relation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "coverage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/rometools/rome/feed/module/DCModuleImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "rights"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 916
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "titles"

    .line 917
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "creators"

    .line 918
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "subjects"

    .line 919
    const-class v2, Lcom/rometools/rome/feed/module/DCSubject;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "descriptions"

    .line 920
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "publishers"

    .line 921
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "contributors"

    .line 922
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dates"

    .line 923
    const-class v2, Ljava/util/Date;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "types"

    .line 924
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "formats"

    .line 925
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "identifiers"

    .line 926
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sources"

    .line 927
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "languages"

    .line 928
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "relations"

    .line 929
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coverages"

    .line 930
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rightsList"

    .line 931
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 934
    const-class v2, Lcom/rometools/rome/feed/module/DCSubject;

    const-class v3, Lcom/rometools/rome/feed/module/DCSubjectImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    new-instance v2, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    const-class v3, Lcom/rometools/rome/feed/module/DCModule;

    invoke-direct {v2, v3, v0, v1}, Lcom/rometools/rome/feed/impl/CopyFromHelper;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v2, Lcom/rometools/rome/feed/module/DCModuleImpl;->COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 91
    const-class v0, Lcom/rometools/rome/feed/module/DCModule;

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/feed/module/ModuleImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    const-class v1, Lcom/rometools/rome/feed/module/DCModule;

    sget-object v2, Lcom/rometools/rome/feed/module/DCModuleImpl;->CONVENIENCE_PROPERTIES:Ljava/util/Set;

    invoke-direct {v0, v1, p0, v2}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 860
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 874
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->contributors:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->contributors:Ljava/util/List;

    return-object v0
.end method

.method public getCoverage()Ljava/lang/String;
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->coverage:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCoverages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->coverage:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->coverage:Ljava/util/List;

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->creator:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCreators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->creator:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->creator:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->date:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->date:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->date:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->description:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->description:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->description:Ljava/util/List;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->format:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 508
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->format:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->format:Ljava/util/List;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->identifier:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->identifier:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->identifier:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->language:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->language:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->language:Ljava/util/List;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->publisher:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublishers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->publisher:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->publisher:Ljava/util/List;

    return-object v0
.end method

.method public getRelation()Ljava/lang/String;
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->relation:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRelations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->relation:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->relation:Ljava/util/List;

    return-object v0
.end method

.method public getRights()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->rights:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getRightsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->rights:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->rights:Ljava/util/List;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->source:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 609
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->source:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->source:Ljava/util/List;

    return-object v0
.end method

.method public getSubjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->subject:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->subject:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->title:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->title:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->title:Ljava/util/List;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->type:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->firstEntry(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->type:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->type:Ljava/util/List;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setContributors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 371
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->contributors:Ljava/util/List;

    return-void
.end method

.method public setCoverages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->coverage:Ljava/util/List;

    return-void
.end method

.method public setCreator(Ljava/lang/String;)V
    .locals 0

    .line 192
    invoke-static {p1}, Lcom/rometools/utils/Lists;->create(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->creator:Ljava/util/List;

    return-void
.end method

.method public setCreators(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->creator:Ljava/util/List;

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 446
    invoke-static {p1}, Lcom/rometools/utils/Lists;->create(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->date:Ljava/util/List;

    return-void
.end method

.method public setDates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 421
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->date:Ljava/util/List;

    return-void
.end method

.method public setDescriptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->description:Ljava/util/List;

    return-void
.end method

.method public setFormats(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 521
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->format:Ljava/util/List;

    return-void
.end method

.method public setIdentifiers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 572
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->identifier:Ljava/util/List;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 697
    invoke-static {p1}, Lcom/rometools/utils/Lists;->create(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->language:Ljava/util/List;

    return-void
.end method

.method public setLanguages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 672
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->language:Ljava/util/List;

    return-void
.end method

.method public setPublishers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 320
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->publisher:Ljava/util/List;

    return-void
.end method

.method public setRelations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 722
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->relation:Ljava/util/List;

    return-void
.end method

.method public setRights(Ljava/lang/String;)V
    .locals 0

    .line 847
    invoke-static {p1}, Lcom/rometools/utils/Lists;->create(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->rights:Ljava/util/List;

    return-void
.end method

.method public setRightsList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 822
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->rights:Ljava/util/List;

    return-void
.end method

.method public setSources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->source:Ljava/util/List;

    return-void
.end method

.method public setSubjects(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/DCSubject;",
            ">;)V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->subject:Ljava/util/List;

    return-void
.end method

.method public setTitles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->title:Ljava/util/List;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->type:Ljava/util/List;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/rometools/rome/feed/module/DCModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
