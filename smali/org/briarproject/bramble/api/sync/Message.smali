.class public Lorg/briarproject/bramble/api/sync/Message;
.super Ljava/lang/Object;
.source "Message.java"


# static fields
.field public static final FORMAT_VERSION:I = 0x1


# instance fields
.field private final body:[B

.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;J[B)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    array-length v0, p5

    if-eqz v0, :cond_1

    .line 20
    array-length v0, p5

    const v1, 0x8000

    if-gt v0, v1, :cond_0

    .line 22
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/Message;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 23
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/Message;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 24
    iput-wide p3, p0, Lorg/briarproject/bramble/api/sync/Message;->timestamp:J

    .line 25
    iput-object p5, p0, Lorg/briarproject/bramble/api/sync/Message;->body:[B

    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 70
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/Message;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    check-cast p1, Lorg/briarproject/bramble/api/sync/Message;

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/sync/Message;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/briarproject/bramble/api/sync/MessageId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getBody()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->body:[B

    return-object v0
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getRawLength()I
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->body:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lorg/briarproject/bramble/api/sync/Message;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/Message;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/sync/MessageId;->hashCode()I

    move-result v0

    return v0
.end method
