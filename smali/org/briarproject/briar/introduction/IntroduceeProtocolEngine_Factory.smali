.class public final Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;
.super Ljava/lang/Object;
.source "IntroduceeProtocolEngine_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientHelperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final contactGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final contactManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;"
        }
    .end annotation
.end field

.field private final cryptoProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;"
        }
    .end annotation
.end field

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final identityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final messageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;"
        }
    .end annotation
.end field

.field private final messageTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final transportPropertyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p4, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageParserProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p8, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p9, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p10, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p11, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p12, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;"
        }
    .end annotation

    .line 130
    new-instance v13, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v13
.end method

.method public static newIntroduceeProtocolEngine(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/lang/Object;Ljava/lang/Object;Lorg/briarproject/bramble/api/system/Clock;Ljava/lang/Object;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;
    .locals 14

    .line 158
    new-instance v13, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-object/from16 v7, p6

    check-cast v7, Lorg/briarproject/briar/introduction/MessageParser;

    move-object/from16 v8, p7

    check-cast v8, Lorg/briarproject/briar/introduction/MessageEncoder;

    move-object/from16 v10, p9

    check-cast v10, Lorg/briarproject/briar/introduction/IntroductionCrypto;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V

    return-object v13
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/transport/KeyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;"
        }
    .end annotation

    .line 102
    new-instance v13, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 103
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 104
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 105
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 106
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 107
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 108
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 109
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/briar/introduction/MessageParser;

    .line 110
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/introduction/MessageEncoder;

    .line 111
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/system/Clock;

    .line 112
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 113
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/bramble/api/transport/KeyManager;

    .line 114
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/MessageEncoder;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/transport/KeyManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;)V

    return-object v13
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->get()Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;
    .locals 12

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageParserProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->keyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v11}, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-result-object v0

    return-object v0
.end method
