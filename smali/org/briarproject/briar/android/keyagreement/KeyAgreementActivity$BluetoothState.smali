.class final enum Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;
.super Ljava/lang/Enum;
.source "KeyAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BluetoothState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum DISCOVERABLE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum NO_ADAPTER:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum REFUSED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

.field public static final enum WAITING:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 56
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "NO_ADAPTER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->NO_ADAPTER:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "WAITING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->WAITING:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "REFUSED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->REFUSED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "ENABLED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const-string v1, "DISCOVERABLE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->DISCOVERABLE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    const/4 v0, 0x6

    .line 55
    new-array v0, v0, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->NO_ADAPTER:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->WAITING:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->REFUSED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->ENABLED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->DISCOVERABLE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    aput-object v1, v0, v7

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->$VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;
    .locals 1

    .line 55
    const-class v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;
    .locals 1

    .line 55
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->$VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    invoke-virtual {v0}, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$BluetoothState;

    return-object v0
.end method
