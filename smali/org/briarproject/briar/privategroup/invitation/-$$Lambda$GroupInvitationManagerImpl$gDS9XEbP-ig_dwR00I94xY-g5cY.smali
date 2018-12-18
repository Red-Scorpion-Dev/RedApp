.class public final synthetic Lorg/briarproject/briar/privategroup/invitation/-$$Lambda$GroupInvitationManagerImpl$gDS9XEbP-ig_dwR00I94xY-g5cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/privategroup/invitation/-$$Lambda$GroupInvitationManagerImpl$gDS9XEbP-ig_dwR00I94xY-g5cY;->f$0:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;

    return-void
.end method


# virtual methods
.method public final onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/-$$Lambda$GroupInvitationManagerImpl$gDS9XEbP-ig_dwR00I94xY-g5cY;->f$0:Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;

    invoke-static {v0, p1, p2, p3}, Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;->lambda$gDS9XEbP-ig_dwR00I94xY-g5cY(Lorg/briarproject/briar/privategroup/invitation/GroupInvitationManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method
