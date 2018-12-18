.class Lorg/briarproject/briar/android/login/PasswordActivity$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "PasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/login/PasswordActivity;->validatePassword()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/login/PasswordActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/login/PasswordActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/briarproject/briar/android/login/PasswordActivity;->setResult(I)V

    .line 152
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->supportFinishAfterTransition()V

    .line 155
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    const v0, 0x7f010012

    const v1, 0x7f010015

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/briar/android/login/PasswordActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$2;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->access$100(Lorg/briarproject/briar/android/login/PasswordActivity;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 147
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/PasswordActivity$2;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
