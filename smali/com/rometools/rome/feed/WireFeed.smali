.class public abstract Lcom/rometools/rome/feed/WireFeed;
.super Ljava/lang/Object;
.source "WireFeed.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Extendable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private encoding:Ljava/lang/String;

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

.field private styleSheet:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/rometools/rome/feed/WireFeed;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->feedType:Ljava/lang/String;

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

    .line 80
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 98
    :cond_0
    instance-of v1, p1, Lcom/rometools/rome/feed/WireFeed;

    if-nez v1, :cond_1

    return v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lcom/rometools/rome/feed/WireFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object v0

    .line 104
    move-object v1, p1

    check-cast v1, Lcom/rometools/rome/feed/WireFeed;

    invoke-virtual {v1}, Lcom/rometools/rome/feed/WireFeed;->getForeignMarkup()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/rometools/rome/feed/WireFeed;->setForeignMarkup(Ljava/util/List;)V

    .line 105
    iget-object v1, p0, Lcom/rometools/rome/feed/WireFeed;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v1, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 107
    invoke-virtual {p0, v0}, Lcom/rometools/rome/feed/WireFeed;->setForeignMarkup(Ljava/util/List;)V

    return p1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedType()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->feedType:Ljava/lang/String;

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

    .line 231
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->foreignMarkup:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->foreignMarkup:Ljava/util/List;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->modules:Ljava/util/List;

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

    .line 195
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getStyleSheet()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->styleSheet:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setFeedType(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->feedType:Ljava/lang/String;

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

    .line 242
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->foreignMarkup:Ljava/util/List;

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

    .line 208
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->modules:Ljava/util/List;

    return-void
.end method

.method public setStyleSheet(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/rometools/rome/feed/WireFeed;->styleSheet:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/rometools/rome/feed/WireFeed;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
