.class Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "NavDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/briarproject/briar/android/controller/handler/UiResultHandler<",
        "Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;->onResultUi(Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V

    return-void
.end method

.method public onResultUi(Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V
    .locals 1

    .line 162
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$1;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->access$000(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;)V

    :cond_0
    return-void
.end method
