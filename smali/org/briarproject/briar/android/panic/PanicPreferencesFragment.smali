.class public Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;
.super Landroid/support/v7/preference/PreferenceFragmentCompat;
.source "PanicPreferencesFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final KEY_LOCK:Ljava/lang/String; = "pref_key_lock"

.field public static final KEY_PANIC_APP:Ljava/lang/String; = "pref_key_panic_app"

.field public static final KEY_PURGE:Ljava/lang/String; = "pref_key_purge"

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private lockPref:Landroid/support/v14/preference/SwitchPreference;

.field private panicAppPref:Landroid/support/v7/preference/ListPreference;

.field private pm:Landroid/content/pm/PackageManager;

.field private purgePref:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;-><init>()V

    return-void
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .locals 1

    .line 228
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static synthetic lambda$showOptInDialog$2(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;)V

    .line 195
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    return-void
.end method

.method public static synthetic lambda$showOptInDialog$3(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 199
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 200
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$updatePreferences$0(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 97
    check-cast p2, Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p2}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    const-string p1, "NONE"

    .line 101
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 103
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 104
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_0
    return p2
.end method

.method public static synthetic lambda$updatePreferences$1(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 114
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "market://details?id=info.guardianproject.ripple"

    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private showOptInDialog()V
    .locals 8

    .line 193
    new-instance v0, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$lfDs1QoGoehb4WFlJrn3HheCJu8;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$lfDs1QoGoehb4WFlJrn3HheCJu8;-><init>(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;)V

    .line 198
    new-instance v1, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$EkPA2dajrfM37Mr9MN2vsRbr_Q4;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$EkPA2dajrfM37Mr9MN2vsRbr_Q4;-><init>(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;)V

    .line 203
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200ca

    invoke-direct {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f110091

    .line 205
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f1101d4

    .line 207
    invoke-virtual {p0, v3}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-direct {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getCallingPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 211
    :try_start_0
    iget-object v6, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 212
    invoke-virtual {v7, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 211
    invoke-virtual {v6, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v4

    .line 214
    sget-object v6, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->LOG:Ljava/util/logging/Logger;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const v4, 0x7f11008d

    .line 219
    invoke-virtual {p0, v4}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v5

    .line 218
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 220
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f11002a

    .line 221
    invoke-virtual {v2, v3, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const v0, 0x7f110062

    .line 222
    invoke-virtual {v2, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    return-void
.end method

.method private showPanicApp(Ljava/lang/String;)V
    .locals 4

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "NONE"

    .line 162
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 177
    invoke-virtual {v3, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 176
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    .line 179
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 178
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    :catch_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "NONE"

    invoke-static {p1, v0}, Linfo/guardianproject/panic/PanicResponder;->setTriggerPackageName(Landroid/app/Activity;Ljava/lang/String;)V

    const-string p1, "NONE"

    .line 187
    invoke-direct {p0, p1}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const-string v0, "NONE"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const v0, 0x7f11014f

    .line 166
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 167
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const v0, 0x1080038

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setIcon(I)V

    .line 171
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updatePreferences()V
    .locals 7

    .line 52
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    const-string v0, "pref_key_lock"

    .line 54
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->lockPref:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "pref_key_panic_app"

    .line 55
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const-string v0, "pref_key_purge"

    .line 56
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    .line 59
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Linfo/guardianproject/panic/PanicResponder;->checkForDisconnectIntent(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Received DISCONNECT intent from Panic Trigger App."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Linfo/guardianproject/panic/PanicResponder;->getConnectIntentSender(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    sget-object v0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Received CONNECT intent from new Panic Trigger App."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->showOptInDialog()V

    .line 80
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f11014e

    .line 82
    invoke-virtual {p0, v2}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v2, "NONE"

    .line 83
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    invoke-static {v2}, Linfo/guardianproject/panic/PanicResponder;->resolveTriggerApps(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 86
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_2

    goto :goto_1

    .line 88
    :cond_2
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    :cond_3
    iget-object v2, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    new-array v4, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 93
    iget-object v2, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    new-instance v2, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$9T3XtZhT_vAxQlre-hGuBZnSp8o;

    invoke-direct {v2, p0}, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$9T3XtZhT_vAxQlre-hGuBZnSp8o;-><init>(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_4

    .line 113
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    new-instance v1, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$pxPVhLZQfAv_NzLdRPMgxBab-vA;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$pxPVhLZQfAv_NzLdRPMgxBab-vA;-><init>(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2

    .line 125
    :cond_4
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->panicAppPref:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    const/high16 p1, 0x7f140000

    .line 48
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pref_key_purge"

    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "pref_key_purge"

    .line 150
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->lockPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    const-string v0, "pref_key_lock"

    .line 154
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "pref_key_lock"

    .line 155
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 156
    iget-object p1, p0, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->purgePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onStart()V

    .line 132
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 133
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 134
    invoke-direct {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->updatePreferences()V

    .line 135
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Linfo/guardianproject/panic/PanicResponder;->getTriggerPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->showPanicApp(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 140
    invoke-super {p0}, Landroid/support/v7/preference/PreferenceFragmentCompat;->onStop()V

    .line 141
    invoke-virtual {p0}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 142
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
