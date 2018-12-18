.class Lorg/briarproject/briar/android/login/HuaweiView;
.super Lorg/briarproject/briar/android/login/PowerView;
.source "HuaweiView.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.huawei.systemmanager.optimize.process.ProtectActivity"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.huawei.systemmanager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/login/HuaweiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lorg/briarproject/briar/android/login/HuaweiView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/briarproject/briar/android/login/PowerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f1101a7

    .line 40
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/HuaweiView;->setText(I)V

    const p1, 0x7f1101a5

    .line 41
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/login/HuaweiView;->setButtonText(I)V

    return-void
.end method

.method private static getIntent()Landroid/content/Intent;
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.huawei.systemmanager"

    const-string v2, "com.huawei.systemmanager.optimize.process.ProtectActivity"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static needsToBeShown(Landroid/content/Context;)Z
    .locals 2

    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 53
    invoke-static {}, Lorg/briarproject/briar/android/login/HuaweiView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 55
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method protected getHelpText()I
    .locals 1

    const v0, 0x7f1101a6

    return v0
.end method

.method public needsToBeShown()Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/HuaweiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/login/HuaweiView;->needsToBeShown(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onButtonClick()V
    .locals 2

    .line 66
    invoke-virtual {p0}, Lorg/briarproject/briar/android/login/HuaweiView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lorg/briarproject/briar/android/login/HuaweiView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/login/HuaweiView;->setChecked(Z)V

    return-void
.end method
