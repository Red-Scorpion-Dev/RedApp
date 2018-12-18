.class public Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;
.super Ljava/lang/Object;
.source "ClientMajorVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final clientId:Lorg/briarproject/bramble/api/sync/ClientId;

.field private final majorVersion:I


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/ClientId;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 17
    iput p2, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    invoke-virtual {p0, p1}, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->compareTo(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;)I
    .locals 2

    .line 45
    iget-object v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    iget-object v1, p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;->compareTo(Lorg/briarproject/bramble/api/sync/ClientId;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 47
    :cond_0
    iget v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    iget p1, p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 30
    instance-of v0, p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 31
    check-cast p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    iget-object v2, p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0, v2}, Lorg/briarproject/bramble/api/sync/ClientId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    iget p1, p1, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public getClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/ClientId;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/briarproject/bramble/api/versioning/ClientMajorVersion;->majorVersion:I

    add-int/2addr v0, v1

    return v0
.end method
