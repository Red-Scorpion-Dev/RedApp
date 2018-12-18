.class public Lcom/rometools/rome/feed/rss/Cloud;
.super Ljava/lang/Object;
.source "Cloud.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private domain:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private registerProcedure:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 50
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRegisterProcedure()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->registerProcedure:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Cloud;->domain:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Cloud;->path:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/rometools/rome/feed/rss/Cloud;->port:I

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Cloud;->protocol:Ljava/lang/String;

    return-void
.end method

.method public setRegisterProcedure(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Cloud;->registerProcedure:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Cloud;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
