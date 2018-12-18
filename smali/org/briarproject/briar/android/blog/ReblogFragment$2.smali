.class Lorg/briarproject/briar/android/blog/ReblogFragment$2;
.super Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;
.source "ReblogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/blog/ReblogFragment;->onSendClick(Ljava/lang/String;)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiExceptionHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onExceptionUi(Ljava/lang/Exception;)V
    .locals 0

    .line 125
    check-cast p1, Lorg/briarproject/bramble/api/db/DbException;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment$2;->onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method

.method public onExceptionUi(Lorg/briarproject/bramble/api/db/DbException;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/briarproject/briar/android/blog/ReblogFragment$2;->this$0:Lorg/briarproject/briar/android/blog/ReblogFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/blog/ReblogFragment;->access$700(Lorg/briarproject/briar/android/blog/ReblogFragment;Lorg/briarproject/bramble/api/db/DbException;)V

    return-void
.end method
