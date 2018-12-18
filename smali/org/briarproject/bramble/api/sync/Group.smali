.class public Lorg/briarproject/bramble/api/sync/Group;
.super Ljava/lang/Object;
.source "Group.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/api/sync/Group$Visibility;
    }
.end annotation


# static fields
.field public static final FORMAT_VERSION:I = 0x1


# instance fields
.field private final clientId:Lorg/briarproject/bramble/api/sync/ClientId;

.field private final descriptor:[B

.field private final id:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final majorVersion:I


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/ClientId;I[B)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    array-length v0, p4

    const/16 v1, 0x4000

    if-gt v0, v1, :cond_0

    .line 42
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/Group;->id:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 43
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/Group;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 44
    iput p3, p0, Lorg/briarproject/bramble/api/sync/Group;->majorVersion:I

    .line 45
    iput-object p4, p0, Lorg/briarproject/bramble/api/sync/Group;->descriptor:[B

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 83
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Group;->id:Lorg/briarproject/bramble/api/sync/GroupId;

    check-cast p1, Lorg/briarproject/bramble/api/sync/Group;

    iget-object p1, p1, Lorg/briarproject/bramble/api/sync/Group;->id:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/sync/GroupId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Group;->clientId:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method public getDescriptor()[B
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Group;->descriptor:[B

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Group;->id:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/briarproject/bramble/api/sync/Group;->majorVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Group;->id:Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/GroupId;->hashCode()I

    move-result v0

    return v0
.end method
