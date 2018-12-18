.class Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "CreateGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->onGroupNameChosen(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/bramble/api/sync/GroupId;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Lorg/briarproject/bramble/api/sync/GroupId;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;->onResultUi(Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/bramble/api/sync/GroupId;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;->access$000(Lorg/briarproject/briar/android/privategroup/creation/CreateGroupActivity;Lorg/briarproject/bramble/api/sync/GroupId;)V

    return-void
.end method
