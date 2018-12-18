.class public Lorg/briarproject/briar/api/sharing/SharingInvitationItem;
.super Lorg/briarproject/briar/api/sharing/InvitationItem;
.source "SharingInvitationItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/sharing/InvitationItem<",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final newSharers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/sharing/Shareable;ZLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/briar/api/sharing/Shareable;",
            "Z",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Lorg/briarproject/briar/api/sharing/InvitationItem;-><init>(Lorg/briarproject/briar/api/sharing/Shareable;Z)V

    .line 20
    iput-object p3, p0, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->newSharers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public getNewSharers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/briarproject/bramble/api/contact/Contact;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/SharingInvitationItem;->newSharers:Ljava/util/Collection;

    return-object v0
.end method
