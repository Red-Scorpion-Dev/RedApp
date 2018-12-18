.class public Lcom/rometools/rome/feed/synd/SyndPersonImpl;
.super Ljava/lang/Object;
.source "SyndPersonImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/synd/SyndPerson;
.implements Ljava/io/Serializable;


# instance fields
.field private email:Ljava/lang/String;

.field private modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    const-class v1, Lcom/rometools/rome/feed/synd/SyndPerson;

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 60
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 74
    instance-of v0, p1, Lcom/rometools/rome/feed/synd/SyndPersonImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/rometools/rome/feed/module/Module;
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->getModules()Ljava/util/List;

    move-result-object v0

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

    .line 186
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->modules:Ljava/util/List;

    invoke-static {v0}, Lcom/rometools/utils/Lists;->createWhenNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->modules:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->email:Ljava/lang/String;

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

    .line 199
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->modules:Ljava/util/List;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->uri:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/rometools/rome/feed/synd/SyndPersonImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
