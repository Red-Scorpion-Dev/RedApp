.class public interface abstract Lorg/h2/jmx/DatabaseInfoMBean;
.super Ljava/lang/Object;
.source "DatabaseInfoMBean.java"


# virtual methods
.method public abstract getCacheSize()I
.end method

.method public abstract getCacheSizeMax()I
.end method

.method public abstract getFileReadCount()J
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getFileWriteCount()J
.end method

.method public abstract getFileWriteCountTotal()J
.end method

.method public abstract getLogMode()I
.end method

.method public abstract getMode()Ljava/lang/String;
.end method

.method public abstract getTraceLevel()I
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public abstract isExclusive()Z
.end method

.method public abstract isMultiThreaded()Z
.end method

.method public abstract isMvcc()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public abstract listSessions()Ljava/lang/String;
.end method

.method public abstract listSettings()Ljava/lang/String;
.end method

.method public abstract setCacheSizeMax(I)V
.end method

.method public abstract setLogMode(I)V
.end method

.method public abstract setTraceLevel(I)V
.end method
