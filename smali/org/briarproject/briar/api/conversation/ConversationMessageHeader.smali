.class public abstract Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
.super Ljava/lang/Object;
.source "ConversationMessageHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final id:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final local:Z

.field private final read:Z

.field private final seen:Z

.field private final sent:Z

.field private final timestamp:J


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZ)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 21
    iput-object p2, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 22
    iput-wide p3, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->timestamp:J

    .line 23
    iput-boolean p5, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->local:Z

    .line 24
    iput-boolean p7, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->sent:Z

    .line 25
    iput-boolean p8, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->seen:Z

    .line 26
    iput-boolean p6, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->read:Z

    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method public getId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->id:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->timestamp:J

    return-wide v0
.end method

.method public isLocal()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->local:Z

    return v0
.end method

.method public isRead()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->read:Z

    return v0
.end method

.method public isSeen()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->seen:Z

    return v0
.end method

.method public isSent()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;->sent:Z

    return v0
.end method
