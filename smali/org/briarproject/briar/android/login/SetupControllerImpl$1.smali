.class Lorg/briarproject/briar/android/login/SetupControllerImpl$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "SetupControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/login/SetupControllerImpl;->createAccount()V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/login/SetupControllerImpl;

.field final synthetic val$setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/login/SetupControllerImpl;Lorg/briarproject/briar/android/DestroyableContext;Lorg/briarproject/briar/android/login/SetupActivity;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;->this$0:Lorg/briarproject/briar/android/login/SetupControllerImpl;

    iput-object p3, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;->val$setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 0

    .line 83
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;->val$setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;->val$setupActivity:Lorg/briarproject/briar/android/login/SetupActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/login/SetupActivity;->showApp()V

    return-void

    .line 84
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/SetupControllerImpl$1;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
