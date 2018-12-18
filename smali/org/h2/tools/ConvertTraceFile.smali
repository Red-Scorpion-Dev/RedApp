.class public Lorg/h2/tools/ConvertTraceFile;
.super Lorg/h2/util/Tool;
.source "ConvertTraceFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/tools/ConvertTraceFile$Stat;
    }
.end annotation


# instance fields
.field private final stats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/tools/ConvertTraceFile$Stat;",
            ">;"
        }
    .end annotation
.end field

.field private timeTotal:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lorg/h2/util/Tool;-><init>()V

    .line 32
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    return-void
.end method

.method private addToStats(Ljava/lang/String;IJ)V
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/tools/ConvertTraceFile$Stat;

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Lorg/h2/tools/ConvertTraceFile$Stat;

    invoke-direct {v0}, Lorg/h2/tools/ConvertTraceFile$Stat;-><init>()V

    .line 220
    iput-object p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    .line 221
    iget-object v1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    iget p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    .line 224
    iget-wide v1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    int-to-long p1, p2

    add-long/2addr v1, p1

    iput-wide v1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    .line 225
    iget-wide p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    add-long/2addr p1, p3

    iput-wide p1, v0, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    .line 226
    iget-wide p1, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    return-void
.end method

.method private convertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/io/LineNumberReader;

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->newInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/IOUtils;->getBufferedReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 115
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 118
    new-instance v1, Ljava/io/PrintWriter;

    invoke-static {p3, v2}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p3

    invoke-static {p3}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string p3, "import java.io.*;"

    .line 121
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "import java.sql.*;"

    .line 122
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "import java.math.*;"

    .line 123
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p3, "import java.util.Calendar;"

    .line 124
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p3, 0x2f

    const/16 v3, 0x5c

    .line 125
    invoke-virtual {p2, v3, p3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-virtual {p2, p3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p3

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 128
    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 130
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "public class "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " {"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "    public static void main(String... args) throws Exception {"

    .line 131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "        Class.forName(\"org.h2.Driver\");"

    .line 133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v3, 0x0

    if-nez p2, :cond_4

    const-string p2, "    }"

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 p2, 0x7d

    .line 172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(C)V

    .line 173
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->close()V

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    .line 175
    iget-object p1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "-----------------------------------------"

    .line 176
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-- SQL Statement Statistics"

    .line 177
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-- time: total time in milliseconds (accumulated)"

    .line 178
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-- count: how many times the statement ran"

    .line 179
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-- result: total update count or row count"

    .line 180
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-----------------------------------------"

    .line 181
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "-- self accu    time   count  result sql"

    .line 182
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    iget-object p1, p0, Lorg/h2/tools/ConvertTraceFile;->stats:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    .line 185
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 186
    iget-wide p2, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    cmp-long v0, p2, v3

    if-nez v0, :cond_2

    const-wide/16 p2, 0x1

    .line 187
    iput-wide p2, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    .line 189
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/tools/ConvertTraceFile$Stat;

    int-to-long v2, v2

    .line 190
    iget-wide v4, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    add-long/2addr v2, v4

    long-to-int v2, v2

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "-- "

    .line 192
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x64

    iget-wide v5, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    mul-long v5, v5, v3

    iget-wide v3, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    div-long/2addr v5, v3

    const/4 v0, 0x3

    invoke-static {v5, v6, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "% "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v2, 0x64

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/h2/tools/ConvertTraceFile;->timeTotal:J

    div-long/2addr v3, v5

    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x25

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->time:J

    const/16 v0, 0x8

    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->executeCount:I

    int-to-long v3, v3

    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->resultCount:J

    invoke-static {v3, v4, v0}, Lorg/h2/tools/ConvertTraceFile;->padNumberLeft(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/h2/tools/ConvertTraceFile$Stat;->sql:Ljava/lang/String;

    invoke-static {p2}, Lorg/h2/tools/ConvertTraceFile;->removeNewlines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 205
    :cond_3
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-void

    :cond_4
    const-string p3, "/**/"

    .line 139
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string p3, "/*SQL"

    .line 142
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "*/"

    .line 143
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const-string v5, "*/"

    .line 144
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, p3

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 145
    invoke-static {v5}, Lorg/h2/util/StringUtils;->javaDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/*SQL"

    .line 146
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_b

    .line 151
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_9

    .line 153
    new-instance p3, Ljava/util/StringTokenizer;

    const-string v6, " :"

    invoke-direct {p3, p2, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    const/4 p2, 0x0

    .line 154
    :cond_6
    :goto_2
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 155
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v8, "l"

    .line 156
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 157
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_7
    const-string v8, "#"

    .line 159
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 160
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_2

    :cond_8
    const-string v8, "t"

    .line 161
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 162
    invoke-virtual {p3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_2

    :cond_9
    move-object v6, v5

    const/4 p2, 0x0

    .line 166
    :cond_a
    invoke-direct {p0, v6, p2, v3, v4}, Lorg/h2/tools/ConvertTraceFile;->addToStats(Ljava/lang/String;IJ)V

    .line 168
    :cond_b
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 77
    new-instance v0, Lorg/h2/tools/ConvertTraceFile;

    invoke-direct {v0}, Lorg/h2/tools/ConvertTraceFile;-><init>()V

    invoke-virtual {v0, p0}, Lorg/h2/tools/ConvertTraceFile;->runTool([Ljava/lang/String;)V

    return-void
.end method

.method private static padNumberLeft(JI)Ljava/lang/String;
    .locals 1

    .line 213
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string p1, " "

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lorg/h2/util/StringUtils;->pad(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static removeNewlines(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/16 v1, 0x20

    .line 209
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public varargs runTool([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "test.trace.db"

    const-string v1, "Test"

    const-string v2, "test.sql"

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_5

    .line 85
    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 86
    aget-object v4, p1, v3

    const-string v5, "-traceFile"

    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 88
    aget-object v0, p1, v3

    goto :goto_1

    :cond_0
    const-string v5, "-javaClass"

    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 90
    aget-object v1, p1, v3

    goto :goto_1

    :cond_1
    const-string v5, "-script"

    .line 91
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 92
    aget-object v2, p1, v3

    goto :goto_1

    :cond_2
    const-string v5, "-help"

    .line 93
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "-?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 97
    :cond_3
    invoke-virtual {p0, v4}, Lorg/h2/tools/ConvertTraceFile;->showUsageAndThrowUnsupportedOption(Ljava/lang/String;)Ljava/sql/SQLException;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/h2/tools/ConvertTraceFile;->showUsage()V

    return-void

    .line 101
    :cond_5
    :try_start_0
    invoke-direct {p0, v0, v1, v2}, Lorg/h2/tools/ConvertTraceFile;->convertFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 103
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method
