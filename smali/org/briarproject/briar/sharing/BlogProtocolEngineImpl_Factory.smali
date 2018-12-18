.class public final Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;
.super Ljava/lang/Object;
.source "BlogProtocolEngineImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final blogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;"
        }
    .end annotation
.end field

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

.field private final invitationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageEncoderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final messageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;>;"
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
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
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p2, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p3, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p4, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p5, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p6, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p7, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p8, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p9, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->invitationFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;
    .locals 11
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
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;>;)",
            "Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;"
        }
    .end annotation

    .line 105
    new-instance v10, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v10
.end method

.method public static newBlogProtocolEngineImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Ljava/lang/Object;Ljava/lang/Object;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/sharing/InvitationFactory;)Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/system/Clock;",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;)",
            "Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;"
        }
    .end annotation

    .line 127
    new-instance v10, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;

    move-object v4, p3

    check-cast v4, Lorg/briarproject/briar/sharing/MessageEncoder;

    move-object v5, p4

    check-cast v5, Lorg/briarproject/briar/sharing/MessageParser;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    return-object v10
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;
    .locals 11
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
            "Lorg/briarproject/briar/sharing/MessageEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;>;)",
            "Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;"
        }
    .end annotation

    .line 83
    new-instance v10, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;

    .line 84
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 85
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 86
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;

    .line 87
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/briar/sharing/MessageEncoder;

    .line 88
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/sharing/MessageParser;

    .line 89
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 90
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/system/Clock;

    .line 91
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 92
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/briar/sharing/InvitationFactory;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/briar/sharing/MessageEncoder;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    return-object v10
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->get()Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;
    .locals 9

    .line 61
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageEncoderProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->invitationFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v8}, Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/BlogProtocolEngineImpl;

    move-result-object v0

    return-object v0
.end method
