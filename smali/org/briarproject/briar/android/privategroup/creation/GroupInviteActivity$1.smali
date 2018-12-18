.class Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupInviteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->onButtonClick(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/lang/Void;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 62
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->setResult(I)V

    .line 72
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->onResultUi(Ljava/lang/Void;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Void;)V
    .locals 1

    .line 65
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->setResult(I)V

    .line 66
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/privategroup/creation/GroupInviteActivity;->supportFinishAfterTransition()V

    return-void
.end method
