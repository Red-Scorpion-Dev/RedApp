.class Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;
.super Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;
.source "GroupListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->onGroupRemoveClick(Lorg/briarproject/briar/android/privategroup/list/GroupItem;)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 133
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment$1;->this$0:Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;->access$000(Lorg/briarproject/briar/android/privategroup/list/GroupListFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method
