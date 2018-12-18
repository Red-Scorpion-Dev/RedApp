.class public final enum Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;
.super Ljava/lang/Enum;
.source "NavDrawerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/navdrawer/NavDrawerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExpiryWarning"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

.field public static final enum NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

.field public static final enum SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

.field public static final enum UPDATE:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    const-string v1, "SHOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    const-string v1, "NO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    new-instance v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    const-string v1, "UPDATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->UPDATE:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    sget-object v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->SHOW:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->NO:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->UPDATE:Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    aput-object v1, v0, v4

    sput-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->$VALUES:[Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;
    .locals 1

    .line 13
    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;
    .locals 1

    .line 13
    sget-object v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->$VALUES:[Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    invoke-virtual {v0}, [Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/android/navdrawer/NavDrawerController$ExpiryWarning;

    return-object v0
.end method
