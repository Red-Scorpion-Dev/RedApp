.class Lorg/h2/tools/Recover$PageInputStream;
.super Ljava/io/InputStream;
.source "Recover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/tools/Recover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PageInputStream"
.end annotation


# instance fields
.field private dataPage:J

.field private final dataPages:Lorg/h2/util/IntArray;

.field private endOfFile:Z

.field private logKey:I

.field private nextTrunkPage:J

.field private final page:Lorg/h2/store/Data;

.field private final pageSize:I

.field private remaining:I

.field private final store:Lorg/h2/store/FileStore;

.field private trunkPage:J

.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;Lorg/h2/store/DataHandler;Lorg/h2/store/FileStore;IJJI)V
    .locals 1

    .line 1065
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1058
    new-instance v0, Lorg/h2/util/IntArray;

    invoke-direct {v0}, Lorg/h2/util/IntArray;-><init>()V

    iput-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    .line 1066
    iput-object p1, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    .line 1067
    iput-object p3, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    .line 1068
    iput p9, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    add-int/lit8 p4, p4, -0x1

    .line 1069
    iput p4, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    .line 1070
    iput-wide p5, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    .line 1071
    iput-wide p7, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    .line 1072
    invoke-static {p2, p9}, Lorg/h2/store/Data;->create(Lorg/h2/store/DataHandler;I)Lorg/h2/store/Data;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    return-void
.end method

.method private fillBuffer()V
    .locals 10

    .line 1117
    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    if-gtz v0, :cond_c

    iget-boolean v0, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 1120
    :cond_0
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    .line 1121
    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 1122
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1125
    :cond_1
    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    iput-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    .line 1126
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    iget v7, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    int-to-long v7, v7

    mul-long v3, v3, v7

    invoke-virtual {v0, v3, v4}, Lorg/h2/store/FileStore;->seek(J)V

    .line 1127
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v3, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v3

    iget v4, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-virtual {v0, v3, v1, v4}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 1128
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 1129
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v0

    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    long-to-int v3, v3

    iget v4, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-static {v0, v3, v4}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1130
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- ERROR: checksum mismatch page: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1131
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1134
    :cond_2
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    .line 1135
    iget-object v3, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readShortInt()S

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    .line 1137
    iget-object v1, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- log eof "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected type: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1142
    :cond_3
    iget-object v3, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    .line 1143
    iget-object v3, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v3}, Lorg/h2/store/Data;->readInt()I

    move-result v3

    .line 1144
    iget v4, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    .line 1145
    iget v2, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    if-eq v3, v2, :cond_4

    .line 1146
    iget-object v2, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "-- log eof "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected key: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " got: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    :cond_4
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readInt()I

    move-result v0

    int-to-long v7, v0

    iput-wide v7, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    .line 1150
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- log "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " next: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->nextTrunkPage:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readShortInt()S

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1154
    iget-object v2, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v2}, Lorg/h2/store/Data;->readInt()I

    move-result v2

    .line 1155
    iget-wide v3, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    cmp-long v7, v3, v5

    if-eqz v7, :cond_5

    int-to-long v3, v2

    .line 1156
    iget-wide v7, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    cmp-long v9, v3, v7

    if-nez v9, :cond_6

    .line 1157
    iput-wide v5, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPage:J

    .line 1163
    :cond_5
    iget-object v3, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v3, v2}, Lorg/h2/util/IntArray;->add(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1166
    :cond_7
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0}, Lorg/h2/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1167
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 1168
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0, v1}, Lorg/h2/util/IntArray;->get(I)I

    move-result v0

    int-to-long v3, v0

    .line 1169
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->dataPages:Lorg/h2/util/IntArray;

    invoke-virtual {v0, v1}, Lorg/h2/util/IntArray;->remove(I)V

    .line 1170
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget v5, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v0, v5, v6}, Lorg/h2/store/FileStore;->seek(J)V

    .line 1171
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->store:Lorg/h2/store/FileStore;

    iget-object v5, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v5}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v5

    iget v6, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-virtual {v0, v5, v1, v6}, Lorg/h2/store/FileStore;->readFully([BII)V

    .line 1172
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->reset()V

    .line 1173
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0}, Lorg/h2/store/Data;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    .line 1174
    iget-object v1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->getBytes()[B

    move-result-object v1

    long-to-int v5, v3

    iget v6, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    invoke-static {v1, v5, v6}, Lorg/h2/store/PageStore;->checksumTest([BII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1176
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-- ERROR: checksum mismatch page: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1177
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1180
    :cond_8
    iget-object v1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readShortInt()S

    .line 1181
    iget-object v1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->readInt()I

    move-result v1

    .line 1182
    iget-object v5, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v5}, Lorg/h2/store/Data;->readInt()I

    move-result v5

    .line 1183
    iget-object v6, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- log "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lorg/h2/tools/Recover$PageInputStream;->trunkPage:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v6, 0x8

    if-eq v0, v6, :cond_9

    .line 1185
    iget-object v5, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- log eof "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parent: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected type: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1189
    :cond_9
    iget v6, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    if-eq v5, v6, :cond_a

    .line 1190
    iget-object v6, p0, Lorg/h2/tools/Recover$PageInputStream;->writer:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-- log eof "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " type: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parent: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " expected key: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->logKey:I

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " got: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    iput-boolean v2, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    return-void

    .line 1195
    :cond_a
    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->pageSize:I

    iget-object v1, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v1}, Lorg/h2/store/Data;->length()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    :cond_b
    return-void

    :cond_c
    :goto_1
    return-void
.end method

.method private readBlock([BII)I
    .locals 1

    .line 1106
    invoke-direct {p0}, Lorg/h2/tools/Recover$PageInputStream;->fillBuffer()V

    .line 1107
    iget-boolean v0, p0, Lorg/h2/tools/Recover$PageInputStream;->endOfFile:Z

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1110
    :cond_0
    iget v0, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1111
    iget-object v0, p0, Lorg/h2/tools/Recover$PageInputStream;->page:Lorg/h2/store/Data;

    invoke-virtual {v0, p1, p2, p3}, Lorg/h2/store/Data;->read([BII)V

    .line 1112
    iget p1, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/h2/tools/Recover$PageInputStream;->remaining:I

    return p3
.end method


# virtual methods
.method public read()I
    .locals 3

    const/4 v0, 0x1

    .line 1077
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 1078
    invoke-virtual {p0, v0}, Lorg/h2/tools/Recover$PageInputStream;->read([B)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 1079
    :cond_0
    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 1084
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/h2/tools/Recover$PageInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 1094
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/tools/Recover$PageInputStream;->readBlock([BII)I

    move-result v1

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method
