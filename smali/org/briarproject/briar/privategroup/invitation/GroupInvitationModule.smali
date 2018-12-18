.class public Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule;
.super Ljava/lang/Object;
.source "GroupInvitationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/privategroup/invitation/GroupInvitationModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideGroupInvitationFactory(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationFactoryImpl;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideGroupInvitationManager(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;)Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 45
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 46
    sget-object p2, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 v0, 0x0

    invoke-interface {p3, p2, v0, p1}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 48
    invoke-interface {p4, p1}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 49
    invoke-interface {p5, p1}, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->registerPrivateGroupHook(Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;)V

    .line 50
    invoke-interface {p6, p1}, Lorg/briarproject/briar/api/conversation/ConversationManager;->registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V

    .line 51
    sget-object p2, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {p7, p2, v0, v0, p1}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    .line 55
    sget-object p2, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    .line 58
    invoke-virtual {p1}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->getPrivateGroupClientVersioningHook()Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;

    move-result-object p3

    .line 55
    invoke-interface {p7, p2, v0, v0, p3}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p1
.end method

.method provideGroupInvitationValidator(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/bramble/api/sync/ValidationManager;)Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;
    .locals 7
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 69
    new-instance v6, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;)V

    .line 72
    sget-object p1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p6, p1, p2, v6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v6
.end method

.method provideMessageEncoder(Lorg/briarproject/briar/privategroup/invitation/MessageEncoderImpl;)Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideMessageParser(Lorg/briarproject/briar/privategroup/invitation/MessageParserImpl;)Lorg/briarproject/briar/privategroup/invitation/MessageParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideProtocolEngineFactory(Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionEncoder(Lorg/briarproject/briar/privategroup/invitation/SessionEncoderImpl;)Lorg/briarproject/briar/privategroup/invitation/SessionEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionParser(Lorg/briarproject/briar/privategroup/invitation/SessionParserImpl;)Lorg/briarproject/briar/privategroup/invitation/SessionParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
