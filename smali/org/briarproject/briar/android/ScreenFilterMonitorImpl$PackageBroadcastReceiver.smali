.class Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenFilterMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;->this$0:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$1;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;-><init>(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 226
    iget-object p1, p0, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl$PackageBroadcastReceiver;->this$0:Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;->access$002(Lorg/briarproject/briar/android/ScreenFilterMonitorImpl;Ljava/util/Collection;)Ljava/util/Collection;

    return-void
.end method
