.class Lorg/briarproject/briar/android/conversation/ConversationMessageItem;
.super Lorg/briarproject/briar/android/conversation/ConversationItem;
.source "ConversationMessageItem.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILorg/briarproject/briar/api/messaging/PrivateMessageHeader;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/android/conversation/ConversationItem;-><init>(ILorg/briarproject/briar/api/conversation/ConversationMessageHeader;)V

    .line 21
    invoke-virtual {p2}, Lorg/briarproject/briar/api/messaging/PrivateMessageHeader;->getAttachmentHeaders()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;->attachments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/briarproject/briar/api/messaging/AttachmentHeader;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/conversation/ConversationMessageItem;->attachments:Ljava/util/List;

    return-object v0
.end method
