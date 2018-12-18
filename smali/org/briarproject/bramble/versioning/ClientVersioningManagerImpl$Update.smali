.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Update"
.end annotation


# instance fields
.field private final states:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;"
        }
    .end annotation
.end field

.field private final updateVersion:J


# direct methods
.method private constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;",
            ">;J)V"
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->states:Ljava/util/List;

    .line 513
    iput-wide p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->updateVersion:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;JLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)Ljava/util/List;
    .locals 0

    .line 506
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->states:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;)J
    .locals 2

    .line 506
    iget-wide v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$Update;->updateVersion:J

    return-wide v0
.end method
