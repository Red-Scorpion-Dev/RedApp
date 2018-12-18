.class Lorg/briarproject/briar/android/activity/BriarActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "BriarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/activity/BriarActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultHandler<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/activity/BriarActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/activity/BriarActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lorg/briarproject/briar/android/activity/BriarActivity$1;->this$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 6

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lorg/briarproject/briar/android/activity/BriarActivity$1;->this$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    iget-object v0, p0, Lorg/briarproject/briar/android/activity/BriarActivity$1;->this$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    const v1, 0x7f1101d9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/briarproject/briar/android/activity/BriarActivity$1;->this$0:Lorg/briarproject/briar/android/activity/BriarActivity;

    const v5, 0x7f11002b

    .line 101
    invoke-virtual {v4, v5}, Lorg/briarproject/briar/android/activity/BriarActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 100
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/briar/android/activity/BriarActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/activity/BriarActivity;->showDozeDialog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 96
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity$1;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
