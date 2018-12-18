.class public Lorg/acra/legacy/LegacyFileHandler;
.super Ljava/lang/Object;
.source "LegacyFileHandler.java"


# static fields
.field private static final PREF__LEGACY_ALREADY_CONVERTED_TO_4_8_0:Ljava/lang/String; = "acra.legacyAlreadyConvertedTo4.8.0"

.field private static final PREF__LEGACY_ALREADY_CONVERTED_TO_JSON:Ljava/lang/String; = "acra.legacyAlreadyConvertedToJson"


# instance fields
.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/acra/legacy/LegacyFileHandler;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lorg/acra/legacy/LegacyFileHandler;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public updateToCurrentVersionIfNecessary()V
    .locals 4

    .line 42
    iget-object v0, p0, Lorg/acra/legacy/LegacyFileHandler;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "acra.legacyAlreadyConvertedTo4.8.0"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/acra/legacy/ReportMigrator;

    iget-object v3, p0, Lorg/acra/legacy/LegacyFileHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Lorg/acra/legacy/ReportMigrator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/legacy/ReportMigrator;->migrate()V

    .line 47
    iget-object v0, p0, Lorg/acra/legacy/LegacyFileHandler;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "acra.legacyAlreadyConvertedTo4.8.0"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lorg/acra/prefs/PrefUtils;->save(Landroid/content/SharedPreferences$Editor;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/acra/legacy/LegacyFileHandler;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "acra.legacyAlreadyConvertedToJson"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Lorg/acra/legacy/ReportConverter;

    iget-object v2, p0, Lorg/acra/legacy/LegacyFileHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lorg/acra/legacy/ReportConverter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/acra/legacy/ReportConverter;->convert()V

    .line 54
    iget-object v0, p0, Lorg/acra/legacy/LegacyFileHandler;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "acra.legacyAlreadyConvertedToJson"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lorg/acra/prefs/PrefUtils;->save(Landroid/content/SharedPreferences$Editor;)V

    :cond_1
    return-void
.end method
