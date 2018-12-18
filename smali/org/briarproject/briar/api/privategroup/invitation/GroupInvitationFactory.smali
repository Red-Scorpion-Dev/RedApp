.class public interface abstract Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;
.super Ljava/lang/Object;
.source "GroupInvitationFactory.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final SIGNING_LABEL_INVITE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationManager;->CLIENT_ID:Lorg/briarproject/bramble/api/sync/ClientId;

    invoke-virtual {v1}, Lorg/briarproject/bramble/api/sync/ClientId;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/INVITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationFactory;->SIGNING_LABEL_INVITE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createInviteToken(Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/identity/AuthorId;Lorg/briarproject/bramble/api/sync/GroupId;J)Lorg/briarproject/bramble/api/data/BdfList;
.end method

.method public abstract signInvitation(Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/GroupId;J[B)[B
    .annotation runtime Lorg/briarproject/bramble/api/crypto/CryptoExecutor;
    .end annotation
.end method
