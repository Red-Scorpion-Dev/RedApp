.class Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;
.super Lorg/briarproject/briar/sharing/ProtocolEngineImpl;
.source "BlogProtocolEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/sharing/ProtocolEngineImpl<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field private final invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/sharing/InvitationFactory;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/system/Clock;",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;)V"
        }
    .end annotation

    move-object v10, p0

    .line 43
    sget-object v8, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/ProtocolEngineImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/bramble/api/sync/ClientId;I)V

    move-object/from16 v0, p8

    .line 46
    iput-object v0, v10, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    move-object/from16 v0, p9

    .line 47
    iput-object v0, v10, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    return-void
.end method


# virtual methods
.method protected addShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;,
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->messageParser:Lorg/briarproject/briar/sharing/MessageParser;

    .line 88
    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/sharing/MessageParser;->getInviteMessage(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/MessageId;)Lorg/briarproject/briar/sharing/InviteMessage;

    move-result-object p2

    .line 89
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-virtual {p2}, Lorg/briarproject/briar/sharing/InviteMessage;->getShareable()Lorg/briarproject/briar/api/sharing/Shareable;

    move-result-object p2

    check-cast p2, Lorg/briarproject/briar/api/blog/Blog;

    invoke-interface {v0, p1, p2}, Lorg/briarproject/briar/api/blog/BlogManager;->addBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V

    return-void
.end method

.method getInvitationRequestReceivedEvent(Lorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/bramble/api/event/Event;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/InviteMessage<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/bramble/api/contact/ContactId;",
            "ZZ)",
            "Lorg/briarproject/bramble/api/event/Event;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move v8, p4

    .line 54
    invoke-interface/range {v0 .. v8}, Lorg/briarproject/briar/sharing/InvitationFactory;->createInvitationRequest(ZZZZLorg/briarproject/briar/sharing/InviteMessage;Lorg/briarproject/bramble/api/contact/ContactId;ZZ)Lorg/briarproject/briar/api/conversation/ConversationRequest;

    move-result-object p1

    .line 56
    new-instance p3, Lorg/briarproject/briar/api/blog/event/BlogInvitationRequestReceivedEvent;

    invoke-direct {p3, p1, p2}, Lorg/briarproject/briar/api/blog/event/BlogInvitationRequestReceivedEvent;-><init>(Lorg/briarproject/briar/api/conversation/ConversationRequest;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-object p3
.end method

.method getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/AcceptMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;
    .locals 11

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    .line 63
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/AcceptMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/AcceptMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 64
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/AcceptMessage;->getTimestamp()J

    move-result-wide v3

    .line 65
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/AcceptMessage;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 63
    invoke-interface/range {v0 .. v10}, Lorg/briarproject/briar/sharing/InvitationFactory;->createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/sharing/InvitationResponse;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;

    .line 66
    new-instance v0, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;-><init>(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-object v0
.end method

.method getInvitationResponseReceivedEvent(Lorg/briarproject/briar/sharing/DeclineMessage;Lorg/briarproject/bramble/api/contact/ContactId;)Lorg/briarproject/bramble/api/event/Event;
    .locals 11

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;->invitationFactory:Lorg/briarproject/briar/sharing/InvitationFactory;

    .line 73
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/DeclineMessage;->getId()Lorg/briarproject/bramble/api/sync/MessageId;

    move-result-object v1

    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/DeclineMessage;->getContactGroupId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v2

    .line 74
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/DeclineMessage;->getTimestamp()J

    move-result-wide v3

    .line 75
    invoke-virtual {p1}, Lorg/briarproject/briar/sharing/DeclineMessage;->getShareableId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 73
    invoke-interface/range {v0 .. v10}, Lorg/briarproject/briar/sharing/InvitationFactory;->createInvitationResponse(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;JZZZZZLorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/sharing/InvitationResponse;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/api/blog/BlogInvitationResponse;

    .line 76
    new-instance v0, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;

    invoke-direct {v0, p1, p2}, Lorg/briarproject/briar/api/blog/event/BlogInvitationResponseReceivedEvent;-><init>(Lorg/briarproject/briar/api/blog/BlogInvitationResponse;Lorg/briarproject/bramble/api/contact/ContactId;)V

    return-object v0
.end method

.method protected getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 81
    sget-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method
