.class public Lorg/briarproject/briar/android/contact/ContactListItem;
.super Lorg/briarproject/briar/android/contact/ContactItem;
.source "ContactListItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private empty:Z

.field private timestamp:J

.field private unread:I


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/contact/Contact;ZLorg/briarproject/briar/api/client/MessageTracker$GroupCount;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/contact/ContactItem;-><init>(Lorg/briarproject/bramble/api/contact/Contact;Z)V

    .line 21
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getMsgCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->empty:Z

    .line 22
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getUnreadCount()I

    move-result p1

    iput p1, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->unread:I

    .line 23
    invoke-virtual {p3}, Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;->getLatestMsgTime()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->timestamp:J

    return-void
.end method


# virtual methods
.method addMessage(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V
    .locals 5

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->empty:Z

    .line 28
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->getTimestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->timestamp:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->timestamp:J

    .line 29
    :cond_0
    invoke-virtual {p1}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->isRead()Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->unread:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->unread:I

    :cond_1
    return-void
.end method

.method getTimestamp()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->timestamp:J

    return-wide v0
.end method

.method getUnreadCount()I
    .locals 1

    .line 41
    iget v0, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->unread:I

    return v0
.end method

.method isEmpty()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/briarproject/briar/android/contact/ContactListItem;->empty:Z

    return v0
.end method
