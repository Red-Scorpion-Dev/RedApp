.class public interface abstract Lorg/h2/store/DataHandler;
.super Ljava/lang/Object;
.source "DataHandler.java"


# virtual methods
.method public abstract checkPowerOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/h2/message/DbException;
        }
    .end annotation
.end method

.method public abstract checkWritingAllowed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/h2/message/DbException;
        }
    .end annotation
.end method

.method public abstract getCompareMode()Lorg/h2/value/CompareMode;
.end method

.method public abstract getDatabasePath()Ljava/lang/String;
.end method

.method public abstract getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
.end method

.method public abstract getLobCompressionAlgorithm(I)Ljava/lang/String;
.end method

.method public abstract getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLobStorage()Lorg/h2/store/LobStorageInterface;
.end method

.method public abstract getLobSyncObject()Ljava/lang/Object;
.end method

.method public abstract getMaxLengthInplaceLob()I
.end method

.method public abstract getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
.end method

.method public abstract openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
.end method

.method public abstract readLob(J[BJ[BII)I
.end method
