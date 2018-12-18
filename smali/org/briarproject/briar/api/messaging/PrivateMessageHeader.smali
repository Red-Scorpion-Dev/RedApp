.class public Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;
.super Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
.source "PrivateMessageHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final attachmentHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;"
        }
    .end annotation
.end field

.field private final hasText:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "JZZZZZ",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p8}, Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZ)V

    .line 24
    iput-boolean p9, p0, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->hasText:Z

    .line 25
    iput-object p10, p0, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->attachmentHeaders:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 38
    invoke-interface {p1, p0}, Lorg/briarproject/briar/api/conversation/ConversationMessageVisitor;->visitPrivateMessageHeader(Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAttachmentHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->attachmentHeaders:Ljava/util/List;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->hasText:Z

    return v0
.end method
