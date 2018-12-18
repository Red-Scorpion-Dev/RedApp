.class public Lcom/rometools/rome/feed/impl/ObjectBean;
.super Ljava/lang/Object;
.source "ObjectBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private final cloneableBean:Lcom/rometools/rome/feed/impl/CloneableBean;

.field private final equalsBean:Lcom/rometools/rome/feed/impl/EqualsBean;

.field private final toStringBean:Lcom/rometools/rome/feed/impl/ToStringBean;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/rometools/rome/feed/impl/ObjectBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/rometools/rome/feed/impl/EqualsBean;

    invoke-direct {v0, p1, p2}, Lcom/rometools/rome/feed/impl/EqualsBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->equalsBean:Lcom/rometools/rome/feed/impl/EqualsBean;

    .line 71
    new-instance v0, Lcom/rometools/rome/feed/impl/ToStringBean;

    invoke-direct {v0, p1, p2}, Lcom/rometools/rome/feed/impl/ToStringBean;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->toStringBean:Lcom/rometools/rome/feed/impl/ToStringBean;

    .line 72
    new-instance p1, Lcom/rometools/rome/feed/impl/CloneableBean;

    invoke-direct {p1, p2, p3}, Lcom/rometools/rome/feed/impl/CloneableBean;-><init>(Ljava/lang/Object;Ljava/util/Set;)V

    iput-object p1, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->cloneableBean:Lcom/rometools/rome/feed/impl/CloneableBean;

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

    .line 85
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->cloneableBean:Lcom/rometools/rome/feed/impl/CloneableBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/CloneableBean;->beanClone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->equalsBean:Lcom/rometools/rome/feed/impl/EqualsBean;

    invoke-virtual {v0, p1}, Lcom/rometools/rome/feed/impl/EqualsBean;->beanEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->equalsBean:Lcom/rometools/rome/feed/impl/EqualsBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/EqualsBean;->beanHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/ObjectBean;->toStringBean:Lcom/rometools/rome/feed/impl/ToStringBean;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ToStringBean;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
