.class abstract Lorg/briarproject/briar/android/conversation/ConversationItem;
.super Ljava/lang/Object;
.source "ConversationItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final isIncoming:Z

.field private final layoutRes:I

.field private read:Z

.field private seen:Z

.field private sent:Z

.field protected text:Ljava/lang/String;

.field private final time:J


# direct methods
.method constructor <init>(ILorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->layoutRes:I

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->text:Ljava/lang/String;

    .line 30
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 31
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 32
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->time:J

    .line 33
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->isRead()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->read:Z

    .line 34
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->isSent()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->sent:Z

    .line 35
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->isSeen()Z

    move-result p1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->seen:Z

    .line 36
    invoke-virtual {p2}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->isLocal()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->isIncoming:Z

    return-void
.end method


# virtual methods
.method getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getLayout()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->layoutRes:I

    return v0
.end method

.method getText()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method getTime()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->time:J

    return-wide v0
.end method

.method isIncoming()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->isIncoming:Z

    return v0
.end method

.method isRead()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->read:Z

    return v0
.end method

.method isSeen()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->seen:Z

    return v0
.end method

.method isSent()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->sent:Z

    return v0
.end method

.method setSeen(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->seen:Z

    return-void
.end method

.method setSent(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->sent:Z

    return-void
.end method

.method setText(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationItem;->text:Ljava/lang/String;

    return-void
.end method
