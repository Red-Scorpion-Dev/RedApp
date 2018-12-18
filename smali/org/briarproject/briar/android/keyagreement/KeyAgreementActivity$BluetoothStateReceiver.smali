.class Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;


# direct methods
.method private constructor <init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$1;)V
    .locals 0

    .line 333
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 339
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xc

    if-ne p1, p2, :cond_0

    .line 341
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    sget-object p2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    sget-object p2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "android.bluetooth.adapter.extra.SCAN_MODE"

    .line 344
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_2

    .line 346
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    sget-object p2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->DISCOVERABLE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x15

    if-ne p1, p2, :cond_3

    .line 348
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    sget-object p2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    .line 349
    :cond_3
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;->this$0:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    sget-object p2, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    :cond_4
    :goto_0
    return-void
.end method
