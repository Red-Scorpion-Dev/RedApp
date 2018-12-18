.class public Lcom/rometools/rome/feed/impl/EqualsBean;
.super Ljava/lang/Object;
.source "EqualsBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NO_PARAMS:[Ljava/lang/Object;


# instance fields
.field private final beanClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final obj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/rometools/rome/feed/impl/EqualsBean;->NO_PARAMS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->beanClass:Ljava/lang/Class;

    .line 89
    iput-object p2, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->obj:Ljava/lang/Object;

    return-void

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not instance of "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 206
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/rometools/rome/feed/impl/EqualsBean;->equalsArray(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    return v0
.end method

.method private equalsArray(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    .line 217
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 218
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_0

    if-ge v1, v0, :cond_0

    .line 222
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 223
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 224
    invoke-direct {p0, v2, v3}, Lcom/rometools/rome/feed/impl/EqualsBean;->doEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public beanEquals(Ljava/lang/Object;)Z
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_5

    if-nez p1, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v3, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->beanClass:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 139
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->beanClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPropertyDescriptorsWithGetters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    .line 142
    invoke-virtual {v2}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    .line 144
    sget-object v3, Lcom/rometools/rome/feed/impl/EqualsBean;->NO_PARAMS:[Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 145
    sget-object v4, Lcom/rometools/rome/feed/impl/EqualsBean;->NO_PARAMS:[Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-direct {p0, v3, v2}, Lcom/rometools/rome/feed/impl/EqualsBean;->doEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    :cond_4
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not execute equals()"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    :goto_0
    return v1
.end method

.method public beanHashCode()I
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/EqualsBean;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/rometools/rome/feed/impl/EqualsBean;->beanEquals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 180
    invoke-virtual {p0}, Lcom/rometools/rome/feed/impl/EqualsBean;->beanHashCode()I

    move-result v0

    return v0
.end method
