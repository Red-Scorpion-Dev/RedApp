.class public final Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;
.super Ljava/lang/Object;
.source "ProtocolEngineFactoryImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;",
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

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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

.field private final groupMessageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
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

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final messageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParser;",
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

.field private final privateGroupFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final privateGroupManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->groupMessageFactoryProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p11, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;
    .locals 13
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
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;"
        }
    .end annotation

    .line 122
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newProtocolEngineFactoryImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Ljava/lang/Object;Ljava/lang/Object;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;
    .locals 13

    .line 148
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;

    move-object/from16 v8, p7

    check-cast v8, Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    move-object/from16 v9, p8

    check-cast v9, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;
    .locals 13
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
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;)",
            "Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;"
        }
    .end annotation

    .line 96
    new-instance v12, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;

    .line 97
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 98
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 99
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 100
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;

    .line 101
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;

    .line 102
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;

    .line 103
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 104
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/privategroup/invitation/MessageParser;

    .line 105
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;

    .line 106
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 107
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/bramble/api/system/Clock;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;Lorg/briarproject/briar/api/privategroup/PrivateGroupFactory;Lorg/briarproject/briar/api/privategroup/GroupMessageFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/privategroup/invitation/MessageParser;Lorg/briarproject/briar/privategroup/invitation/MessageEncoder;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;)V

    return-object v12
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->get()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;
    .locals 11

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->privateGroupManagerProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->privateGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->groupMessageFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/privategroup/invitation/ProtocolEngineFactoryImpl;

    move-result-object v0

    return-object v0
.end method
