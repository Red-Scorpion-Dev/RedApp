.class public abstract Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
.super Lorg/briarproject/briar/android/activity/BriarActivity;
.source "KeyAgreementActivity.java"

# interfaces
.implements Lorg/briarproject/briar/android/fragment/BaseFragment$BaseFragmentListener;
.implements Lorg/briarproject/briar/android/keyagreement/IntroFragment$IntroScreenSeenListener;
.implements Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment$KeyAgreementEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;,
        Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;,
        Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private bluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field private cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field private continueClicked:Z

.field eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private isResumed:Z

.field private locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field private wasAdapterEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;

    .line 64
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->isResumed:Z

    .line 81
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->continueClicked:Z

    .line 87
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->wasAdapterEnabled:Z

    .line 88
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    .line 89
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    .line 90
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    return-void
.end method

.method private areEssentialPermissionsGranted()Z
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPermissions()Z
    .locals 4

    .line 244
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->areEssentialPermissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const/4 v2, 0x0

    const v3, 0x7f110164

    if-ne v0, v1, :cond_1

    .line 248
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 249
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f11015f

    .line 250
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110147

    .line 252
    invoke-static {p0}, Lorg/briarproject/briar/android/util/UiUtils;->getGoToSettingsListener(Landroid/content/Context;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 251
    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f110062

    .line 253
    new-instance v3, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementActivity$EaBkk6vKnwGt0LKH0R8iHFm8dvM;

    invoke-direct {v3, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementActivity$EaBkk6vKnwGt0LKH0R8iHFm8dvM;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 255
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return v2

    .line 259
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_2

    const v0, 0x7f110162

    const v1, 0x7f110161

    .line 261
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showRationale(II)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_3

    const v0, 0x7f110163

    .line 264
    invoke-direct {p0, v3, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showRationale(II)V

    goto :goto_0

    .line 266
    :cond_3
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    if-ne v0, v1, :cond_4

    const v0, 0x7f110166

    const v1, 0x7f110165

    .line 267
    invoke-direct {p0, v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showRationale(II)V

    goto :goto_0

    .line 270
    :cond_4
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->requestPermissions()V

    :goto_0
    return v2
.end method

.method private gotPermission(Ljava/lang/String;[Ljava/lang/String;[I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 321
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_2

    .line 322
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    aget p1, p3, v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static synthetic lambda$checkPermissions$0(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 254
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->supportFinishAfterTransition()V

    return-void
.end method

.method public static synthetic lambda$showRationale$1(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->requestPermissions()V

    return-void
.end method

.method private requestBluetoothDiscoverable()V
    .locals 2

    .line 182
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->NO_ADAPTER:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    .line 186
    :cond_0
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->WAITING:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-direct {p0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    .line 187
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->wasAdapterEnabled:Z

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 189
    invoke-virtual {p0, v0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private requestPermissions()V
    .locals 3

    const/4 v0, 0x2

    .line 285
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method private setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V
    .locals 3

    .line 194
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Bluetooth state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    .line 196
    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->wasAdapterEnabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    if-ne p1, v0, :cond_0

    .line 197
    iget-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    new-instance v0, Lorg/briarproject/bramble/api/plugin/event/BluetoothEnabledEvent;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/plugin/event/BluetoothEnabledEvent;-><init>()V

    invoke-interface {p1, v0}, Lorg/briarproject/bramble/api/event/EventBus;->broadcast(Lorg/briarproject/bramble/api/event/Event;)V

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->wasAdapterEnabled:Z

    .line 200
    :cond_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showQrCodeFragmentIfAllowed()V

    return-void
.end method

.method private shouldShowRationale(Ljava/lang/String;)Z
    .locals 0

    .line 329
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private showQrCodeFragment()V
    .locals 4

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->continueClicked:Z

    .line 225
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    .line 227
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 228
    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 229
    invoke-static {}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;->newInstance()Lorg/briarproject/briar/android/keyagreement/KeyAgreementFragment;

    move-result-object v1

    .line 230
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f0900c1

    .line 231
    invoke-virtual {v1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 232
    invoke-virtual {v1}, Lorg/briarproject/briar/android/fragment/BaseFragment;->getUniqueTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private showQrCodeFragmentIfAllowed()V
    .locals 2

    .line 151
    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->isResumed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->continueClicked:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->areEssentialPermissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothState:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->WAITING:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    if-eq v0, v1, :cond_2

    .line 156
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showQrCodeFragment()V

    goto :goto_1

    .line 154
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->requestBluetoothDiscoverable()V

    :cond_2
    :goto_1
    return-void
.end method

.method private showRationale(II)V
    .locals 2

    .line 276
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1200ca

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 279
    new-instance p1, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementActivity$RRZyE3fqCADHOcwjeUhJ_6wUBLo;

    invoke-direct {p1, p0}, Lorg/briarproject/briar/android/keyagreement/-$$Lambda$KeyAgreementActivity$RRZyE3fqCADHOcwjeUhJ_6wUBLo;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V

    const p2, 0x7f11007c

    invoke-virtual {v0, p2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public injectActivity(Lorg/briarproject/briar/android/activity/ActivityComponent;)V
    .locals 0

    .line 95
    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/16 p3, 0xa

    if-ne p1, p3, :cond_2

    if-nez p2, :cond_0

    .line 207
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->REFUSED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result p1

    const/16 p2, 0x17

    if-ne p1, p2, :cond_2

    .line 214
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->DISCOVERABLE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setBluetoothState(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0022

    .line 102
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setContentView(I)V

    const v0, 0x7f0901a2

    .line 103
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 104
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 105
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    if-nez p1, :cond_0

    .line 107
    invoke-static {}, Lorg/briarproject/briar/android/keyagreement/IntroFragment;->newInstance()Lorg/briarproject/briar/android/keyagreement/IntroFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showInitialFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    .line 109
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothStateReceiver;-><init>(Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$1;)V

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onDestroy()V

    .line 119
    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->bluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 129
    invoke-super {p0, p1}, Lorg/briarproject/briar/android/activity/BriarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 126
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 171
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onPause()V

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->isResumed:Z

    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .line 143
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onPostResume()V

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->isResumed:Z

    .line 147
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showQrCodeFragmentIfAllowed()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    const-string p1, "android.permission.CAMERA"

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->gotPermission(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 297
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    goto :goto_0

    :cond_0
    const-string p1, "android.permission.CAMERA"

    .line 298
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->shouldShowRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    goto :goto_0

    .line 301
    :cond_1
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    :goto_0
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->gotPermission(Ljava/lang/String;[Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 304
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    goto :goto_1

    :cond_2
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 305
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->shouldShowRationale(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 306
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    goto :goto_1

    .line 308
    :cond_3
    sget-object p1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object p1, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    .line 316
    :goto_1
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->checkPermissions()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showQrCodeFragmentIfAllowed()V

    :cond_4
    return-void

    .line 295
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onStart()V
    .locals 1

    .line 135
    invoke-super {p0}, Lorg/briarproject/briar/android/activity/BriarActivity;->onStart()V

    .line 137
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->cameraPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    .line 138
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    iput-object v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->locationPermission:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    return-void
.end method

.method protected showErrorFragment(I)V
    .locals 0

    .line 238
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 239
    invoke-static {p1}, Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;->newInstance(Ljava/lang/String;)Lorg/briarproject/briar/android/keyagreement/ContactExchangeErrorFragment;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showNextFragment(Lorg/briarproject/briar/android/fragment/BaseFragment;)V

    return-void
.end method

.method public showNextScreen()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->continueClicked:Z

    .line 178
    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->checkPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;->showQrCodeFragmentIfAllowed()V

    :cond_0
    return-void
.end method
