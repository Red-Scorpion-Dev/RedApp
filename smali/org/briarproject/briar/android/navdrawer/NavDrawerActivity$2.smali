.class Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;
.super Lorg/briarproject/briar/android/controller/handler/UiResultHandler;
.source "NavDrawerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->onActivityResult(IILandroid/content/Intent;)V
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
.field final synthetic this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Lorg/briarproject/briar/android/DestroyableContext;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/controller/handler/UiResultHandler;-><init>(Lorg/briarproject/briar/android/DestroyableContext;)V

    return-void
.end method


# virtual methods
.method public onResultUi(Ljava/lang/Boolean;)V
    .locals 2

    .line 175
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;->this$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    const v1, 0x7f1101a3

    .line 177
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->access$100(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResultUi(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity$2;->onResultUi(Ljava/lang/Boolean;)V

    return-void
.end method
