.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientState"
.end annotation


# instance fields
.field private final active:Z

.field private final majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

.field private final minorVersion:I


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/ClientId;IIZ)V
    .locals 1

    .line 594
    new-instance v0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    invoke-direct {p0, v0, p3, p4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZ)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/sync/ClientId;IIZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;IIZ)V

    return-void
.end method

.method private constructor <init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZ)V
    .locals 0

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 587
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    .line 588
    iput p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->minorVersion:I

    .line 589
    iput-boolean p3, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->active:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZLorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 579
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;IZ)V

    return-void
.end method

.method static synthetic access$1400(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;
    .locals 0

    .line 579
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)Z
    .locals 0

    .line 579
    iget-boolean p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->active:Z

    return p0
.end method

.method static synthetic access$1700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;)I
    .locals 0

    .line 579
    iget p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->minorVersion:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 600
    instance-of v0, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 601
    check-cast p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;

    .line 602
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    iget-object v2, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->minorVersion:I

    iget v2, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->minorVersion:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->active:Z

    iget-boolean p1, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->active:Z

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 611
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientState;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->hashCode()I

    move-result v0

    return v0
.end method
