.class public interface abstract Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;
.super Ljava/lang/Object;
.source "GroupInvitationManager.java"

# interfaces
.implements Lorg/briarproject/briar/api/conversation/ConversationManager$ConversationClient;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I

.field public static final MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.privategroup.invitation"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method


# virtual methods
.method public abstract getInvitations()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract isInvitationAllowed(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/client/SessionId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract respondToInvitation(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract revealRelationship(Lorg/briarproject/bramble/api/contact/ContactId;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract sendInvitation(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/contact/ContactId;Ljava/lang/String;J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
