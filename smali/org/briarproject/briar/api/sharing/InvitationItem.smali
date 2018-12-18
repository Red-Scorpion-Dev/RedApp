.class public abstract Lorg/briarproject/briar/api/sharing/InvitationItem;
.super Ljava/lang/Object;
.source "InvitationItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# instance fields
.field private final shareable:Lorg/briarproject/briar/api/sharing/Shareable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private final subscribed:Z


# direct methods
.method public constructor <init>(Lorg/briarproject/briar/api/sharing/Shareable;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;Z)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    .line 17
    iput-boolean p2, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->subscribed:Z

    return-void
.end method


# virtual methods
.method public getId()Lorg/briarproject/bramble/api/sync/GroupId;
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    invoke-interface {v0}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    invoke-interface {v0}, Lorg/briarproject/briar/api/sharing/Shareable;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShareable()Lorg/briarproject/briar/api/sharing/Shareable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    return-object v0
.end method

.method public isSubscribed()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lorg/briarproject/briar/api/sharing/InvitationItem;->subscribed:Z

    return v0
.end method
