.class Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;
.source "ShareForumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/sharing/ShareForumActivity;->share(Ljava/util/Collection;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler<",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/sharing/ShareForumActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/sharing/ShareForumActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/ShareForumActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 56
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/ShareForumActivity;

    const v1, 0x7f1100bb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 62
    iget-object v0, p0, Lorg/briarproject/briar/android/sharing/ShareForumActivity$1;->this$0:Lorg/briarproject/briar/android/sharing/ShareForumActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/sharing/ShareForumActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method
