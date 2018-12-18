.class public final synthetic Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$hHeME9RazXf7XcIvnvfkjhQVCiY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$hHeME9RazXf7XcIvnvfkjhQVCiY;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$hHeME9RazXf7XcIvnvfkjhQVCiY;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/settings/SettingsFragment;->lambda$onCreatePreferences$1(Lorg/briarproject/briar/android/settings/SettingsFragment;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
