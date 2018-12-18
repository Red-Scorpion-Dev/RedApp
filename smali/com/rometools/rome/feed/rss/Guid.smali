.class public Lcom/rometools/rome/feed/rss/Guid;
.super Ljava/lang/Object;
.source "Guid.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private permaLink:Z

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Lcom/rometools/rome/feed/rss/Guid;->permaLink:Z

    .line 34
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 47
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 61
    instance-of v0, p1, Lcom/rometools/rome/feed/rss/Guid;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public isPermaLink()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/rometools/rome/feed/rss/Guid;->permaLink:Z

    return v0
.end method

.method public setPermaLink(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/rometools/rome/feed/rss/Guid;->permaLink:Z

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/rometools/rome/feed/rss/Guid;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/rometools/rome/feed/rss/Guid;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
