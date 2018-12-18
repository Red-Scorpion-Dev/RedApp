.class public Lcom/rometools/rome/feed/atom/Generator;
.super Ljava/lang/Object;
.source "Generator.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private url:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 49
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 63
    instance-of v0, p1, Lcom/rometools/rome/feed/atom/Generator;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Generator;->url:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Generator;->value:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Generator;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Generator;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
