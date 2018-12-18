.class public Lcom/rometools/rome/feed/impl/PropertyDescriptor;
.super Ljava/lang/Object;
.source "PropertyDescriptor.java"


# instance fields
.field private final getter:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private final setter:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->name:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p2}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->checkGetter(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    .line 39
    invoke-direct {p0, p3}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->checkSetter(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bad property name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkGetter(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 2

    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 72
    array-length v0, v0

    if-nez v0, :cond_2

    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 76
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter type in getter does not correspond to setter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Getter has return type void"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of parameters in getter method is not equal to 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modifier for getter method should be public"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method private checkSetter(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 3

    if-eqz p1, :cond_3

    .line 89
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 94
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 97
    aget-object v0, v0, v1

    .line 98
    invoke-virtual {p0}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getPropertyType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter type in setter does not correspond to getter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Number of parameters in setter method is not equal to 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Modifier for setter method should be public"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 59
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getter:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getWriteMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->setter:Ljava/lang/reflect/Method;

    return-object v0
.end method
