.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onSendClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "TI;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 360
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 360
    check-cast p1, Lorg/briarproject/briar/android/threaded/ThreadItem;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;->onResultUi(Lorg/briarproject/briar/android/threaded/ThreadItem;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/threaded/ThreadItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$6;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->access$500(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/threaded/ThreadItem;Z)V

    return-void
.end method
