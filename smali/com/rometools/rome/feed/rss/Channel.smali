.class public Lcom/rometools/rome/feed/rss/Channel;
.super Lcom/rometools/rome/feed/WireFeed;
.source "Channel.java"


# static fields
.field private static final DAYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Category;",
            ">;"
        }
    .end annotation
.end field

.field private cloud:Lcom/rometools/rome/feed/rss/Cloud;

.field private copyright:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private docs:Ljava/lang/String;

.field private generator:Ljava/lang/String;

.field private image:Lcom/rometools/rome/feed/rss/Image;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;"
        }
    .end annotation
.end field

.field private language:Ljava/lang/String;

.field private lastBuildDate:Ljava/util/Date;

.field private link:Ljava/lang/String;

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

.field private pubDate:Ljava/util/Date;

.field private rating:Ljava/lang/String;

.field private skipDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skipHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textInput:Lcom/rometools/rome/feed/rss/TextInput;

.field private title:Ljava/lang/String;

.field private ttl:I

.field private uri:Ljava/lang/String;

.field private webMaster:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "sunday"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "monday"

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "tuesday"

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "wednesday"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "thursday"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "friday"

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "saturday"

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/feed/rss/Channel;->DAYS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/rometools/rome/feed/WireFeed;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/rometools/rome/feed/rss/Channel;->ttl:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/rometools/rome/feed/WireFeed;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 84
    iput p1, p0, Lcom/rometools/rome/feed/rss/Channel;->ttl:I

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Category;",
            ">;"
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->categories:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getCloud()Lcom/rometools/rome/feed/rss/Cloud;
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->cloud:Lcom/rometools/rome/feed/rss/Cloud;

    return-object v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDocs()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->docs:Ljava/lang/String;

    return-object v0
.end method

.method public getGenerator()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->generator:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Lcom/rometools/rome/feed/rss/Image;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->image:Lcom/rometools/rome/feed/rss/Image;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->items:Ljava/util/List;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLastBuildDate()Ljava/util/Date;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->lastBuildDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getManagingEditor()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->managingEditor:Ljava/lang/String;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->modules:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/rometools/rome/feed/module/impl/ModuleUtils;->getModule(Ljava/util/List;Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;

    move-result-object p1

    return-object p1
.end method

.method public getModules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->pubDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->skipDays:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSkipHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->skipHours:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTextInput()Lcom/rometools/rome/feed/rss/TextInput;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->textInput:Lcom/rometools/rome/feed/rss/TextInput;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 582
    iget v0, p0, Lcom/rometools/rome/feed/rss/Channel;->ttl:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getWebMaster()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Channel;->webMaster:Ljava/lang/String;

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Category;",
            ">;)V"
        }
    .end annotation

    .line 549
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->categories:Ljava/util/List;

    return-void
.end method

.method public setCloud(Lcom/rometools/rome/feed/rss/Cloud;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->cloud:Lcom/rometools/rome/feed/rss/Cloud;

    return-void
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->copyright:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->description:Ljava/lang/String;

    return-void
.end method

.method public setDocs(Ljava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->docs:Ljava/lang/String;

    return-void
.end method

.method public setGenerator(Ljava/lang/String;)V
    .locals 0

    .line 571
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->generator:Ljava/lang/String;

    return-void
.end method

.method public setImage(Lcom/rometools/rome/feed/rss/Image;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->image:Lcom/rometools/rome/feed/rss/Image;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Item;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->items:Ljava/util/List;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->language:Ljava/lang/String;

    return-void
.end method

.method public setLastBuildDate(Ljava/util/Date;)V
    .locals 0

    .line 365
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->lastBuildDate:Ljava/util/Date;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->link:Ljava/lang/String;

    return-void
.end method

.method public setManagingEditor(Ljava/lang/String;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->managingEditor:Ljava/lang/String;

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

    .line 618
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->modules:Ljava/util/List;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    .line 343
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->pubDate:Ljava/util/Date;

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->rating:Ljava/lang/String;

    return-void
.end method

.method public setSkipDays(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 491
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 492
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 494
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 495
    sget-object v2, Lcom/rometools/rome/feed/rss/Channel;->DAYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 496
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid day ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid day [null]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 504
    :cond_2
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->skipDays:Ljava/util/List;

    return-void
.end method

.method public setSkipHours(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 455
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 456
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 458
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    const/16 v2, 0x18

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid hour ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 463
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid hour [null]"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 467
    :cond_2
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->skipHours:Ljava/util/List;

    return-void
.end method

.method public setTextInput(Lcom/rometools/rome/feed/rss/TextInput;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->textInput:Lcom/rometools/rome/feed/rss/TextInput;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->title:Ljava/lang/String;

    return-void
.end method

.method public setTtl(I)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/rometools/rome/feed/rss/Channel;->ttl:I

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->uri:Ljava/lang/String;

    return-void
.end method

.method public setWebMaster(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Channel;->webMaster:Ljava/lang/String;

    return-void
.end method
