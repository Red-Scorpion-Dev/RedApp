.class public Lcom/rometools/rome/feed/atom/Category;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private label:Ljava/lang/String;

.field private final objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

.field private scheme:Ljava/lang/String;

.field private schemeResolved:Ljava/lang/String;

.field private term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

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

    .line 52
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 66
    instance-of v0, p1, Lcom/rometools/rome/feed/atom/Category;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/ObjectBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeResolved()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 143
    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/rometools/rome/feed/atom/Category;->schemeResolved:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/rometools/rome/feed/atom/Category;->scheme:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/rometools/utils/Alternatives;->firstNotNull([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTerm()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->term:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Category;->label:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Category;->scheme:Ljava/lang/String;

    return-void
.end method

.method public setSchemeResolved(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Category;->schemeResolved:Ljava/lang/String;

    return-void
.end method

.method public setTerm(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/rometools/rome/feed/atom/Category;->term:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/rometools/rome/feed/atom/Category;->objBean:Lcom/rometools/rome/feed/impl/ObjectBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ObjectBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
