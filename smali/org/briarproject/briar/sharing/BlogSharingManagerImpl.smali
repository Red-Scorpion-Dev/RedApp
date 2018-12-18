.class Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;
.super Lorg/briarproject/briar/sharing/SharingManagerImpl;
.source "BlogSharingManagerImpl.java"

# interfaces
.implements Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;
.implements Lorg/briarproject/briar/api/blog/BlogSharingManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/sharing/SharingManagerImpl<",
        "Lorg/briarproject/briar/api/blog/Blog;",
        ">;",
        "Lorg/briarproject/briar/api/blog/BlogManager$RemoveBlogHook;",
        "Lorg/briarproject/briar/api/blog/BlogSharingManager;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

.field private final identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;Lorg/briarproject/bramble/api/identity/IdentityManager;Lorg/briarproject/briar/api/blog/BlogManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/db/DatabaseComponent;",
            "Lorg/briarproject/bramble/api/client/ClientHelper;",
            "Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;",
            "Lorg/briarproject/bramble/api/data/MetadataParser;",
            "Lorg/briarproject/briar/sharing/MessageParser<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/briar/sharing/SessionEncoder;",
            "Lorg/briarproject/briar/sharing/SessionParser;",
            "Lorg/briarproject/briar/api/client/MessageTracker;",
            "Lorg/briarproject/bramble/api/client/ContactGroupFactory;",
            "Lorg/briarproject/briar/sharing/ProtocolEngine<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            ">;",
            "Lorg/briarproject/briar/sharing/InvitationFactory<",
            "Lorg/briarproject/briar/api/blog/Blog;",
            "Lorg/briarproject/briar/api/blog/BlogInvitationResponse;",
            ">;",
            "Lorg/briarproject/bramble/api/identity/IdentityManager;",
            "Lorg/briarproject/briar/api/blog/BlogManager;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct/range {p0 .. p11}, Lorg/briarproject/briar/sharing/SharingManagerImpl;-><init>(Lorg/briarproject/bramble/api/db/DatabaseComponent;Lorg/briarproject/bramble/api/client/ClientHelper;Lorg/briarproject/bramble/api/versioning/ClientVersioningManager;Lorg/briarproject/bramble/api/data/MetadataParser;Lorg/briarproject/briar/sharing/MessageParser;Lorg/briarproject/briar/sharing/SessionEncoder;Lorg/briarproject/briar/sharing/SessionParser;Lorg/briarproject/briar/api/client/MessageTracker;Lorg/briarproject/bramble/api/client/ContactGroupFactory;Lorg/briarproject/briar/sharing/ProtocolEngine;Lorg/briarproject/briar/sharing/InvitationFactory;)V

    .line 47
    iput-object p12, p0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    .line 48
    iput-object p13, p0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    return-void
.end method


# virtual methods
.method public addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1, p2}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->addingContact(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;)V

    .line 77
    iget-object v0, p0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->identityManager:Lorg/briarproject/bramble/api/identity/IdentityManager;

    invoke-interface {v0, p1}, Lorg/briarproject/bramble/api/identity/IdentityManager;->getLocalAuthor(Lorg/briarproject/bramble/api/db/Transaction;)Lorg/briarproject/bramble/api/identity/LocalAuthor;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-interface {v1, v0}, Lorg/briarproject/briar/api/blog/BlogManager;->getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->blogManager:Lorg/briarproject/briar/api/blog/BlogManager;

    invoke-virtual {p2}, Lorg/briarproject/bramble/api/contact/Contact;->getAuthor()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/briarproject/briar/api/blog/BlogManager;->getPersonalBlog(Lorg/briarproject/bramble/api/identity/Author;)Lorg/briarproject/briar/api/blog/Blog;

    move-result-object v1

    .line 83
    :try_start_0
    invoke-virtual {v0}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->preShareGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group;)V

    .line 84
    invoke-virtual {v1}, Lorg/briarproject/briar/api/blog/Blog;->getGroup()Lorg/briarproject/bramble/api/sync/Group;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->preShareGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group;)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 86
    new-instance p2, Lorg/briarproject/bramble/api/db/DbException;

    invoke-direct {p2, p1}, Lorg/briarproject/bramble/api/db/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected getClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 53
    sget-object v0, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method protected getMajorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getShareableClientId()Lorg/briarproject/bramble/api/sync/ClientId;
    .locals 1

    .line 63
    sget-object v0, Lorg/briarproject/briar/api/blog/BlogManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-object v0
.end method

.method protected getShareableMajorVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public removingBlog(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/blog/Blog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/briar/sharing/BlogSharingManagerImpl;->removingShareable(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/sharing/Shareable;)V

    return-void
.end method
