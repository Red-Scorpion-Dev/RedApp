.class public Lorg/briarproject/bramble/api/sync/MessageStatus;
.super Ljava/lang/Object;
.source "MessageStatus.java"


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final messageId:Lorg/briarproject/bramble/api/sync/MessageId;

.field private final seen:Z

.field private final sent:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    .line 14
    iput-object p2, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    .line 15
    iput-boolean p3, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->sent:Z

    .line 16
    iput-boolean p4, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->seen:Z

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getMessageId()Lorg/briarproject/bramble/api/sync/MessageId;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->messageId:Lorg/briarproject/bramble/api/sync/MessageId;

    return-object v0
.end method

.method public isSeen()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->seen:Z

    return v0
.end method

.method public isSent()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/sync/MessageStatus;->sent:Z

    return v0
.end method
