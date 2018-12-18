.class public Lorg/briarproject/briar/sharing/SharingModule;
.super Ljava/lang/Object;
.source "SharingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/sharing/SharingModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideBlogInvitationFactory(Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;)Lorg/briarproject/briar/sharing/InvitationFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/BlogInvitationFactoryImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideBlogMessageParser(Lorg/briarproject/briar/sharing/BlogMessageParserImpl;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/BlogMessageParserImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideBlogProtocolEngine(Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;)Lorg/briarproject/briar/sharing/ProtocolEngine;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideBlogSharingManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;)Lorg/briarproject/briar/api/blog/BlogSharingManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 79
    invoke-interface {p1, p7}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 80
    invoke-interface {p2, p7}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 81
    sget-object p1, Lorg/briarproject/briar/api/blog/BlogSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p7}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 84
    invoke-interface {p4, p7}, Lorg/briarproject/briar/api/conversation/ConversationManager;->registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V

    .line 85
    invoke-interface {p5, p7}, Lorg/briarproject/briar/api/blog/BlogManager;->registerRemoveBlogHook(Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;)V

    .line 86
    sget-object p1, Lorg/briarproject/briar/api/blog/BlogSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {p6, p1, p2, p2, p7}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    .line 91
    sget-object p1, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 93
    invoke-virtual {p7}, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->getShareableClientVersioningHook()Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;

    move-result-object p3

    .line 91
    invoke-interface {p6, p1, p2, p2, p3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p7
.end method

.method provideBlogSharingValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogFactory;)Lorg/briarproject/briar/sharing/BlogSharingValidator;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 63
    new-instance v6, Lorg/briarproject/briar/sharing/BlogSharingValidator;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/BlogSharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogFactory;)V

    .line 66
    sget-object p2, Lorg/briarproject/briar/api/blog/BlogSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v6
.end method

.method provideForumInvitationFactory(Lorg/briarproject/briar/sharing/ForumInvitationFactoryImpl;)Lorg/briarproject/briar/sharing/InvitationFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/ForumInvitationFactoryImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideForumMessageParser(Lorg/briarproject/briar/sharing/ForumMessageParserImpl;)Lorg/briarproject/briar/sharing/MessageParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/ForumMessageParserImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideForumProtocolEngine(Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl;)Lorg/briarproject/briar/sharing/ProtocolEngine;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/sharing/ForumProtocolEngineImpl;",
            ")",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method provideForumSharingManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/briar/api/forum/ForumManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;)Lorg/briarproject/briar/api/forum/ForumSharingManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 138
    invoke-interface {p1, p7}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 139
    invoke-interface {p2, p7}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 140
    sget-object p1, Lorg/briarproject/briar/api/forum/ForumSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p7}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 143
    invoke-interface {p4, p7}, Lorg/briarproject/briar/api/conversation/ConversationManager;->registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V

    .line 144
    invoke-interface {p5, p7}, Lorg/briarproject/briar/api/forum/ForumManager;->registerRemoveForumHook(Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;)V

    .line 145
    sget-object p1, Lorg/briarproject/briar/api/forum/ForumSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {p6, p1, p2, p2, p7}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    .line 150
    sget-object p1, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 152
    invoke-virtual {p7}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;->getShareableClientVersioningHook()Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;

    move-result-object p3

    .line 150
    invoke-interface {p6, p1, p2, p2, p3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p7
.end method

.method provideForumSharingValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)Lorg/briarproject/briar/sharing/ForumSharingValidator;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 121
    new-instance v6, Lorg/briarproject/briar/sharing/ForumSharingValidator;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/sharing/ForumSharingValidator;-><init>(Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/forum/ForumFactory;)V

    .line 124
    sget-object p2, Lorg/briarproject/briar/api/forum/ForumSharingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v6
.end method

.method provideMessageEncoder(Lorg/briarproject/briar/sharing/MessageEncoderImpl;)Lorg/briarproject/briar/sharing/MessageEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionEncoder(Lorg/briarproject/briar/sharing/SessionEncoderImpl;)Lorg/briarproject/briar/sharing/SessionEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionParser(Lorg/briarproject/briar/sharing/SessionParserImpl;)Lorg/briarproject/briar/sharing/SessionParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
