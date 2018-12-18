.class public Lcom/rometools/rome/feed/rss/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Extendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private author:Ljava/lang/String;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Category;",
            ">;"
        }
    .end annotation
.end field

.field private comments:Ljava/lang/String;

.field private content:Lcom/rometools/rome/feed/rss/Content;

.field private description:Lcom/rometools/rome/feed/rss/Description;

.field private enclosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Enclosure;",
            ">;"
        }
    .end annotation
.end field

.field private expirationDate:Ljava/util/Date;

.field private foreignMarkup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jdom2/Element;",
            ">;"
        }
    .end annotation
.end field

.field private guid:Lcom/rometools/rome/feed/rss/Guid;

.field private link:Ljava/lang/String;

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

.field private pubDate:Ljava/util/Date;

.field private source:Lcom/rometools/rome/feed/rss/Source;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 77
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 91
    instance-of v0, p1, Lcom/rometools/rome/feed/rss/Item;

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/rometools/rome/feed/rss/Item;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    .line 96
    move-object v1, p1

    check-cast v1, Lcom/rometools/rome/feed/rss/Item;

    invoke-virtual {v1}, Lcom/rometools/rome/feed/rss/Item;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/rss/Item;->setForeignMarkup(Ljava/util/List;)V

    .line 97
    iget-object v1, p0, Lcom/rometools/rome/feed/rss/Item;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 99
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/rss/Item;->setForeignMarkup(Ljava/util/List;)V

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->author:Ljava/lang/String;

    return-object v0
.end method

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

    .line 290
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->categories:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->comments:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Lcom/rometools/rome/feed/rss/Content;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->content:Lcom/rometools/rome/feed/rss/Content;

    return-object v0
.end method

.method public getDescription()Lcom/rometools/rome/feed/rss/Description;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->description:Lcom/rometools/rome/feed/rss/Description;

    return-object v0
.end method

.method public getEnclosures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Enclosure;",
            ">;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->enclosures:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->enclosures:Ljava/util/List;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->expirationDate:Ljava/util/Date;

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

    .line 460
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->foreignMarkup:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->foreignMarkup:Ljava/util/List;

    return-object v0
.end method

.method public getGuid()Lcom/rometools/rome/feed/rss/Guid;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->guid:Lcom/rometools/rome/feed/rss/Guid;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->modules:Ljava/util/List;

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

    .line 380
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getPubDate()Ljava/util/Date;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->pubDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lcom/rometools/rome/feed/rss/Source;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->source:Lcom/rometools/rome/feed/rss/Source;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->author:Ljava/lang/String;

    return-void
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

    .line 302
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->categories:Ljava/util/List;

    return-void
.end method

.method public setComments(Ljava/lang/String;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->comments:Ljava/lang/String;

    return-void
.end method

.method public setContent(Lcom/rometools/rome/feed/rss/Content;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->content:Lcom/rometools/rome/feed/rss/Content;

    return-void
.end method

.method public setDescription(Lcom/rometools/rome/feed/rss/Description;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->description:Lcom/rometools/rome/feed/rss/Description;

    return-void
.end method

.method public setEnclosures(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/rss/Enclosure;",
            ">;)V"
        }
    .end annotation

    .line 279
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->enclosures:Ljava/util/List;

    return-void
.end method

.method public setExpirationDate(Ljava/util/Date;)V
    .locals 0

    .line 449
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->expirationDate:Ljava/util/Date;

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

    .line 471
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->foreignMarkup:Ljava/util/List;

    return-void
.end method

.method public setGuid(Lcom/rometools/rome/feed/rss/Guid;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->guid:Lcom/rometools/rome/feed/rss/Guid;

    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->link:Ljava/lang/String;

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

    .line 393
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->modules:Ljava/util/List;

    return-void
.end method

.method public setPubDate(Ljava/util/Date;)V
    .locals 0

    .line 427
    invoke-static {p1}, Lcom/rometools/utils/Dates;->copy(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->pubDate:Ljava/util/Date;

    return-void
.end method

.method public setSource(Lcom/rometools/rome/feed/rss/Source;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->source:Lcom/rometools/rome/feed/rss/Source;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->title:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Item;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Item;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
