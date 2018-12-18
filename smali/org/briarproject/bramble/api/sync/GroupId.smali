.class public Lorg/briarproject/bramble/api/sync/GroupId;
.super Lorg/briarproject/bramble/api/UniqueId;
.source "GroupId.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field public static final LABEL:Ljava/lang/String; = "org.briarproject.bramble/GROUP_ID"


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/api/UniqueId;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 26
    instance-of v0, p1, Lorg/briarproject/bramble/api/sync/GroupId;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/briarproject/bramble/api/UniqueId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
