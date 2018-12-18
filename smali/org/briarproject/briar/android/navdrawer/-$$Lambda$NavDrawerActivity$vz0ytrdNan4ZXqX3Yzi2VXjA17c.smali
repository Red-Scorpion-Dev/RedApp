.class public final synthetic Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vz0ytrdNan4ZXqX3Yzi2VXjA17c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vz0ytrdNan4ZXqX3Yzi2VXjA17c;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/briarproject/briar/android/navdrawer/-$$Lambda$NavDrawerActivity$vz0ytrdNan4ZXqX3Yzi2VXjA17c;->f$0:Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;->lambda$vz0ytrdNan4ZXqX3Yzi2VXjA17c(Lorg/briarproject/briar/android/navdrawer/NavDrawerActivity;Z)V

    return-void
.end method
