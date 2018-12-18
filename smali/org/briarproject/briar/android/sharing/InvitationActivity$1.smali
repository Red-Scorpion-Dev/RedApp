.class Lorg/briarproject/briar/android/sharing/InvitationActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "InvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/sharing/InvitationActivity;->loadInvitations(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "TI;>;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

.field final synthetic val$clear:Z

.field final synthetic val$revision:I


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/sharing/InvitationActivity;Lorg/briarproject/briar/android/DestroyableContext;IZ)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

    iput p3, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->val$revision:I

    iput-boolean p4, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->val$clear:Z

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 92
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TI;>;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/InvitationActivity;

    iget v1, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->val$revision:I

    iget-boolean v2, p0, Lorg/briarproject/briar/android/sharing/InvitationActivity$1;->val$clear:Z

    invoke-virtual {v0, v1, p1, v2}, Lorg/briarproject/briar/android/sharing/InvitationActivity;->displayInvitations(ILjava/util/Collection;Z)V

    return-void
.end method
