.class public Linfo/guardianproject/panic/Panic;
.super Ljava/lang/Object;
.source "Panic.java"


# direct methods
.method public static isTriggerIntent(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "info.guardianproject.panic.action.TRIGGER"

    .line 22
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
