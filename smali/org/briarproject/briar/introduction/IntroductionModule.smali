.class public Lorg/briarproject/briar/introduction/IntroductionModule;
.super Ljava/lang/Object;
.source "IntroductionModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/introduction/IntroductionModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideIntroductionCrypto(Lorg/briarproject/briar/introduction/IntroductionCryptoImpl;)Lorg/briarproject/briar/introduction/IntroductionCrypto;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideIntroductionManager(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/api/conversation/ConversationManager;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/introduction/IntroductionManagerImpl;)Lorg/briarproject/briar/api/introduction/IntroductionManager;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 54
    invoke-interface {p1, p6}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;->registerClient(Lorg/briarproject/bramble/api/sync/Client;)V

    .line 55
    invoke-interface {p2, p6}, Lorg/briarproject/bramble/api/contact/ContactManager;->registerContactHook(Lorg/briarproject/bramble/api/contact/ContactManager$ContactHook;)V

    .line 56
    sget-object p1, Lorg/briarproject/briar/api/introduction/IntroductionManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p2, 0x1

    invoke-interface {p3, p1, p2, p6}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerIncomingMessageHook(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$IncomingMessageHook;)V

    .line 58
    invoke-interface {p4, p6}, Lorg/briarproject/briar/api/conversation/ConversationManager;->registerConversationClient(Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;)V

    .line 59
    sget-object p1, Lorg/briarproject/briar/api/introduction/IntroductionManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x0

    invoke-interface {p5, p1, p2, p3, p6}, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;->registerClient(Lorg/briarproject/bramble/api/sync/ClientId;IILorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;)V

    return-object p6
.end method

.method provideMessageEncoder(Lorg/briarproject/briar/introduction/MessageEncoderImpl;)Lorg/briarproject/briar/introduction/MessageEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideMessageParser(Lorg/briarproject/briar/introduction/MessageParserImpl;)Lorg/briarproject/briar/introduction/MessageParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionEncoder(Lorg/briarproject/briar/introduction/SessionEncoderImpl;)Lorg/briarproject/briar/introduction/SessionEncoder;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideSessionParser(Lorg/briarproject/briar/introduction/SessionParserImpl;)Lorg/briarproject/briar/introduction/SessionParser;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method

.method provideValidator(Lorg/briarproject/bramble/api/sync/ValidationManager;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/introduction/IntroductionValidator;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 38
    new-instance v0, Lorg/briarproject/briar/introduction/IntroductionValidator;

    invoke-direct {v0, p2, p4, p3, p5}, Lorg/briarproject/briar/introduction/IntroductionValidator;-><init>(Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/data/MetadataEncoder;Lorg/briarproject/bramble/api/system/Clock;)V

    .line 41
    sget-object p2, Lorg/briarproject/briar/api/introduction/IntroductionManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3, v0}, Lorg/briarproject/bramble/api/sync/ValidationManager;->registerMessageValidator(Lorg/briarproject/bramble/api/sync/ClientId;ILorg/briarproject/bramble/api/sync/ValidationManager$MessageValidator;)V

    return-object v0
.end method
