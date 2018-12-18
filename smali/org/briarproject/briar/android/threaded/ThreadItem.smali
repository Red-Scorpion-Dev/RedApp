.class public abstract Lorg/briarproject/briar/android/threaded/ThreadItem;
.super Ljava/lang/Object;
.source "ThreadItem.java"

# interfaces
.implements Lorg/briarproject/briar/api/client/MessageTree$MessageNode;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final author:Lorg/briarproject/bramble/api/identity/Author;

.field private final authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

.field private highlighted:Z

.field private isRead:Z

.field private level:I

.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final parentId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final text:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;JLorg/briarproject/bramble/api/identity/Author;Lorg/briarproject/bramble/api/identity/AuthorInfo;Z)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->level:I

    .line 32
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 33
    iput-object p2, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->parentId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 34
    iput-object p3, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->text:Ljava/lang/String;

    .line 35
    iput-wide p4, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->timestamp:J

    .line 36
    iput-object p6, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->author:Lorg/briarproject/bramble/api/identity/Author;

    .line 37
    iput-object p7, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 38
    iput-boolean p8, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead:Z

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->highlighted:Z

    return-void
.end method


# virtual methods
.method public getAuthor()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->author:Lorg/briarproject/bramble/api/identity/Author;

    return-object v0
.end method

.method public getAuthorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->author:Lorg/briarproject/bramble/api/identity/Author;

    iget-object v1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/identity/AuthorInfo;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/briarproject/briar/android/util/UiUtils;->getContactDisplayName(Lorg/briarproject/bramble/api/identity/Author;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->level:I

    return v0
.end method

.method public getParentId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->parentId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->timestamp:J

    return-wide v0
.end method

.method public isHighlighted()Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->highlighted:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead:Z

    return v0
.end method

.method public setHighlighted(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->highlighted:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 83
    iput p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->level:I

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lorg/briarproject/briar/android/threaded/ThreadItem;->isRead:Z

    return-void
.end method
