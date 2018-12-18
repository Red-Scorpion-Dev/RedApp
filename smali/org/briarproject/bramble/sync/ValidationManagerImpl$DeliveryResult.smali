.class Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;
.super Ljava/lang/Object;
.source "ValidationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/sync/ValidationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeliveryResult"
.end annotation


# instance fields
.field private final share:Z

.field private final valid:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 452
    iput-boolean p1, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->valid:Z

    .line 453
    iput-boolean p2, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->share:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLorg/briarproject/bramble/sync/ValidationManagerImpl$1;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;-><init>(ZZ)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->valid:Z

    return p0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;)Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lorg/briarproject/bramble/sync/ValidationManagerImpl$DeliveryResult;->share:Z

    return p0
.end method
