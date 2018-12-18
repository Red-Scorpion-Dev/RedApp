.class public final Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;
.super Ljava/lang/Object;
.source "ForumSharingManagerImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;",
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

.field private final dbProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final engineProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;"
        }
    .end annotation
.end field

.field private final invitationFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private final messageParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
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
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParser;",
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
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p2, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p3, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p4, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p5, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    .line 60
    iput-object p6, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->sessionEncoderProvider:Ljavax/inject/Provider;

    .line 61
    iput-object p7, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->sessionParserProvider:Ljavax/inject/Provider;

    .line 62
    iput-object p8, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    .line 63
    iput-object p9, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    .line 64
    iput-object p10, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->engineProvider:Ljavax/inject/Provider;

    .line 65
    iput-object p11, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->invitationFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;
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
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;>;)",
            "Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;"
        }
    .end annotation

    .line 122
    new-instance v12, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;

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

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v12
.end method

.method public static newForumSharingManagerImpl(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Ljava/lang/Object;Lorg/briarproject/briar/sharing/InvitationFactory;)Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            "Ljava/lang/Object;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;)",
            "Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;"
        }
    .end annotation

    .line 148
    new-instance v12, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;

    move-object/from16 v5, p4

    check-cast v5, Lorg/briarproject/briar/sharing/MessageParser;

    move-object/from16 v6, p5

    check-cast v6, Lorg/briarproject/briar/sharing/SessionEncoder;

    move-object/from16 v7, p6

    check-cast v7, Lorg/briarproject/briar/sharing/SessionParser;

    move-object/from16 v10, p9

    check-cast v10, Lorg/briarproject/briar/sharing/ProtocolEngine;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    return-object v12
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;
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
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;>;)",
            "Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;"
        }
    .end annotation

    .line 96
    new-instance v12, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;

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

    check-cast v4, Lorg/briarproject/bramble/api/data/MetadataParser;

    .line 101
    invoke-interface/range {p4 .. p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/briarproject/briar/sharing/MessageParser;

    .line 102
    invoke-interface/range {p5 .. p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/briarproject/briar/sharing/SessionEncoder;

    .line 103
    invoke-interface/range {p6 .. p6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/briarproject/briar/sharing/SessionParser;

    .line 104
    invoke-interface/range {p7 .. p7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/briarproject/briar/api/client/MessageTracker;

    .line 105
    invoke-interface/range {p8 .. p8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/briarproject/bramble/api/client/ContactGroupFactory;

    .line 106
    invoke-interface/range {p9 .. p9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lorg/briarproject/briar/sharing/ProtocolEngine;

    .line 107
    invoke-interface/range {p10 .. p10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/briarproject/briar/sharing/InvitationFactory;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    return-object v12
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->get()Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;
    .locals 11

    .line 70
    iget-object v0, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->dbProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->clientHelperProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->clientVersioningManagerProvider:Ljavax/inject/Provider;

    iget-object v3, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->metadataParserProvider:Ljavax/inject/Provider;

    iget-object v4, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->messageParserProvider:Ljavax/inject/Provider;

    iget-object v5, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->sessionEncoderProvider:Ljavax/inject/Provider;

    iget-object v6, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->sessionParserProvider:Ljavax/inject/Provider;

    iget-object v7, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->messageTrackerProvider:Ljavax/inject/Provider;

    iget-object v8, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->contactGroupFactoryProvider:Ljavax/inject/Provider;

    iget-object v9, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->engineProvider:Ljavax/inject/Provider;

    iget-object v10, p0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->invitationFactoryProvider:Ljavax/inject/Provider;

    invoke-static/range {v0 .. v10}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;

    move-result-object v0

    return-object v0
.end method
