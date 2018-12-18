.class Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "ThreadListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/threaded/ThreadListActivity;->loadNamedGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "TG;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/threaded/ThreadListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 159
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Lorg/briarproject/briar/api/client/NamedGroup;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;->onResultUi(Lorg/briarproject/briar/api/client/NamedGroup;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/api/client/NamedGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TG;)V"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/briarproject/briar/android/threaded/ThreadListActivity$2;->this$0:Lorg/briarproject/briar/android/threaded/ThreadListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/threaded/ThreadListActivity;->onNamedGroupLoaded(Lorg/briarproject/briar/api/client/NamedGroup;)V

    return-void
.end method
