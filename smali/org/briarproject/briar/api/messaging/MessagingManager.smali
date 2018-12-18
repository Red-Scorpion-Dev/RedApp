.class public interface abstract Lorg/briarproject/briar/api/messaging/MessagingManager;
.super Ljava/lang/Object;
.source "MessagingManager.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I

.field public static final MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.messaging"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/messaging/MessagingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method


# virtual methods
.method public abstract addLocalAttachment(Lorg/briarproject/bramble/api/sync/GroupId;JLjava/lang/String;Ljava/nio/ByteBuffer;)Lorg/briarproject/briar/api/messaging/AttachmentHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addLocalMessage(Lorg/briarproject/briar/api/messaging/PrivateMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getAttachment(Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/api/messaging/Attachment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getContactId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getConversationId(Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/sync/GroupId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
