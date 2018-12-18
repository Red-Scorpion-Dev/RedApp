.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$U9Cf_5nmEtYb8tHmPzlylYe6AS0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$U9Cf_5nmEtYb8tHmPzlylYe6AS0;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$U9Cf_5nmEtYb8tHmPzlylYe6AS0;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->keyAgreementEnded()V

    return-void
.end method
