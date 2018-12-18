.class abstract Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;
.super Ljava/lang/Object;
.source "AbstractIntroductionMessage.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final groupId:Lorg/briarproject/bramble/api/sync/GroupId;

.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final timestamp:J


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    .line 24
    iput-wide p3, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->timestamp:J

    .line 25
    iput-object p5, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-void
.end method


# virtual methods
.method getGroupId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->groupId:Lorg/briarproject/bramble/api/sync/GroupId;

    return-object v0
.end method

.method getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getPreviousMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->previousMessageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method getTimestamp()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lorg/briarproject/briar/introduction/AbstractIntroductionMessage;->timestamp:J

    return-wide v0
.end method
