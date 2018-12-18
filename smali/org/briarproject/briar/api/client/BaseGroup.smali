.class public abstract Lorg/briarproject/briar/api/client/BaseGroup;
.super Ljava/lang/Object;
.source "BaseGroup.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final group:Lorg/briarproject/bramble/api/sync/Group;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/api/client/BaseGroup;->group:Lorg/briarproject/bramble/api/sync/Group;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 34
    instance-of v0, p1, Lorg/briarproject/briar/api/client/BaseGroup;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lorg/briarproject/briar/api/client/BaseGroup;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    check-cast p1, Lorg/briarproject/briar/api/client/BaseGroup;

    invoke-virtual {p1}, Lorg/briarproject/briar/api/client/BaseGroup;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/sync/Group;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getGroup()Lorg/briarproject/bramble/api/sync/Group;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/api/client/BaseGroup;->group:Lorg/briarproject/bramble/api/sync/Group;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/briarproject/briar/api/client/BaseGroup;->group:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/api/client/BaseGroup;->group:Lorg/briarproject/bramble/api/sync/Group;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/Group;->hashCode()I

    move-result v0

    return v0
.end method
