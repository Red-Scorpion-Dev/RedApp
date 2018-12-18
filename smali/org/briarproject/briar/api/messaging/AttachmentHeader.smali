.class public Lorg/briarproject/briar/api/messaging/AttachmentHeader;
.super Ljava/lang/Object;
.source "AttachmentHeader.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/api/messaging/AttachmentHeader;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 17
    iput-object p2, p0, Lorg/briarproject/briar/api/messaging/AttachmentHeader;->contentType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/api/messaging/AttachmentHeader;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/api/messaging/AttachmentHeader;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method
