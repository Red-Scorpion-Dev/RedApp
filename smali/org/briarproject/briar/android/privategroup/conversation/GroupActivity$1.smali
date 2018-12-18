.class Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->loadItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/lang/Boolean;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 98
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$000(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Z)V

    .line 102
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$101(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$1;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
