.class Lorg/briarproject/briar/android/forum/ForumActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ForumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/forum/ForumActivity;->deleteForum()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/forum/ForumActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/forum/ForumActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lorg/briarproject/briar/android/forum/ForumActivity$1;->this$0:Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 156
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/android/forum/ForumActivity$1;->this$0:Lorg/briarproject/briar/android/forum/ForumActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/forum/ForumActivity$1;->onResultUi(Ljava/lang/Void;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Void;)V
    .locals 2

    .line 159
    iget-object p1, p0, Lorg/briarproject/briar/android/forum/ForumActivity$1;->this$0:Lorg/briarproject/briar/android/forum/ForumActivity;

    const v0, 0x7f1100b6

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
