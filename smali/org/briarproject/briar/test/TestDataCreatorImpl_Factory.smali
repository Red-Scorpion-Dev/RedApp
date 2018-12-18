.class public final Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;
.super Ljava/lang/Object;
.source "TestDataCreatorImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/test/TestDataCreatorImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final authorFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final blogManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blogPostFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
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

.field private final clockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
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

.field private final cryptoComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
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

.field private final forumManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
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

.field private final ioExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
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

.field private final messagingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;"
        }
    .end annotation
.end field

.field private final privateMessageFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
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
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    .line 74
    iput-object p2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    .line 75
    iput-object p3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    .line 76
    iput-object p4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 77
    iput-object p5, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 78
    iput-object p6, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    .line 79
    iput-object p7, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->cryptoComponentProvider:Ljavax/inject/Provider;

    .line 80
    iput-object p8, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 81
    iput-object p9, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    .line 82
    iput-object p10, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    .line 83
    iput-object p11, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    .line 84
    iput-object p12, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->messagingManagerProvider:Ljavax/inject/Provider;

    .line 85
    iput-object p13, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    .line 86
    iput-object p14, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->forumManagerProvider:Ljavax/inject/Provider;

    .line 87
    iput-object p15, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;"
        }
    .end annotation

    .line 160
    new-instance v16, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;

    move-object/from16 v0, v16

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

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v16
.end method

.method public static newTestDataCreatorImpl(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/briar/api/messaging/MessagingManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/forum/ForumManager;Ljava/util/concurrent/Executor;)Lorg/briarproject/briar/test/TestDataCreatorImpl;
    .locals 17

    .line 194
    new-instance v16, Lorg/briarproject/briar/test/TestDataCreatorImpl;

    move-object/from16 v0, v16

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

    move-object/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Lorg/briarproject/briar/test/TestDataCreatorImpl;-><init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/briar/api/messaging/MessagingManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/forum/ForumManager;Ljava/util/concurrent/Executor;)V

    return-object v16
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestDataCreatorImpl;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/AuthorFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/system/Clock;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogPostFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/crypto/CryptoComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/contact/ContactManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/properties/TransportPropertyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/messaging/MessagingManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/forum/ForumManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lorg/briarproject/briar/test/TestDataCreatorImpl;"
        }
    .end annotation

    .line 126
    new-instance v16, Lorg/briarproject/briar/test/TestDataCreatorImpl;

    .line 127
    invoke-interface/range {p0 .. p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/briarproject/bramble/api/identity/AuthorFactory;

    .line 128
    invoke-interface/range {p1 .. p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/briarproject/bramble/api/system/Clock;

    .line 129
    invoke-interface/range {p2 .. p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;

    .line 130
    invoke-interface/range {p3 .. p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/briarproject/bramble/api/client/ClientHelper;

    .line 131
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 132
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/api/blog/BlogPostFactory;

    .line 133
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    .line 134
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/bramble/api/db/DatabaseComponent;

    .line 135
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 136
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/bramble/api/contact/ContactManager;

    .line 137
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/bramble/api/properties/TransportPropertyManager;

    .line 138
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lorg/briarproject/briar/api/messaging/MessagingManager;

    .line 139
    invoke-interface/range {p12 .. p12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lorg/briarproject/briar/api/blog/BlogManager;

    .line 140
    invoke-interface/range {p13 .. p13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lorg/briarproject/briar/api/forum/ForumManager;

    .line 141
    invoke-interface/range {p14 .. p14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/util/concurrent/Executor;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lorg/briarproject/briar/test/TestDataCreatorImpl;-><init>(Lorg/briarproject/bramble/api/identity/AuthorFactory;Lorg/briarproject/bramble/api/system/Clock;Lorg/briarproject/briar/api/messaging/PrivateMessageFactory;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/briar/api/blog/BlogPostFactory;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/bramble/api/contact/ContactManager;Lorg/briarproject/bramble/api/properties/TransportPropertyManager;Lorg/briarproject/briar/api/messaging/MessagingManager;Lorg/briarproject/briar/api/blog/BlogManager;Lorg/briarproject/briar/api/forum/ForumManager;Ljava/util/concurrent/Executor;)V

    return-object v16
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->get()Lorg/briarproject/briar/test/TestDataCreatorImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/test/TestDataCreatorImpl;
    .locals 15

    .line 92
    iget-object v0, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->authorFactoryProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->clockProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->privateMessageFactoryProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->blogPostFactoryProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->cryptoComponentProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->identityManagerProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->contactManagerProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->transportPropertyManagerProvider:Ljavax/inject/Provider;

    iget-object v11, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->messagingManagerProvider:Ljavax/inject/Provider;

    iget-object v12, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->blogManagerProvider:Ljavax/inject/Provider;

    iget-object v13, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->forumManagerProvider:Ljavax/inject/Provider;

    iget-object v14, p0, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->ioExecutorProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v14}, Lorg/briarproject/briar/test/TestDataCreatorImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/test/TestDataCreatorImpl;

    move-result-object v0

    return-object v0
.end method
