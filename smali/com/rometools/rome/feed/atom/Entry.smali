.class public Lcom/rometools/rome/feed/atom/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Extendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private alternateLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation
.end field

.field private authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/synd/SyndPerson;",
            ">;"
        }
    .end annotation
.end field

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Category;",
            ">;"
        }
    .end annotation
.end field

.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Content;",
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

.field private created:Ljava/util/Date;

.field private foreignMarkup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

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

.field private otherLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation
.end field

.field private published:Ljava/util/Date;

.field private rights:Ljava/lang/String;

.field private source:Lcom/rometools/rome/feed/atom/Feed;

.field private summary:Lcom/rometools/rome/feed/atom/Content;

.field private title:Lcom/rometools/rome/feed/atom/Content;

.field private updated:Ljava/util/Date;

.field private xmlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 559
    :cond_0
    instance-of v1, p1, Lcom/rometools/rome/feed/atom/Entry;

    if-nez v1, :cond_1

    return v0

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    .line 564
    move-object v1, p1

    check-cast v1, Lcom/rometools/rome/feed/atom/Entry;

    invoke-virtual {v1}, Lcom/rometools/rome/feed/atom/Entry;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/atom/Entry;->setForeignMarkup(Ljava/util/List;)V

    .line 566
    iget-object v1, p0, Lcom/rometools/rome/feed/atom/Entry;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 568
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/atom/Entry;->setForeignMarkup(Ljava/util/List;)V

    return p1
.end method

.method public getAlternateLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->alternateLinks:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->alternateLinks:Ljava/util/List;

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

    .line 103
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->authors:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->authors:Ljava/util/List;

    return-object v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Category;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->categories:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Content;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->contents:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->contents:Ljava/util/List;

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

    .line 169
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->contributors:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->contributors:Ljava/util/List;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->created:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

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

    .line 211
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->foreignMarkup:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->foreignMarkup:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIssued()Ljava/util/Date;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->published:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModified()Ljava/util/Date;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->updated:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->modules:Ljava/util/List;

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

    .line 327
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getOtherLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->otherLinks:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->otherLinks:Ljava/util/List;

    return-object v0
.end method

.method public getPublished()Ljava/util/Date;
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->published:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getRights()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->rights:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Lcom/rometools/rome/feed/atom/Feed;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->source:Lcom/rometools/rome/feed/atom/Feed;

    return-object v0
.end method

.method public getSummary()Lcom/rometools/rome/feed/atom/Content;
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->summary:Lcom/rometools/rome/feed/atom/Content;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->title:Lcom/rometools/rome/feed/atom/Content;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->title:Lcom/rometools/rome/feed/atom/Content;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitleEx()Lcom/rometools/rome/feed/atom/Content;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->title:Lcom/rometools/rome/feed/atom/Content;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->updated:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getXmlBase()Ljava/lang/String;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAlternateLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;)V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->alternateLinks:Ljava/util/List;

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

    .line 92
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->authors:Ljava/util/List;

    return-void
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Category;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->categories:Ljava/util/List;

    return-void
.end method

.method public setContents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Content;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->contents:Ljava/util/List;

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

    .line 158
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->contributors:Ljava/util/List;

    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .line 179
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->created:Ljava/util/Date;

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

    .line 200
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->foreignMarkup:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->id:Ljava/lang/String;

    return-void
.end method

.method public setIssued(Ljava/util/Date;)V
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->published:Ljava/util/Date;

    return-void
.end method

.method public setModified(Ljava/util/Date;)V
    .locals 0

    .line 280
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->updated:Ljava/util/Date;

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

    .line 315
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->modules:Ljava/util/List;

    return-void
.end method

.method public setOtherLinks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/atom/Link;",
            ">;)V"
        }
    .end annotation

    .line 338
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->otherLinks:Ljava/util/List;

    return-void
.end method

.method public setPublished(Ljava/util/Date;)V
    .locals 0

    .line 360
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->published:Ljava/util/Date;

    return-void
.end method

.method public setRights(Ljava/lang/String;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->rights:Ljava/lang/String;

    return-void
.end method

.method public setSource(Lcom/rometools/rome/feed/atom/Feed;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->source:Lcom/rometools/rome/feed/atom/Feed;

    return-void
.end method

.method public setSummary(Lcom/rometools/rome/feed/atom/Content;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->summary:Lcom/rometools/rome/feed/atom/Content;

    return-void
.end method

.method public setTitleEx(Lcom/rometools/rome/feed/atom/Content;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->title:Lcom/rometools/rome/feed/atom/Content;

    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .line 496
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->updated:Ljava/util/Date;

    return-void
.end method

.method public setXmlBase(Ljava/lang/String;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Entry;->xmlBase:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Entry;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
