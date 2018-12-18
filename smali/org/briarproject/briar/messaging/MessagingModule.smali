.class public Lorg/briarproject/briar/messaging/MessagingModule;
.super Ljava/lang/Object;
.source "MessagingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/messaging/MessagingModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getConversationManager(Lorg/briarproject/briar/messaging/ConversationManagerImpl;)Lorg/briarproject/briar/api/conversation/ConversationManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method getMessagingManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/messaging/MessagingManagerImpl;)Lorg/briarproject/briar/api/messaging/MessagingManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 61
    invoke-interface {p1, p6}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 62
    invoke-interface {p2, p6}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 63
    sget-object p1, Lorg/briarproject/briar/api/messaging/MessagingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2, p6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 65
    invoke-interface {p4, p6}, Lorg/briarproject/briar/api/conversation/ConversationManager;->registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V

    .line 66
    sget-object p1, Lorg/briarproject/briar/api/messaging/MessagingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-interface {p5, p1, p2, p2, p6}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p6
.end method

.method getValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/messaging/PrivateMessageValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 47
    new-instance v0, Lorg/briarproject/briar/messaging/PrivateMessageValidator;

    invoke-direct {v0, p2, p3, p4}, Lorg/briarproject/briar/messaging/PrivateMessageValidator;-><init>(Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 49
    sget-object p2, Lorg/briarproject/briar/api/messaging/MessagingManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, v0}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v0
.end method

.method providePrivateMessageFactory(Lorg/briarproject/briar/messaging/PrivateMessageFactoryImpl;)Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
