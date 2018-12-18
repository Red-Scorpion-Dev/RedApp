.class Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->onNamedGroupLoaded(Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Lorg/briarproject/bramble/api/identity/LocalAuthor;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

.field final synthetic val$group:Lorg/briarproject/briar/api/privategroup/PrivateGroup;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Lorg/briarproject/briar/android/DestroyableContext;Lorg/briarproject/briar/api/privategroup/PrivateGroup;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    iput-object p3, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->val$group:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 116
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 116
    check-cast p1, Lorg/briarproject/bramble/api/identity/LocalAuthor;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->onResultUi(Lorg/briarproject/bramble/api/identity/LocalAuthor;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/bramble/api/identity/LocalAuthor;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    iget-object v1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->val$group:Lorg/briarproject/briar/api/privategroup/PrivateGroup;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/PrivateGroup;->getCreator()Lorg/briarproject/bramble/api/identity/Author;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/briarproject/bramble/api/identity/Author;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$202(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;Z)Z

    .line 120
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$300(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Lorg/briarproject/briar/android/threaded/ThreadItemAdapter;

    move-result-object p1

    check-cast p1, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;

    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$200(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/privategroup/conversation/GroupMessageAdapter;->setPerspective(Z)V

    .line 121
    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity$2;->this$0:Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;->access$400(Lorg/briarproject/briar/android/privategroup/conversation/GroupActivity;)V

    return-void
.end method
