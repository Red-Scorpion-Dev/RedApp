.class Lorg/briarproject/briar/android/BriarService$1;
.super Landroid/content/BroadcastReceiver;
.source "BriarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/BriarService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/BriarService;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/BriarService;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/briarproject/briar/android/BriarService$1;->this$0:Lorg/briarproject/briar/android/BriarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 151
    invoke-static {}, Lorg/briarproject/briar/android/BriarService;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    const-string p2, "Device is shutting down"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lorg/briarproject/briar/android/BriarService$1;->this$0:Lorg/briarproject/briar/android/BriarService;

    invoke-static {p1}, Lorg/briarproject/briar/android/BriarService;->access$100(Lorg/briarproject/briar/android/BriarService;)V

    return-void
.end method
