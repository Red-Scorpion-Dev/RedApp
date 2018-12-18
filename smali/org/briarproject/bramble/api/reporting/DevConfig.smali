.class public interface abstract Lorg/briarproject/bramble/api/reporting/DevConfig;
.super Ljava/lang/Object;
.source "DevConfig.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getDevOnionAddress()Ljava/lang/String;
.end method

.method public abstract getDevPublicKey()Lorg/briarproject/bramble/api/crypto/PublicKey;
.end method

.method public abstract getReportDir()Ljava/io/File;
.end method
