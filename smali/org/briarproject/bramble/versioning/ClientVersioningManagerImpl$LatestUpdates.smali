.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestUpdates"
.end annotation


# instance fields
.field private final local:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

.field private final remote:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)V
    .locals 0

    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->local:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    .line 536
    iput-object p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->remote:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 528
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;-><init>(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;
    .locals 0

    .line 528
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->local:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    return-object p0
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;)Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;
    .locals 0

    .line 528
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdates;->remote:Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;

    return-object p0
.end method
