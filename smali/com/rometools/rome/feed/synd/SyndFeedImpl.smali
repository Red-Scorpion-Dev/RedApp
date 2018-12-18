.class public Lcom/rometools/rome/feed/synd/SyndFeedImpl;
.super Ljava/lang/Object;
.source "SyndFeedImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndFeed;
.implements Ljava/io/Serializable;


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

.field private static final CONVERTERS:Lcom/rometools/rome/feed/synd/impl/Converters;

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
.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation
.end field

.field private contributors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lcom/rometools/rome/feed/synd/SyndContent;

.field private docs:Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation
.end field

.field private feedType:Ljava/lang/String;

.field private foreignMarkup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation
.end field

.field private generator:Ljava/lang/String;

.field private icon:Lcom/rometools/rome/feed/synd/SyndImage;

.field private image:Lcom/rometools/rome/feed/synd/SyndImage;

.field private link:Ljava/lang/String;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;"
        }
    .end annotation
.end field

.field private managingEditor:Ljava/lang/String;

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private preserveWireFeed:Z

.field private styleSheet:Ljava/lang/String;

.field private title:Lcom/rometools/rome/feed/synd/SyndContent;

.field private uri:Ljava/lang/String;

.field private webMaster:Ljava/lang/String;

.field private wireFeed:Lcom/rometools/rome/feed/WireFeed;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 81
    new-instance v0, Lcom/rometools/rome/feed/synd/impl/Converters;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/impl/Converters;-><init>()V

    sput-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->CONVERTERS:Lcom/rometools/rome/feed/synd/impl/Converters;

    .line 83
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    .line 92
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->CONVENIENCE_PROPERTIES:Ljava/util/Set;

    .line 96
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "publishedDate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "author"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "categories"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    const-string v1, "language"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "feedType"

    .line 103
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encoding"

    .line 104
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uri"

    .line 105
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "title"

    .line 106
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "link"

    .line 107
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "description"

    .line 108
    const-class v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "image"

    .line 109
    const-class v2, Lcom/rometools/rome/feed/synd/SyndImage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "entries"

    .line 110
    const-class v2, Lcom/rometools/rome/feed/synd/SyndEntry;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "modules"

    .line 111
    const-class v2, Lcom/rometools/rome/feed/module/Module;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "categories"

    .line 112
    const-class v2, Lcom/rometools/rome/feed/synd/SyndCategory;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-class v2, Lcom/rometools/rome/feed/synd/SyndEntry;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndEntryImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-class v2, Lcom/rometools/rome/feed/synd/SyndImage;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndImageImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-class v2, Lcom/rometools/rome/feed/synd/SyndCategory;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndCategoryImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-class v2, Lcom/rometools/rome/feed/module/DCModule;

    const-class v3, Lcom/rometools/rome/feed/module/DCModuleImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-class v2, Lcom/rometools/rome/feed/module/SyModule;

    const-class v3, Lcom/rometools/rome/feed/module/SyModuleImpl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v2, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    const-class v3, Lcom/rometools/rome/feed/synd/SyndFeed;

    invoke-direct {v2, v3, v0, v1}, Lcom/rometools/rome/feed/impl/CopyFromHelper;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v2, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->COPY_FROM_HELPER:Lcom/rometools/rome/feed/impl/CopyFromHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, v0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>(Lcom/rometools/rome/feed/WireFeed;)V

    return-void
.end method

.method public constructor <init>(Lcom/rometools/rome/feed/WireFeed;)V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-direct {p0, p1, v0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>(Lcom/rometools/rome/feed/WireFeed;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/rometools/rome/feed/WireFeed;Z)V
    .locals 2

    .line 172
    const-class v0, Lcom/rometools/rome/feed/synd/SyndFeed;

    sget-object v1, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->IGNORE_PROPERTIES:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;-><init>(Ljava/lang/Class;Ljava/util/Set;)V

    if-eqz p2, :cond_0

    .line 175
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->wireFeed:Lcom/rometools/rome/feed/WireFeed;

    .line 176
    iput-boolean p2, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->preserveWireFeed:Z

    :cond_0
    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/rometools/rome/feed/WireFeed;->getFeedType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->feedType:Ljava/lang/String;

    .line 181
    sget-object p2, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->CONVERTERS:Lcom/rometools/rome/feed/synd/impl/Converters;

    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->feedType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/rometools/rome/feed/synd/impl/Converters;->getConverter(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/Converter;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 185
    invoke-interface {p2, p1, p0}, Lcom/rometools/rome/feed/synd/Converter;->copyInto(Lcom/rometools/rome/feed/WireFeed;Lcom/rometools/rome/feed/synd/SyndFeed;)V

    goto :goto_0

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid feed type ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->feedType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->wireFeed:Lcom/rometools/rome/feed/WireFeed;

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->preserveWireFeed:Z

    .line 147
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-direct {v0, p1, p0, p2}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    return-void
.end method

.method private getDCModule()Lcom/rometools/rome/feed/module/DCModule;
    .locals 1

    const-string v0, "http://purl.org/dc/elements/1.1/"

    .line 794
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object v0

    check-cast v0, Lcom/rometools/rome/feed/module/DCModule;

    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public createWireFeed(Ljava/lang/String;)Lcom/rometools/rome/feed/WireFeed;
    .locals 3

    if-eqz p1, :cond_1

    .line 280
    sget-object v0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->CONVERTERS:Lcom/rometools/rome/feed/synd/impl/Converters;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/synd/impl/Converters;->getConverter(Ljava/lang/String;)Lcom/rometools/rome/feed/synd/Converter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    invoke-interface {v0, p0}, Lcom/rometools/rome/feed/synd/Converter;->createRealFeed(Lcom/rometools/rome/feed/synd/SyndFeed;)Lcom/rometools/rome/feed/WireFeed;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid feed type ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Feed type cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 214
    instance-of v0, p1, Lcom/rometools/rome/feed/synd/SyndFeedImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    .line 219
    move-object v1, p1

    check-cast v1, Lcom/rometools/rome/feed/synd/SyndFeedImpl;

    invoke-virtual {v1}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->setForeignMarkup(Ljava/util/List;)V

    .line 220
    iget-object v1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 221
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->setForeignMarkup(Ljava/util/List;)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 850
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCModule;->getCreator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->authors:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndCategory;",
            ">;"
        }
    .end annotation

    .line 675
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;

    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v1

    invoke-interface {v1}, Lcom/rometools/rome/feed/module/DCModule;->getSubjects()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getContributors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation

    .line 869
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->contributors:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->contributors:Ljava/util/List;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .line 599
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCModule;->getRights()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDescriptionEx()Lcom/rometools/rome/feed/synd/SyndContent;
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    return-object v0
.end method

.method public getDocs()Ljava/lang/String;
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->docs:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->entries:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getForeignMarkup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->foreignMarkup:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->foreignMarkup:Ljava/util/List;

    return-object v0
.end method

.method public getGenerator()Ljava/lang/String;
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->generator:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Lcom/rometools/rome/feed/synd/SyndImage;
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->icon:Lcom/rometools/rome/feed/synd/SyndImage;

    return-object v0
.end method

.method public getImage()Lcom/rometools/rome/feed/synd/SyndImage;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->image:Lcom/rometools/rome/feed/synd/SyndImage;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 729
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCModule;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->links:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->links:Ljava/util/List;

    return-object v0
.end method

.method public getManagingEditor()Ljava/lang/String;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->managingEditor:Ljava/lang/String;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getModules()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->getModule(Ljava/util/List;Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object p1

    return-object p1
.end method

.method public getModules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    .line 756
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    const-string v1, "http://purl.org/dc/elements/1.1/"

    invoke-static {v0, v1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->getModule(Ljava/util/List;Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object v0

    if-nez v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    new-instance v1, Lcom/rometools/rome/feed/module/DCModuleImpl;

    invoke-direct {v1}, Lcom/rometools/rome/feed/module/DCModuleImpl;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getPublishedDate()Ljava/util/Date;
    .locals 1

    .line 571
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/rometools/rome/feed/module/DCModule;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getStyleSheet()Ljava/lang/String;
    .locals 1

    .line 948
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->styleSheet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-interface {v0}, Lcom/rometools/rome/feed/synd/SyndContent;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleEx()Lcom/rometools/rome/feed/synd/SyndContent;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getWebMaster()Ljava/lang/String;
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->webMaster:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPreservingWireFeed()Z
    .locals 1

    .line 903
    iget-boolean v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->preserveWireFeed:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1

    .line 864
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setCreator(Ljava/lang/String;)V

    return-void
.end method

.method public setAuthors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)V"
        }
    .end annotation

    .line 836
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->authors:Ljava/util/List;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndCategory;",
            ">;)V"
        }
    .end annotation

    .line 690
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-static {p1}, Lcom/rometools/rome/feed/synd/SyndCategoryListFacade;->convertElementsSyndCategoryToSubject(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setSubjects(Ljava/util/List;)V

    return-void
.end method

.method public setContributors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;)V"
        }
    .end annotation

    .line 874
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->contributors:Ljava/util/List;

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setRights(Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setDescriptionEx(Lcom/rometools/rome/feed/synd/SyndContent;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->description:Lcom/rometools/rome/feed/synd/SyndContent;

    return-void
.end method

.method public setDocs(Ljava/lang/String;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->docs:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setEntries(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndEntry;",
            ">;)V"
        }
    .end annotation

    .line 715
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->entries:Ljava/util/List;

    return-void
.end method

.method public setForeignMarkup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;)V"
        }
    .end annotation

    .line 898
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->foreignMarkup:Ljava/util/List;

    return-void
.end method

.method public setGenerator(Ljava/lang/String;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->generator:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Lcom/rometools/rome/feed/synd/SyndImage;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->icon:Lcom/rometools/rome/feed/synd/SyndImage;

    return-void
.end method

.method public setImage(Lcom/rometools/rome/feed/synd/SyndImage;)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->image:Lcom/rometools/rome/feed/synd/SyndImage;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1

    .line 743
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->link:Ljava/lang/String;

    return-void
.end method

.method public setLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndLink;",
            ">;)V"
        }
    .end annotation

    .line 826
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->links:Ljava/util/List;

    return-void
.end method

.method public setManagingEditor(Ljava/lang/String;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->managingEditor:Ljava/lang/String;

    return-void
.end method

.method public setModules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 772
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->modules:Ljava/util/List;

    return-void
.end method

.method public setPublishedDate(Ljava/util/Date;)V
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->getDCModule()Lcom/rometools/rome/feed/module/DCModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/module/DCModule;->setDate(Ljava/util/Date;)V

    return-void
.end method

.method public setStyleSheet(Ljava/lang/String;)V
    .locals 0

    .line 953
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->styleSheet:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/rometools/rome/feed/synd/SyndContentImpl;

    invoke-direct {v0}, Lcom/rometools/rome/feed/synd/SyndContentImpl;-><init>()V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    invoke-interface {v0, p1}, Lcom/rometools/rome/feed/synd/SyndContent;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setTitleEx(Lcom/rometools/rome/feed/synd/SyndContent;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->title:Lcom/rometools/rome/feed/synd/SyndContent;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 405
    invoke-static {p1}, Lcom/rometools/rome/feed/synd/impl/URINormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->uri:Ljava/lang/String;

    return-void
.end method

.method public setWebMaster(Ljava/lang/String;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->webMaster:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndFeedImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
