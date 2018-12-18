.class Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DozeWatchdogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/DozeWatchdogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DozeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/DozeWatchdogImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/DozeWatchdogImpl;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;->this$0:Lorg/briarproject/briar/android/DozeWatchdogImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/DozeWatchdogImpl;Lorg/briarproject/briar/android/DozeWatchdogImpl$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;-><init>(Lorg/briarproject/briar/android/DozeWatchdogImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 51
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-ge p1, p2, :cond_0

    return-void

    .line 52
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;->this$0:Lorg/briarproject/briar/android/DozeWatchdogImpl;

    .line 53
    invoke-static {p1}, Lorg/briarproject/briar/android/DozeWatchdogImpl;->access$100(Lorg/briarproject/briar/android/DozeWatchdogImpl;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 54
    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/briarproject/briar/android/DozeWatchdogImpl$DozeBroadcastReceiver;->this$0:Lorg/briarproject/briar/android/DozeWatchdogImpl;

    invoke-static {p1}, Lorg/briarproject/briar/android/DozeWatchdogImpl;->access$200(Lorg/briarproject/briar/android/DozeWatchdogImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
