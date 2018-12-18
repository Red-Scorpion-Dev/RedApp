.class Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/login/ChangePasswordActivity;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/login/ChangePasswordActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 2

    .line 131
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    const v0, 0x7f110157

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 135
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->setResult(I)V

    .line 136
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->supportFinishAfterTransition()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/ChangePasswordActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity;->access$100(Lorg/briarproject/briar/android/login/ChangePasswordActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/ChangePasswordActivity$2;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
