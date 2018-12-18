.class Lorg/briarproject/briar/sharing/InviteMessage;
.super Lorg/briarproject/briar/sharing/SharingMessage;
.source "InviteMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/briarproject/briar/api/sharing/Shareable;",
        ">",
        "Lorg/briarproject/briar/sharing/SharingMessage;"
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

.field private final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/briar/api/sharing/Shareable;Ljava/lang/String;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/MessageId;",
            "Lorg/briarproject/bramble/api/sync/GroupId;",
            "TS;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 22
    invoke-interface {p4}, Lorg/briarproject/briar/api/sharing/Shareable;->getId()Lorg/briarproject/bramble/api/sync/GroupId;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-wide v4, p6

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/briarproject/briar/sharing/SharingMessage;-><init>(Lorg/briarproject/bramble/api/sync/MessageId;Lorg/briarproject/bramble/api/sync/GroupId;Lorg/briarproject/bramble/api/sync/GroupId;JLorg/briarproject/bramble/api/sync/MessageId;)V

    if-eqz p5, :cond_1

    .line 24
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    iput-object p4, p0, Lorg/briarproject/briar/sharing/InviteMessage;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    .line 27
    iput-object p5, p0, Lorg/briarproject/briar/sharing/InviteMessage;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getShareable()Lorg/briarproject/briar/api/sharing/Shareable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/briarproject/briar/sharing/InviteMessage;->shareable:Lorg/briarproject/briar/api/sharing/Shareable;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/briarproject/briar/sharing/InviteMessage;->text:Ljava/lang/String;

    return-object v0
.end method
