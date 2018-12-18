.class public Lorg/briarproject/briar/api/forum/Forum;
.super Lorg/briarproject/briar/api/client/NamedGroup;
.source "Forum.java"

# interfaces
.implements Lorg/briarproject/briar/api/sharing/Shareable;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/api/client/NamedGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 20
    instance-of v0, p1, Lorg/briarproject/briar/api/forum/Forum;

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
