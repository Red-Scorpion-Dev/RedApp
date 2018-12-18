.class Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;
.super Lorg/briarproject/briar/sharing/SharingManagerImpl;
.source "ForumSharingManagerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;
.implements Lorg/briarproject/briar/api/forum/ForumSharingManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/sharing/SharingManagerImpl<",
        "Lorg/briarproject/briar/api/forum/Forum;",
        ">;",
        "Lorg/briarproject/briar/api/forum/ForumManager$RemoveForumHook;",
        "Lorg/briarproject/briar/api/forum/ForumSharingManager;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            ">;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/forum/Forum;",
            "Lorg/briarproject/briar/api/forum/ForumInvitationResponse;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct/range {p0 .. p11}, Lorg/briarproject/briar/sharing/SharingManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    return-void
.end method


# virtual methods
.method protected getClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 41
    sget-object v0, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 51
    sget-object v0, Lorg/briarproject/briar/api/forum/ForumManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method protected getShareableMajorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removingForum(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/forum/Forum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/sharing/ForumSharingManagerImpl;->removingShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/sharing/Shareable;)V

    return-void
.end method
