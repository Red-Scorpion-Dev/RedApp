.class public abstract Lcom/rometools/rome/feed/module/ModuleImpl;
.super Ljava/lang/Object;
.source "ModuleImpl.java"

# interfaces
.implements Lcom/rometools/rome/feed/module/Module;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private final uri:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-direct {v0, p1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    .line 38
    iput-object p2, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->uri:Ljava/lang/String;

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

    .line 51
    iget-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 65
    instance-of v0, p1, Lcom/rometools/rome/feed/module/ModuleImpl;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/rometools/rome/feed/module/ModuleImpl;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
