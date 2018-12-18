.class public interface abstract Lorg/briarproject/bramble/api/account/AccountManager;
.super Ljava/lang/Object;
.source "AccountManager.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# virtual methods
.method public abstract accountExists()Z
.end method

.method public abstract changePassword(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract createAccount(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract deleteAccount()V
.end method

.method public abstract getDatabaseKey()Lorg/briarproject/bramble/api/crypto/SecretKey;
.end method

.method public abstract hasDatabaseKey()Z
.end method

.method public abstract signIn(Ljava/lang/String;)Z
.end method
