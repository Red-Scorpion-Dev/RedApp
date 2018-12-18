.class public final synthetic Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$pxPVhLZQfAv_NzLdRPMgxBab-vA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$pxPVhLZQfAv_NzLdRPMgxBab-vA;->f$0:Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/panic/-$$Lambda$PanicPreferencesFragment$pxPVhLZQfAv_NzLdRPMgxBab-vA;->f$0:Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;->lambda$updatePreferences$1(Lorg/briarproject/briar/android/panic/PanicPreferencesFragment;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
