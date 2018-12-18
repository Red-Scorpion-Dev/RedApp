.class public abstract Lorg/briarproject/briar/api/client/NamedGroup;
.super Lorg/briarproject/briar/api/client/BaseGroup;
.source "NamedGroup.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final salt:[B


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/Group;Ljava/lang/String;[B)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lorg/briarproject/briar/api/client/BaseGroup;-><init>(Lorg/briarproject/bramble/api/sync/Group;)V

    .line 17
    iput-object p2, p0, Lorg/briarproject/briar/api/client/NamedGroup;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lorg/briarproject/briar/api/client/NamedGroup;->salt:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    instance-of v0, p1, Lorg/briarproject/briar/api/client/NamedGroup;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/briarproject/briar/api/client/BaseGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/briar/api/client/NamedGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSalt()[B
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/briarproject/briar/api/client/NamedGroup;->salt:[B

    return-object v0
.end method
