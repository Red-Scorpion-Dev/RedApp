.class final Lorg/acra/ACRA$1;
.super Ljava/lang/Object;
.source "ACRA.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "acra.disable"

    .line 268
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acra.enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 269
    :cond_0
    invoke-static {p1}, Lorg/acra/ACRA;->access$000(Landroid/content/SharedPreferences;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 270
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/acra/ErrorReporter;->setEnabled(Z)V

    :cond_1
    return-void
.end method
