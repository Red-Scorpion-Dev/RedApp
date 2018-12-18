.class Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AndroidBluetoothPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoveryReceiver"
.end annotation


# instance fields
.field private final intents:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 302
    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;->intents:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/BlockingQueue;Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$1;)V
    .locals 0

    .line 297
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 307
    iget-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/AndroidBluetoothPlugin$DiscoveryReceiver;->intents:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
