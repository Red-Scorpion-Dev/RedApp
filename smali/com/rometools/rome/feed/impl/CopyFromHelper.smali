.class public Lcom/rometools/rome/feed/impl/CopyFromHelper;
.super Ljava/lang/Object;
.source "CopyFromHelper.java"


# static fields
.field private static final BASIC_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final NO_PARAMS:[Ljava/lang/Object;


# instance fields
.field private final baseImplMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final baseInterfaceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final beanInterfaceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->LOG:Lorg/slf4j/Logger;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const/4 v0, 0x0

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->NO_PARAMS:[Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Byte;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Character;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Double;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Float;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/Short;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->BASIC_TYPES:Ljava/util/Set;

    const-class v1, Ljava/util/Date;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->beanInterfaceClass:Ljava/lang/Class;

    .line 64
    iput-object p2, p0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->baseInterfaceMap:Ljava/util/Map;

    .line 65
    iput-object p3, p0, Lcom/rometools/rome/feed/impl/CopyFromHelper;->baseImplMap:Ljava/util/Map;

    return-void
.end method
