.class public final synthetic Lorg/briarproject/briar/sharing/-$$Lambda$SharingManagerImpl$NKY5g5hAmRyT-lXtkip2qh9ow6M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/briarproject/bramble/api/versioning/ClientVersioningManager$ClientVersioningHook;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/sharing/SharingManagerImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/sharing/SharingManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/sharing/-$$Lambda$SharingManagerImpl$NKY5g5hAmRyT-lXtkip2qh9ow6M;->f$0:Lorg/briarproject/briar/sharing/SharingManagerImpl;

    return-void
.end method


# virtual methods
.method public final onClientVisibilityChanging(Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/sharing/-$$Lambda$SharingManagerImpl$NKY5g5hAmRyT-lXtkip2qh9ow6M;->f$0:Lorg/briarproject/briar/sharing/SharingManagerImpl;

    invoke-static {v0, p1, p2, p3}, Lorg/briarproject/briar/sharing/SharingManagerImpl;->lambda$NKY5g5hAmRyT-lXtkip2qh9ow6M(Lorg/briarproject/briar/sharing/SharingManagerImpl;Lorg/briarproject/bramble/api/db/Transaction;Lorg/briarproject/bramble/api/contact/Contact;Lorg/briarproject/bramble/api/sync/Group$Visibility;)V

    return-void
.end method
