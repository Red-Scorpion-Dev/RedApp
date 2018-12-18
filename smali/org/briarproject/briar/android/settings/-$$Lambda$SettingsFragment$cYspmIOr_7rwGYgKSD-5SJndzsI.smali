.class public final synthetic Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    iput-object p2, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    iget-object v1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$cYspmIOr_7rwGYgKSD-5SJndzsI;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->lambda$setupNotificationPreference$6(Lorg/briarproject/briar/android/settings/SettingsFragment;Ljava/lang/String;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
