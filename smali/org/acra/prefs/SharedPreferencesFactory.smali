.class public Lorg/acra/prefs/SharedPreferencesFactory;
.super Ljava/lang/Object;
.source "SharedPreferencesFactory.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/ACRAConfiguration;

    return-void
.end method


# virtual methods
.method public create()Landroid/content/SharedPreferences;
    .locals 3

    .line 36
    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 38
    iget-object v1, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/prefs/SharedPreferencesFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->sharedPreferencesMode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lorg/acra/prefs/SharedPreferencesFactory;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call ACRA.getACRASharedPreferences() before ACRA.init()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
