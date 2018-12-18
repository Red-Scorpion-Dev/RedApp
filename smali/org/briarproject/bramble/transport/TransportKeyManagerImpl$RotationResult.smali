.class Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;
.super Ljava/lang/Object;
.source "TransportKeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/transport/TransportKeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationResult"
.end annotation


# instance fields
.field private final current:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;"
        }
    .end annotation
.end field

.field private final rotated:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/transport/KeySet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->current:Ljava/util/Collection;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->rotated:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$1;)V
    .locals 0

    .line 363
    invoke-direct {p0}, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;
    .locals 0

    .line 363
    iget-object p0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->current:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;)Ljava/util/Collection;
    .locals 0

    .line 363
    iget-object p0, p0, Lorg/briarproject/bramble/transport/TransportKeyManagerImpl$RotationResult;->rotated:Ljava/util/Collection;

    return-object p0
.end method
