.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LatestUpdate"
.end annotation


# instance fields
.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final updateVersion:J


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;J)V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 524
    iput-wide p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->updateVersion:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;JLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 517
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;J)V

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 0

    .line 517
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object p0
.end method

.method static synthetic access$600(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;)J
    .locals 2

    .line 517
    iget-wide v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$LatestUpdate;->updateVersion:J

    return-wide v0
.end method
