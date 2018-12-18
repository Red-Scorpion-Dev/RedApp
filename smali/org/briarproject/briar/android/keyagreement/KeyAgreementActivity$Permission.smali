.class final enum Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;
.super Ljava/lang/Enum;
.source "KeyAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Permission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field public static final enum GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field public static final enum PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field public static final enum SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

.field public static final enum UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 60
    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const-string v1, "GRANTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const-string v1, "SHOW_RATIONALE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    new-instance v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const-string v1, "PERMANENTLY_DENIED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    const/4 v0, 0x4

    .line 59
    new-array v0, v0, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->UNKNOWN:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->GRANTED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->SHOW_RATIONALE:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->PERMANENTLY_DENIED:Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->$VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;
    .locals 1

    .line 59
    const-class v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;
    .locals 1

    .line 59
    sget-object v0, Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->$VALUES:[Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    invoke-virtual {v0}, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/android/keyagreement/KeyAgreementActivity$Permission;

    return-object v0
.end method
