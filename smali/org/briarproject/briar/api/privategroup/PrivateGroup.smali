.class public Lorg/briarproject/briar/api/privategroup/PrivateGroup;
.super Lorg/briarproject/briar/api/client/NamedGroup;
.source "PrivateGroup.java"

# interfaces
.implements Lorg/briarproject/briar/api/sharing/Shareable;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final creator:Lorg/briarproject/bramble/api/identity/Author;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;Lorg/briarproject/bramble/api/identity/Author;[B)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p4}, Lorg/briarproject/briar/api/client/NamedGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V

    .line 19
    iput-object p3, p0, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->creator:Lorg/briarproject/bramble/api/identity/Author;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 28
    instance-of v0, p1, Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/briarproject/briar/api/client/NamedGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getCreator()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->creator:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method
