.class Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;
.super Ljava/lang/Object;
.source "ClientVersioningManagerImpl.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;",
        ">;"
    }
.end annotation


# instance fields
.field private final majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

.field private final minorVersion:I


# direct methods
.method private constructor <init>(Lorg/briarproject/bramble/api/sync/ClientId;II)V
    .locals 1

    .line 553
    new-instance v0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V

    invoke-direct {p0, v0, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;I)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;-><init>(Lorg/briarproject/bramble/api/sync/ClientId;II)V

    return-void
.end method

.method private constructor <init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;I)V
    .locals 0

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput-object p1, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    .line 548
    iput p2, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;ILorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$1;)V
    .locals 0

    .line 540
    invoke-direct {p0, p1, p2}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;-><init>(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;I)V

    return-void
.end method

.method static synthetic access$700(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;
    .locals 0

    .line 540
    iget-object p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    return-object p0
.end method

.method static synthetic access$800(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I
    .locals 0

    .line 540
    iget p0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 540
    check-cast p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->compareTo(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;)I
    .locals 2

    .line 573
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    iget-object v1, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->compareTo(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 575
    :cond_0
    iget v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    iget p1, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 558
    instance-of v0, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 559
    check-cast p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;

    .line 560
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    iget-object v2, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    iget p1, p1, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->minorVersion:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/briarproject/bramble/versioning/ClientVersioningManagerImpl$ClientVersion;->majorVersion:Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->hashCode()I

    move-result v0

    return v0
.end method
