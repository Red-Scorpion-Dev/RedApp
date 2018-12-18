.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$fLUbOxhFoim205pJ9AkyIB_rT8M;
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

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$fLUbOxhFoim205pJ9AkyIB_rT8M;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$fLUbOxhFoim205pJ9AkyIB_rT8M;->f$0:Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;

    invoke-interface {v0}, Lorg/briarproject/bramble/plugin/bluetooth/BluetoothConnectionLimiter;->keyAgreementStarted()V

    return-void
.end method
