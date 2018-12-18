.class public Lcom/rometools/rome/feed/impl/BeanIntrospector;
.super Ljava/lang/Object;
.source "BeanIntrospector.java"


# static fields
.field private static final introspected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rometools/rome/feed/impl/BeanIntrospector;->introspected:Ljava/util/Map;

    return-void
.end method

.method private static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 207
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    .line 212
    aget-char v1, p0, v0

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, p0, v0

    .line 213
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private static getPDs([Ljava/lang/reflect/Method;Z)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Method;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 137
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    .line 142
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 145
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    .line 147
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x3

    if-eqz p1, :cond_0

    const-string v10, "set"

    .line 150
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v7, v10, :cond_2

    if-ne v8, v5, :cond_2

    .line 151
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    new-instance v5, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    invoke-direct {v5, v4, v6, v3}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_0
    const-string v5, "get"

    .line 155
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v7, v5, :cond_1

    if-nez v8, :cond_1

    .line 156
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    new-instance v5, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    invoke-direct {v5, v4, v3, v6}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_1
    const-string v5, "is"

    .line 158
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v5, :cond_2

    if-nez v8, :cond_2

    const/4 v5, 0x2

    .line 159
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v5, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    invoke-direct {v5, v4, v3, v6}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    goto :goto_1

    :cond_2
    move-object v4, v6

    move-object v5, v4

    :goto_1
    if-eqz v4, :cond_3

    .line 166
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private static getPDs(Ljava/lang/Class;)[Lcom/rometools/rome/feed/impl/PropertyDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;"
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 v0, 0x0

    .line 127
    invoke-static {p0, v0}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPDs([Ljava/lang/reflect/Method;Z)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    .line 128
    invoke-static {p0, v1}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPDs([Ljava/lang/reflect/Method;Z)Ljava/util/Map;

    move-result-object p0

    .line 129
    invoke-static {v0, p0}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    .line 130
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    return-object p0
.end method

.method private static declared-synchronized getPropertyDescriptors(Ljava/lang/Class;)[Lcom/rometools/rome/feed/impl/PropertyDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;"
        }
    .end annotation

    const-class v0, Lcom/rometools/rome/feed/impl/BeanIntrospector;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/rometools/rome/feed/impl/BeanIntrospector;->introspected:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    if-nez v1, :cond_0

    .line 54
    invoke-static {p0}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPDs(Ljava/lang/Class;)[Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    move-result-object v1

    .line 55
    sget-object v2, Lcom/rometools/rome/feed/impl/BeanIntrospector;->introspected:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0
.end method

.method public static getPropertyDescriptorsWithGetters(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-static {p0}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPropertyDescriptors(Ljava/lang/Class;)[Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 74
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    .line 76
    invoke-virtual {v4}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_3

    .line 81
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Object;

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 82
    :goto_2
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-nez v7, :cond_3

    if-eqz v6, :cond_3

    .line 85
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getPropertyDescriptorsWithGettersAndSetters(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-static {p0}, Lcom/rometools/rome/feed/impl/BeanIntrospector;->getPropertyDescriptorsWithGetters(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    .line 110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    .line 112
    invoke-virtual {v1}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static merge(Ljava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/rometools/rome/feed/impl/PropertyDescriptor;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 180
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    .line 182
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    if-eqz v5, :cond_0

    .line 184
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    new-instance v6, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    invoke-virtual {v4}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v5}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-direct {v6, v3, v4, v5}, Lcom/rometools/rome/feed/impl/PropertyDescriptor;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 186
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 193
    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 195
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 196
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rometools/rome/feed/impl/PropertyDescriptor;

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method
