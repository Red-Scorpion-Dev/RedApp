.class public final synthetic Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$p0iq8tM5pJBJOvbVtbveHILN5ko;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/settings/SettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$p0iq8tM5pJBJOvbVtbveHILN5ko;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/settings/-$$Lambda$SettingsFragment$p0iq8tM5pJBJOvbVtbveHILN5ko;->f$0:Lorg/briarproject/briar/android/settings/SettingsFragment;

    invoke-static {v0, p1, p2}, Lorg/briarproject/briar/android/settings/SettingsFragment;->lambda$onCreatePreferences$0(Lorg/briarproject/briar/android/settings/SettingsFragment;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
