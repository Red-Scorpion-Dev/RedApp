.class public Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;
.super Lorg/briarproject/briar/api/sharing/InvitationItem;
.source "GroupInvitationItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/api/sharing/InvitationItem<",
        "Lorg/briarproject/briar/api/privategroup/PrivateGroup;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final creator:Lorg/briarproject/bramble/api/contact/Contact;


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/privategroup/PrivateGroup;Lorg/briarproject/bramble/api/contact/Contact;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/api/sharing/InvitationItem;-><init>(Lorg/briarproject/briar/api/sharing/Shareable;Z)V

    .line 18
    iput-object p2, p0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->creator:Lorg/briarproject/bramble/api/contact/Contact;

    return-void
.end method


# virtual methods
.method public getCreator()Lorg/briarproject/bramble/api/contact/Contact;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/briarproject/briar/api/privategroup/invitation/GroupInvitationItem;->creator:Lorg/briarproject/bramble/api/contact/Contact;

    return-object v0
.end method
