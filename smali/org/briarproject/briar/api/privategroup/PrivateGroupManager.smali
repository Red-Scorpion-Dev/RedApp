.class public interface abstract Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;
.super Ljava/lang/Object;
.source "PrivateGroupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

.field public static final MAJOR_VERSION:I

.field public static final MINOR_VERSION:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lorg/briarproject/bramble/api/sync/ClientId;

    const-string v1, "org.briarproject.briar.privategroup"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/sync/ClientId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/PrivateGroupManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    return-void
.end method


# virtual methods
.method public abstract addLocalMessage(Lorg/briarproject/briar/api/privategroup/GroupMessage;)Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract addPrivateGroup(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/briar/api/privategroup/GroupMessage;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getGroupCount(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/client/MessageTracker$GroupCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getHeaders(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/GroupMessageHeader;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMembers(Lorg/briarproject/bramble/api/sync/GroupId;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/GroupMember;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getMessageText(Lorg/briarproject/bramble/api/sync/MessageId;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPreviousMsgId(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/bramble/api/sync/MessageId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPrivateGroup(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)Lorg/briarproject/briar/api/privategroup/PrivateGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract getPrivateGroups()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract isDissolved(Lorg/briarproject/bramble/api/sync/GroupId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract isMember(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/Author;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract markGroupDissolved(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract registerPrivateGroupHook(Lorg/briarproject/briar/api/privategroup/PrivateGroupManager$PrivateGroupHook;)V
.end method

.method public abstract relationshipRevealed(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/identity/AuthorId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;,
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract removePrivateGroup(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method

.method public abstract setReadFlag(Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/MessageId;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/db/DbException;
        }
    .end annotation
.end method
