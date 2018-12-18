.class public final Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;
.super Ljava/lang/Object;
.source "IntroductionManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;",
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

.field private final clientVersioningManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
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

.field private final introduceeEngineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final introducerEngineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;",
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

.field private final metadataParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)V"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p3, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 66
    iput-object p4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    .line 67
    iput-object p5, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 68
    iput-object p6, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    .line 69
    iput-object p7, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 70
    iput-object p8, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    .line 71
    iput-object p9, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->sessionEncoderProvider:Ljavax/inject/Provider;

    .line 72
    iput-object p10, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->sessionParserProvider:Ljavax/inject/Provider;

    .line 73
    iput-object p11, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->introducerEngineProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p12, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->introduceeEngineProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p13, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p14, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;
    .locals 16
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;"
        }
    .end annotation

    .line 145
    new-instance v15, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

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

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v15
.end method

.method public static newIntroductionManagerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/contact/ContactManager;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/briarproject/bramble/api/identity/IdentityManager;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl;
    .locals 16

    .line 177
    new-instance v15, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;

    move-object/from16 v8, p7

    check-cast v8, Lorg/briarproject/briar/introduction/MessageParser;

    move-object/from16 v9, p8

    check-cast v9, Lorg/briarproject/briar/introduction/SessionEncoder;

    move-object/from16 v10, p9

    check-cast v10, Lorg/briarproject/briar/introduction/SessionParser;

    move-object/from16 v11, p10

    check-cast v11, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    move-object/from16 v12, p11

    check-cast v12, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    move-object/from16 v13, p12

    check-cast v13, Lorg/briarproject/briar/introduction/IntroductionCrypto;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v14}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/SessionEncoder;Lorg/briarproject/briar/introduction/SessionParser;Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object v15
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl;
    .locals 16
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
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/introduction/IntroductionCrypto;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;)",
            "Lorg/briarproject/briar/introduction/IntroductionManagerImpl;"
        }
    .end annotation

    .line 113
    new-instance v15, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;

    .line 114
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 115
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 116
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 117
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/data/MetadataParser;

    .line 118
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 119
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 120
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 121
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/introduction/MessageParser;

    .line 122
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/briar/introduction/SessionEncoder;

    .line 123
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/introduction/SessionParser;

    .line 124
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;

    .line 125
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;

    .line 126
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/briarproject/briar/introduction/IntroductionCrypto;

    .line 127
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/briarproject/bramble/api/identity/IdentityManager;

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/briar/introduction/MessageParser;Lorg/briarproject/briar/introduction/SessionEncoder;Lorg/briarproject/briar/introduction/SessionParser;Lorg/briarproject/briar/introduction/IntroducerProtocolEngine;Lorg/briarproject/briar/introduction/IntroduceeProtocolEngine;Lorg/briarproject/briar/introduction/IntroductionCrypto;Lorg/briarproject/bramble/api/identity/IdentityManager;)V

    return-object v15
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->get()Lorg/briarproject/briar/introduction/IntroductionManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/introduction/IntroductionManagerImpl;
    .locals 14

    .line 81
    iget-object v0, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->sessionEncoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->sessionParserProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->introducerEngineProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->introduceeEngineProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->cryptoProvider:Ljavax/inject/Provider;

    iget-object v13, p0, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v13}, Lorg/briarproject/briar/introduction/IntroductionManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/introduction/IntroductionManagerImpl;

    move-result-object v0

    return-object v0
.end method
