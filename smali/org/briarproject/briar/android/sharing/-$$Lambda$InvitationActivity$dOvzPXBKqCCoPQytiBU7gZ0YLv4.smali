.class public final synthetic Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

.field private final synthetic f$1:Ljava/util/Collection;

.field private final synthetic f$2:I

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/sharing/InvitationActivity;Ljava/util/Collection;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

    iput-object p2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$1:Ljava/util/Collection;

    iput p3, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$2:I

    iput-boolean p4, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$1:Ljava/util/Collection;

    iget v2, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$2:I

    iget-boolean v3, p0, Lorg/briarproject/briar/android/sharing/-$$Lambda$InvitationActivity$dOvzPXBKqCCoPQytiBU7gZ0YLv4;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->lambda$displayInvitations$0(Lorg/briarproject/briar/android/sharing/InvitationActivity;Ljava/util/Collection;IZ)V

    return-void
.end method
