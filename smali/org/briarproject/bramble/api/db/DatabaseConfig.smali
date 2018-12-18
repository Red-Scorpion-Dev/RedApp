.class public interface abstract Lorg/briarproject/bramble/api/db/DatabaseConfig;
.super Ljava/lang/Object;
.source "DatabaseConfig.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract getDatabaseDirectory()Ljava/io/File;
.end method

.method public abstract getDatabaseKeyDirectory()Ljava/io/File;
.end method

.method public abstract getMaxSize()J
.end method
