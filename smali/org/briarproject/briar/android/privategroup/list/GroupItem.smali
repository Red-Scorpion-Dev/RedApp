.class Lorg/briarproject/briar/android/privategroup/list/GroupItem;
.super Ljava/lang/Object;
.source "GroupItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

.field private dissolved:Z

.field private messageCount:I

.field private final privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

.field private timestamp:J

.field private unreadCount:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/bramble/api/identity/AuthorInfo;Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    .line 24
    iput-object p2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    .line 25
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getMsgCount()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->messageCount:I

    .line 26
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getUnreadCount()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->unreadCount:I

    .line 27
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->timestamp:J

    .line 28
    iput-boolean p4, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->dissolved:Z

    return-void
.end method


# virtual methods
.method addMessageHeader(Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;)V
    .locals 5

    .line 32
    iget v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->messageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->messageCount:I

    .line 33
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->timestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 34
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->timestamp:J

    .line 36
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;->isRead()Z

    move-result p1

    if-nez p1, :cond_1

    .line 37
    iget p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->unreadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->unreadCount:I

    :cond_1
    return-void
.end method

.method getCreator()Lorg/briarproject/bramble/api/identity/Author;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v0

    return-object v0
.end method

.method getCreatorInfo()Lorg/briarproject/bramble/api/identity/AuthorInfo;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->authorInfo:Lorg/briarproject/bramble/api/identity/AuthorInfo;

    return-object v0
.end method

.method getId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method getMessageCount()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->messageCount:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {v0}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrivateGroup()Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->privateGroup:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->timestamp:J

    return-wide v0
.end method

.method getUnreadCount()I
    .locals 1

    .line 74
    iget v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->unreadCount:I

    return v0
.end method

.method isDissolved()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->dissolved:Z

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 62
    iget v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->messageCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setDissolved()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupItem;->dissolved:Z

    return-void
.end method
