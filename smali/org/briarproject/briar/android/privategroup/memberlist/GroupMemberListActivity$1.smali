.class Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "GroupMemberListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler<",
        "Ljava/util/Collection<",
        "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;",
        ">;",
        "Lorg/briarproject/bramble/api/db/DbException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 66
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;->onResultUi(Ljava/util/Collection;)V

    return-void
.end method

.method public onResultUi(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/briarproject/briar/android/privategroup/memberlist/MemberListItem;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;->access$000(Lorg/briarproject/briar/android/privategroup/memberlist/GroupMemberListActivity;)Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/memberlist/MemberListAdapter;->addAll(Ljava/util/Collection;)V

    return-void
.end method
