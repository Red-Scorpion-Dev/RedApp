.class Lorg/briarproject/briar/android/login/PasswordActivity$1;
.super Ljava/lang/Object;
.source "PasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/login/PasswordActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/login/PasswordActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/login/PasswordActivity;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$1;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    if-lez p4, :cond_0

    .line 84
    iget-object p1, p0, Lorg/briarproject/briar/android/login/PasswordActivity$1;->this$0:Lorg/briarproject/briar/android/login/PasswordActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/login/PasswordActivity;->access$000(Lorg/briarproject/briar/android/login/PasswordActivity;)Landroid/support/design/widget/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lorg/briarproject/briar/android/util/UiUtils;->setError(Landroid/support/design/widget/TextInputLayout;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
