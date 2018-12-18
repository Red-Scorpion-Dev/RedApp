.class Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;
.source "RevealContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->onStart()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 74
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->handleDbException(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;->this$0:Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;->access$000(Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/privategroup/reveal/RevealContactsActivity$1;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
