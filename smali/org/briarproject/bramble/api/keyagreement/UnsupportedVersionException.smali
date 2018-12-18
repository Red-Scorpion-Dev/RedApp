.class public Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;
.super Ljava/io/IOException;
.source "UnsupportedVersionException.java"


# instance fields
.field private final tooOld:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 14
    iput-boolean p1, p0, Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;->tooOld:Z

    return-void
.end method


# virtual methods
.method public isTooOld()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lorg/briarproject/bramble/api/keyagreement/UnsupportedVersionException;->tooOld:Z

    return v0
.end method
