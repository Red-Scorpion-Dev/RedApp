.class public Lorg/briarproject/briar/android/settings/SettingsFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lorg/briarproject/bramble/api/event/EventListener;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/MethodsNotNullByDefault;
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/ParametersNotNullByDefault;
.end annotation


# static fields
.field public static final BT_NAMESPACE:Ljava/lang/String;

.field public static final LANGUAGE:Ljava/lang/String; = "pref_key_language"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final NOTIFY_SIGN_IN:Ljava/lang/String; = "pref_key_notify_sign_in"

.field public static final PREF_SCREEN_LOCK:Ljava/lang/String; = "pref_key_lock"

.field public static final PREF_SCREEN_LOCK_TIMEOUT:Ljava/lang/String; = "pref_key_lock_timeout"

.field public static final SETTINGS_NAMESPACE:Ljava/lang/String; = "android-ui"

.field public static final TOR_MOBILE:Ljava/lang/String; = "pref_key_tor_mobile_data"

.field public static final TOR_NAMESPACE:Ljava/lang/String;

.field public static final TOR_NETWORK:Ljava/lang/String; = "pref_key_tor_network"


# instance fields
.field androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

.field private volatile btSettings:Lorg/briarproject/bramble/api/settings/Settings;

.field circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

.field private enableBluetooth:Landroid/support/v7/preference/ListPreference;

.field volatile eventBus:Lorg/briarproject/bramble/api/event/EventBus;

.field private language:Landroid/support/v7/preference/ListPreference;

.field private listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

.field locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

.field private notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

.field private notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

.field private notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

.field private notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

.field private notifySound:Landroid/support/v7/preference/Preference;

.field private notifyVibration:Landroid/support/v14/preference/SwitchPreference;

.field private screenLock:Landroid/support/v14/preference/SwitchPreference;

.field private screenLockTimeout:Landroid/support/v7/preference/ListPreference;

.field private volatile settings:Lorg/briarproject/bramble/api/settings/Settings;

.field volatile settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

.field private torMobile:Landroid/support/v14/preference/SwitchPreference;

.field private torNetwork:Landroid/support/v7/preference/ListPreference;

.field private volatile torSettings:Lorg/briarproject/bramble/api/settings/Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    sget-object v0, Lorg/briarproject/bramble/api/plugin/BluetoothConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->BT_NAMESPACE:Ljava/lang/String;

    .line 106
    sget-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    invoke-virtual {v0}, Lorg/briarproject/bramble/api/plugin/TransportId;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->TOR_NAMESPACE:Ljava/lang/String;

    .line 115
    const-class v0, Lorg/briarproject/briar/android/settings/SettingsFragment;

    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private displayScreenLockSetting()V
    .locals 4

    .line 436
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 438
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setVisible(Z)V

    goto :goto_1

    .line 440
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/briar/android/util/UiUtils;->hasScreenLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "pref_key_lock"

    .line 443
    invoke-virtual {v2, v3, v1}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 442
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 444
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f11016c

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    goto :goto_0

    .line 446
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 448
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    const v1, 0x7f11016b

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 451
    :goto_0
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "pref_key_lock_timeout"

    const v2, 0x7f110176

    .line 452
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 451
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 454
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setScreenLockTimeoutSummary(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private displaySettings()V
    .locals 2

    .line 351
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

    new-instance v1, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$xRJquGmI1azWoHeyvk2gdi8cc28;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$xRJquGmI1azWoHeyvk2gdi8cc28;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/settings/SettingsActivity;->runOnUiThreadUnlessDestroyed(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isLeftToRight(Ljava/util/Locale;)Z
    .locals 3

    .line 300
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iw"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "he"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public static synthetic lambda$displaySettings$5(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 5

    .line 352
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->btSettings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "enable"

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 354
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->enableBluetooth:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torSettings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "network2"

    invoke-virtual {v0, v1, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 358
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setTorNetworkSummary(I)V

    .line 361
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torSettings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "useMobileData"

    const/4 v3, 0x1

    .line 362
    invoke-virtual {v0, v1, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 363
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torMobile:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 365
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->displayScreenLockSetting()V

    .line 367
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    .line 368
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyPrivateMessages"

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 370
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyGroupMessages"

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 372
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyForumPosts"

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 374
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyBlogPosts"

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v2, "notifyVibration"

    invoke-virtual {v1, v2, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 378
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 380
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 383
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifySound:Landroid/support/v7/preference/Preference;

    new-instance v1, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$2CspLdNI7sBMlbU-DBX3Kpz99VQ;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$2CspLdNI7sBMlbU-DBX3Kpz99VQ;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 386
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "notifySound"

    invoke-virtual {v0, v1, v3}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v1, "notifyRingtoneName"

    .line 388
    invoke-virtual {v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f110142

    .line 390
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f110143

    .line 395
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifySound:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 399
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "contacts"

    const v4, 0x7f11013d

    invoke-direct {p0, v0, v1, v4}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setupNotificationPreference(Landroid/support/v14/preference/SwitchPreference;Ljava/lang/String;I)V

    .line 402
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "groups"

    const v4, 0x7f110137

    invoke-direct {p0, v0, v1, v4}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setupNotificationPreference(Landroid/support/v14/preference/SwitchPreference;Ljava/lang/String;I)V

    .line 405
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "forums"

    const v4, 0x7f110134

    invoke-direct {p0, v0, v1, v4}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setupNotificationPreference(Landroid/support/v14/preference/SwitchPreference;Ljava/lang/String;I)V

    .line 407
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "blogs"

    const v4, 0x7f110131

    invoke-direct {p0, v0, v1, v4}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setupNotificationPreference(Landroid/support/v14/preference/SwitchPreference;Ljava/lang/String;I)V

    .line 409
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 410
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifySound:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 412
    :goto_1
    invoke-direct {p0, v3}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setSettingsEnabled(Z)V

    return-void
.end method

.method public static synthetic lambda$languageChanged$7(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 563
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 564
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class p3, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x4000000

    .line 566
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "intent_sign_out"

    const/4 p3, 0x1

    .line 567
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 568
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 569
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$loadSettings$3(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 4

    .line 338
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 339
    iget-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    const-string v3, "android-ui"

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 340
    iget-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    sget-object v3, Lorg/briarproject/briar/android/settings/SettingsFragment;->BT_NAMESPACE:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->btSettings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 341
    iget-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    sget-object v3, Lorg/briarproject/briar/android/settings/SettingsFragment;->TOR_NAMESPACE:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/briarproject/bramble/api/settings/SettingsManager;->getSettings(Ljava/lang/String;)Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object v2

    iput-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torSettings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 342
    sget-object v2, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Loading settings"

    invoke-static {v2, v3, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V

    .line 343
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->displaySettings()V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 345
    sget-object v1, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v1, v2, v0}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$mergeSettings$8(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 3

    .line 601
    :try_start_0
    invoke-static {}, Lorg/briarproject/bramble/util/LogUtils;->now()J

    move-result-wide v0

    .line 602
    iget-object v2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settingsManager:Lorg/briarproject/bramble/api/settings/SettingsManager;

    invoke-interface {v2, p1, p2}, Lorg/briarproject/bramble/api/settings/SettingsManager;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    .line 603
    sget-object p1, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    const-string p2, "Merging settings"

    invoke-static {p1, p2, v0, v1}, Lorg/briarproject/bramble/util/LogUtils;->logDuration(Ljava/util/logging/Logger;Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/briarproject/bramble/api/db/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 605
    sget-object p2, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {p2, v0, p1}, Lorg/briarproject/bramble/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$4(Lorg/briarproject/briar/android/settings/SettingsFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 384
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->onNotificationSoundClicked()Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$onCreatePreferences$0(Lorg/briarproject/briar/android/settings/SettingsFragment;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 185
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lorg/briarproject/briar/android/util/UiUtils;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    new-instance p1, Landroid/content/Intent;

    .line 191
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    const-class v0, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p2, 0x10008000

    .line 192
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 196
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onCreatePreferences$1(Lorg/briarproject/briar/android/settings/SettingsFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 210
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->androidExecutor:Lorg/briarproject/bramble/api/system/AndroidExecutor;

    invoke-static {p1}, Lorg/briarproject/briar/android/util/UiUtils;->triggerFeedback(Lorg/briarproject/bramble/api/system/AndroidExecutor;)V

    const/4 p1, 0x1

    return p1
.end method

.method private static synthetic lambda$onCreatePreferences$2(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 224
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Boom!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic lambda$setupNotificationPreference$6(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 477
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.provider.extra.APP_PACKAGE"

    .line 478
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "android.provider.extra.CHANNEL_ID"

    .line 479
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 480
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method private languageChanged(Ljava/lang/String;)V
    .locals 2

    .line 557
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 558
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11016a

    .line 559
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f110168

    .line 560
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v1, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$RDei2TQfElUc4NJsMTC_CpSyUJw;

    invoke-direct {v1, p0, p1}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$RDei2TQfElUc4NJsMTC_CpSyUJw;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;)V

    const p1, 0x7f1101b7

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const p1, 0x7f110062

    const/4 v1, 0x0

    .line 571
    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    .line 572
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 573
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private loadSettings()V
    .locals 2

    .line 336
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

    new-instance v1, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$Dm5JDgrkaERlCRR-r9U4Hw0D1Yw;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$Dm5JDgrkaERlCRR-r9U4Hw0D1Yw;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/settings/SettingsActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V
    .locals 2

    .line 599
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

    new-instance v1, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;

    invoke-direct {v1, p0, p1, p2}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$0m-wimKyZa_e3Y1AU8lN9Mt9BDw;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/settings/SettingsActivity;->runOnDbThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onNotificationSoundClicked()Z
    .locals 4

    const v0, 0x7f11006c

    .line 486
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.ringtone.TYPE"

    const/4 v3, 0x2

    .line 488
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TITLE"

    .line 489
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 490
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v2, 0x1

    .line 492
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "notifySound"

    invoke-virtual {v0, v3, v2}, Lorg/briarproject/bramble/api/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    const-string v3, "notifyRingtoneUri"

    .line 496
    invoke-virtual {v0, v3}, Lorg/briarproject/bramble/api/settings/Settings;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    invoke-static {v0}, Lorg/briarproject/bramble/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 498
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const-string v3, "android.intent.extra.ringtone.EXISTING_URI"

    .line 500
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const/4 v0, 0x7

    .line 502
    invoke-virtual {p0, v1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v2
.end method

.method private setLanguageEntries()V
    .locals 11

    .line 262
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 265
    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    .line 266
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    .line 267
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f110169

    .line 268
    invoke-virtual {p0, v7}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 272
    :cond_0
    invoke-static {v6}, Lorg/briarproject/briar/android/Localizer;->getLocaleFromTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 276
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-ge v8, v9, :cond_1

    invoke-direct {p0, v7}, Lorg/briarproject/briar/android/settings/SettingsFragment;->isLeftToRight(Ljava/util/Locale;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 277
    sget-object v7, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 278
    sget-object v7, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping RTL locale "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 281
    :cond_1
    invoke-virtual {v7, v7}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 284
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 285
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v8

    .line 290
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u200e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    invoke-virtual {v7, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 274
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 294
    :cond_5
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    new-array v3, v4, [Ljava/lang/CharSequence;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 295
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    new-array v1, v4, [Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setScreenLockTimeoutSummary(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f110177

    .line 461
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    const v0, 0x7f110173

    .line 464
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    const v0, 0x7f110174

    .line 467
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private setSettingsEnabled(Z)V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->enableBluetooth:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 424
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torMobile:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 426
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 427
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifySound:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private setTorNetworkSummary(I)V
    .locals 6

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    .line 313
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->locationUtils:Lorg/briarproject/bramble/api/system/LocationUtils;

    invoke-interface {p1}, Lorg/briarproject/bramble/api/system/LocationUtils;->getCurrentCountry()Ljava/lang/String;

    move-result-object p1

    .line 315
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 316
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 317
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 321
    :goto_1
    iget-object v1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    .line 322
    invoke-interface {v1, p1}, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->isTorProbablyBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 323
    iget-object v3, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->circumventionProvider:Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;

    invoke-interface {v3, p1}, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->doBridgesWork(Ljava/lang/String;)Z

    move-result p1

    const v3, 0x7f1101cc

    .line 324
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    const p1, 0x7f1101cb

    .line 326
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    const p1, 0x7f1101c9

    .line 328
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 330
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f1101ca

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    const/4 v2, 0x1

    aput-object v0, v4, v2

    .line 331
    invoke-virtual {p0, v1, v4}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setupNotificationPreference(Landroid/support/v14/preference/SwitchPreference;Ljava/lang/String;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setWidgetLayoutResource(I)V

    .line 475
    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 476
    new-instance p3, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;

    invoke-direct {p3, p0, p2}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private storeBluetoothSettings(Z)V
    .locals 2

    .line 589
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "enable"

    .line 590
    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 591
    sget-object p1, Lorg/briarproject/briar/android/settings/SettingsFragment;->BT_NAMESPACE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V
    .locals 1

    const-string v0, "android-ui"

    .line 595
    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private storeTorMobileSetting(Z)V
    .locals 2

    .line 583
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "useMobileData"

    .line 584
    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 585
    sget-object p1, Lorg/briarproject/briar/android/settings/SettingsFragment;->TOR_NAMESPACE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method

.method private storeTorNetworkSetting(I)V
    .locals 2

    .line 577
    new-instance v0, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {v0}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v1, "network2"

    .line 578
    invoke-virtual {v0, v1, p1}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    .line 579
    sget-object p1, Lorg/briarproject/briar/android/settings/SettingsFragment;->TOR_NAMESPACE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->mergeSettings(Lorg/briarproject/bramble/api/settings/Settings;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public eventOccurred(Lorg/briarproject/bramble/api/event/Event;)V
    .locals 2

    .line 645
    instance-of v0, p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    if-eqz v0, :cond_2

    .line 646
    check-cast p1, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;

    .line 647
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android-ui"

    .line 648
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    sget-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Settings updated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 650
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->settings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 651
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->displaySettings()V

    goto :goto_0

    .line 652
    :cond_0
    sget-object v1, Lorg/briarproject/briar/android/settings/SettingsFragment;->BT_NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    sget-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Bluetooth settings updated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->btSettings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 655
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->displaySettings()V

    goto :goto_0

    .line 656
    :cond_1
    sget-object v1, Lorg/briarproject/briar/android/settings/SettingsFragment;->TOR_NAMESPACE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    sget-object v0, Lorg/briarproject/briar/android/settings/SettingsFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Tor settings updated"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Lorg/briarproject/bramble/api/settings/event/SettingsUpdatedEvent;->getSettings()Lorg/briarproject/bramble/api/settings/Settings;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torSettings:Lorg/briarproject/bramble/api/settings/Settings;

    .line 659
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->displaySettings()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 612
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 614
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 615
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const-string p2, "notifySound"

    .line 618
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "notifyRingtoneName"

    const-string p3, ""

    .line 619
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "notifyRingtoneUri"

    const-string p3, ""

    .line 620
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 621
    :cond_0
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-string p2, "notifySound"

    .line 623
    invoke-virtual {p1, p2, v1}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "notifyRingtoneName"

    const-string p3, ""

    .line 624
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "notifyRingtoneUri"

    const-string p3, ""

    .line 625
    invoke-virtual {p1, p2, p3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    if-nez v0, :cond_2

    .line 630
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f110063

    invoke-static {p2, v0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    .line 631
    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "notifySound"

    .line 634
    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "notifyRingtoneName"

    .line 635
    invoke-virtual {p1, v0, p3}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "notifyRingtoneUri"

    .line 636
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/briarproject/bramble/api/settings/Settings;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :goto_0
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 150
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onAttach(Landroid/content/Context;)V

    .line 151
    check-cast p1, Lorg/briarproject/briar/android/settings/SettingsActivity;

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

    .line 154
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->listener:Lorg/briarproject/briar/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/settings/SettingsActivity;->getActivityComponent()Lorg/briarproject/briar/android/activity/ActivityComponent;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/briarproject/briar/android/activity/ActivityComponent;->inject(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    const p1, 0x7f140001

    .line 159
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->addPreferencesFromResource(I)V

    const-string p1, "pref_key_language"

    .line 161
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    .line 162
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setLanguageEntries()V

    const-string p1, "pref_key_theme"

    .line 164
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    const-string p2, "pref_key_bluetooth"

    .line 165
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/ListPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->enableBluetooth:Landroid/support/v7/preference/ListPreference;

    const-string p2, "pref_key_tor_network"

    .line 166
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/ListPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    const-string p2, "pref_key_tor_mobile_data"

    .line 167
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torMobile:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_lock"

    .line 168
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_lock_timeout"

    .line 170
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/ListPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    const-string p2, "pref_key_notify_private_messages"

    .line 171
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_notify_group_messages"

    .line 173
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_notify_forum_posts"

    .line 175
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_notify_blog_posts"

    .line 177
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_notify_vibration"

    .line 179
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    const-string p2, "pref_key_notify_sound"

    .line 181
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifySound:Landroid/support/v7/preference/Preference;

    .line 183
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    new-instance p2, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$p0iq8tM5pJBJOvbVtbveHILN5ko;

    invoke-direct {p2, p0}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$p0iq8tM5pJBJOvbVtbveHILN5ko;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->enableBluetooth:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torMobile:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 205
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    iget-object p2, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string p2, "pref_key_send_feedback"

    .line 208
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    new-instance v0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$hHeME9RazXf7XcIvnvfkjhQVCiY;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$hHeME9RazXf7XcIvnvfkjhQVCiY;-><init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 214
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x1b

    if-ge p2, v1, :cond_0

    .line 216
    new-instance p2, Ljava/util/ArrayList;

    .line 217
    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const v1, 0x7f11017f

    .line 218
    invoke-virtual {p0, v1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_0
    const-string p1, "pref_key_explode"

    .line 228
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    const-string p1, "pref_key_test_data"

    .line 229
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    const-string p1, "pref_key_explode"

    .line 231
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setVisible(Z)V

    return-void

    .line 232
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 240
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 241
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    .line 242
    invoke-virtual {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    const v0, 0x7f06005b

    invoke-static {p3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 243
    invoke-virtual {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 509
    iget-object p1, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->language:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 510
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->languageChanged(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 512
    :cond_1
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->enableBluetooth:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_2

    .line 513
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 514
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeBluetoothSettings(Z)V

    goto/16 :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torNetwork:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_3

    .line 516
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 517
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeTorNetworkSetting(I)V

    .line 518
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setTorNetworkSummary(I)V

    goto/16 :goto_0

    .line 519
    :cond_3
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->torMobile:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    .line 520
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 521
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeTorMobileSetting(Z)V

    goto/16 :goto_0

    .line 522
    :cond_4
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLock:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_5

    .line 523
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "pref_key_lock"

    .line 524
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 525
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    goto/16 :goto_0

    .line 526
    :cond_5
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->screenLockTimeout:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 527
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    .line 528
    check-cast p2, Ljava/lang/String;

    const-string v0, "pref_key_lock_timeout"

    .line 529
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/briarproject/bramble/api/settings/Settings;->putInt(Ljava/lang/String;I)V

    .line 530
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    .line 531
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setScreenLockTimeoutSummary(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_6
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyPrivateMessages:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_7

    .line 533
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "notifyPrivateMessages"

    .line 534
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    goto :goto_0

    .line 536
    :cond_7
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyGroupMessages:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_8

    .line 537
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "notifyGroupMessages"

    .line 538
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 539
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    goto :goto_0

    .line 540
    :cond_8
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyForumPosts:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_9

    .line 541
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "notifyForumPosts"

    .line 542
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 543
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    goto :goto_0

    .line 544
    :cond_9
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyBlogPosts:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_a

    .line 545
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "notifyBlogPosts"

    .line 546
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 547
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    goto :goto_0

    .line 548
    :cond_a
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->notifyVibration:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_b

    .line 549
    new-instance p1, Lorg/briarproject/bramble/api/settings/Settings;

    invoke-direct {p1}, Lorg/briarproject/bramble/api/settings/Settings;-><init>()V

    const-string v0, "notifyVibration"

    .line 550
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/briarproject/bramble/api/settings/Settings;->putBoolean(Ljava/lang/String;Z)V

    .line 551
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->storeSettings(Lorg/briarproject/bramble/api/settings/Settings;)V

    :cond_b
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onStart()V
    .locals 1

    .line 249
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onStart()V

    .line 250
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->setSettingsEnabled(Z)V

    .line 252
    invoke-direct {p0}, Lorg/briarproject/briar/android/settings/SettingsFragment;->loadSettings()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 257
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onStop()V

    .line 258
    iget-object v0, p0, Lorg/briarproject/briar/android/settings/SettingsFragment;->eventBus:Lorg/briarproject/bramble/api/event/EventBus;

    invoke-interface {v0, p0}, Lorg/briarproject/bramble/api/event/EventBus;->removeListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-void
.end method
