.class public abstract Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;
.super Lorg/briarproject/bramble/api/event/Event;
.source "ConversationMessageReceivedEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;",
        ">",
        "Lorg/briarproject/bramble/api/event/Event;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final contactId:Lorg/briarproject/bramble/api/contact/ContactId;

.field private final messageHeader:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TH;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;Lorg/briarproject/bramble/api/contact/ContactId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TH;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lorg/briarproject/bramble/api/event/Event;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->messageHeader:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    .line 23
    iput-object p2, p0, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-void
.end method


# virtual methods
.method public getContactId()Lorg/briarproject/bramble/api/contact/ContactId;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->contactId:Lorg/briarproject/bramble/api/contact/ContactId;

    return-object v0
.end method

.method public getMessageHeader()Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TH;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lorg/briarproject/briar/api/conversation/event/ConversationMessageReceivedEvent;->messageHeader:Lorg/briarproject/briar/api/conversation/ConversationMessageHeader;

    return-object v0
.end method
