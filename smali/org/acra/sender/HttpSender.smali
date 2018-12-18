.class public Lorg/acra/sender/HttpSender;
.super Ljava/lang/Object;
.source "HttpSender.java"

# interfaces
.implements Lorg/acra/sender/ReportSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/sender/HttpSender$Type;,
        Lorg/acra/sender/HttpSender$Method;
    }
.end annotation


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final mFormUri:Landroid/net/Uri;

.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMethod:Lorg/acra/sender/HttpSender$Method;

.field private mPassword:Ljava/lang/String;

.field private final mType:Lorg/acra/sender/HttpSender$Type;

.field private mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;)V
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    .line 207
    iput-object p2, p0, Lorg/acra/sender/HttpSender;->mMethod:Lorg/acra/sender/HttpSender$Method;

    const/4 p1, 0x0

    if-nez p4, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 208
    :cond_0
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/acra/sender/HttpSender;->mFormUri:Landroid/net/Uri;

    .line 209
    iput-object p5, p0, Lorg/acra/sender/HttpSender;->mMapping:Ljava/util/Map;

    .line 210
    iput-object p3, p0, Lorg/acra/sender/HttpSender;->mType:Lorg/acra/sender/HttpSender$Type;

    .line 211
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->mUsername:Ljava/lang/String;

    .line 212
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/util/Map<",
            "Lorg/acra/ReportField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 181
    invoke-direct/range {v0 .. v5}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    const-string v0, "ACRA-NULL-STRING"

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private remap(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/acra/ReportField;",
            "Lorg/acra/model/Element;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->reportContent()Lorg/acra/collections/ImmutableSet;

    move-result-object v0

    .line 327
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    new-instance v0, Lorg/acra/collections/ImmutableSet;

    sget-object v1, Lorg/acra/ACRAConstants;->DEFAULT_REPORT_FIELDS:[Lorg/acra/ReportField;

    invoke-direct {v0, v1}, Lorg/acra/collections/ImmutableSet;-><init>([Ljava/lang/Object;)V

    .line 331
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 332
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/ReportField;

    .line 333
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/acra/model/Element;

    if-eqz v3, :cond_1

    const-string v4, "\n"

    .line 334
    invoke-interface {v3}, Lorg/acra/model/Element;->flatten()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 335
    :goto_1
    iget-object v4, p0, Lorg/acra/sender/HttpSender;->mMapping:Ljava/util/Map;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/acra/sender/HttpSender;->mMapping:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    iget-object v4, p0, Lorg/acra/sender/HttpSender;->mMapping:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 336
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method protected convertToForm(Lorg/acra/collector/CrashReportData;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/collector/CrashReportData;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1}, Lorg/acra/sender/HttpSender;->remap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method protected convertToJson(Lorg/acra/collector/CrashReportData;)Lorg/json/JSONObject;
    .locals 0

    .line 309
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->toJSON()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected postMultipart(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v9, Lorg/acra/http/MultipartHttpRequest;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/acra/http/MultipartHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    move-object/from16 v0, p9

    move-object/from16 v1, p11

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    move-object/from16 v1, p10

    invoke-virtual {v9, v1, v0}, Lorg/acra/http/MultipartHttpRequest;->send(Ljava/net/URL;Ljava/lang/Object;)V

    return-void
.end method

.method protected putAttachment(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/net/URL;Landroid/net/Uri;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p9

    .line 297
    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p8 .. p8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p2

    invoke-static {p2, v0}, Lorg/acra/http/HttpUtils;->getFileNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 298
    new-instance v2, Lorg/acra/http/BinaryHttpRequest;

    sget-object v7, Lorg/acra/sender/HttpSender$Method;->PUT:Lorg/acra/sender/HttpSender$Method;

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-direct/range {v4 .. v12}, Lorg/acra/http/BinaryHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    invoke-virtual {v2, v1, v0}, Lorg/acra/http/BinaryHttpRequest;->send(Ljava/net/URL;Ljava/lang/Object;)V

    return-void
.end method

.method public send(Landroid/content/Context;Lorg/acra/collector/CrashReportData;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/sender/ReportSenderException;
        }
    .end annotation

    move-object v14, p0

    move-object/from16 v0, p2

    .line 234
    :try_start_0
    iget-object v1, v14, Lorg/acra/sender/HttpSender;->mFormUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    iget-object v1, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->formUri()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v14, Lorg/acra/sender/HttpSender;->mFormUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    sget-boolean v2, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v2, :cond_1

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mUsername:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mUsername:Ljava/lang/String;

    :goto_1
    move-object v6, v2

    goto :goto_2

    :cond_2
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/acra/sender/HttpSender;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v6, v3

    goto :goto_2

    :cond_3
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 238
    :goto_2
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mPassword:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mPassword:Ljava/lang/String;

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_4
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/acra/sender/HttpSender;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v7, v3

    goto :goto_4

    :cond_5
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 240
    :goto_4
    new-instance v2, Lorg/acra/util/InstanceCreator;

    invoke-direct {v2}, Lorg/acra/util/InstanceCreator;-><init>()V

    .line 241
    iget-object v3, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->attachmentUriProvider()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lorg/acra/attachment/DefaultAttachmentProvider;

    invoke-direct {v4}, Lorg/acra/attachment/DefaultAttachmentProvider;-><init>()V

    invoke-virtual {v2, v3, v4}, Lorg/acra/util/InstanceCreator;->create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/attachment/AttachmentUriProvider;

    iget-object v3, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Lorg/acra/attachment/AttachmentUriProvider;->getAttachments(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Ljava/util/List;

    move-result-object v13

    .line 244
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mType:Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v2, p0, v0}, Lorg/acra/sender/HttpSender$Type;->convertReport(Lorg/acra/sender/HttpSender;Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v11

    .line 247
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->mMethod:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v2, v1, v0}, Lorg/acra/sender/HttpSender$Method;->createURL(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)Ljava/net/URL;

    move-result-object v12

    .line 249
    iget-object v2, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    iget-object v0, v14, Lorg/acra/sender/HttpSender;->mMethod:Lorg/acra/sender/HttpSender$Method;

    iget-object v5, v14, Lorg/acra/sender/HttpSender;->mType:Lorg/acra/sender/HttpSender$Type;

    iget-object v1, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->connectionTimeout()I

    move-result v8

    iget-object v1, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    .line 250
    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->socketTimeout()I

    move-result v9

    iget-object v1, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->httpHeaders()Lorg/acra/collections/ImmutableMap;

    move-result-object v10

    move-object v1, p0

    move-object/from16 v3, p1

    move-object v4, v0

    .line 249
    invoke-virtual/range {v1 .. v13}, Lorg/acra/sender/HttpSender;->sendHttpRequests(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 253
    new-instance v1, Lorg/acra/sender/ReportSenderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lorg/acra/sender/HttpSender;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " report via Http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lorg/acra/sender/HttpSender;->mMethod:Lorg/acra/sender/HttpSender$Method;

    .line 254
    invoke-virtual {v3}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/acra/sender/ReportSenderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected sendHttpRequests(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    sget-object v0, Lorg/acra/sender/HttpSender$1;->$SwitchMap$org$acra$sender$HttpSender$Method:[I

    invoke-virtual {p3}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 271
    :pswitch_0
    invoke-virtual/range {p0 .. p11}, Lorg/acra/sender/HttpSender;->sendWithoutAttachments(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;)V

    .line 272
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/net/Uri;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 273
    invoke-virtual/range {v2 .. v11}, Lorg/acra/sender/HttpSender;->putAttachment(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/net/URL;Landroid/net/Uri;)V

    goto :goto_0

    .line 264
    :pswitch_1
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual/range {p0 .. p11}, Lorg/acra/sender/HttpSender;->sendWithoutAttachments(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;)V

    goto :goto_1

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    .line 267
    invoke-virtual/range {v0 .. v11}, Lorg/acra/sender/HttpSender;->postMultipart(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;Ljava/util/List;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected sendWithoutAttachments(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;Ljava/lang/String;Ljava/net/URL;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/acra/config/ACRAConfiguration;",
            "Landroid/content/Context;",
            "Lorg/acra/sender/HttpSender$Method;",
            "Lorg/acra/sender/HttpSender$Type;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v10, Lorg/acra/http/DefaultHttpRequest;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lorg/acra/http/DefaultHttpRequest;-><init>(Lorg/acra/config/ACRAConfiguration;Landroid/content/Context;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/lang/String;Ljava/lang/String;IILjava/util/Map;)V

    move-object/from16 v0, p10

    move-object/from16 v1, p11

    invoke-virtual {v10, v1, v0}, Lorg/acra/http/DefaultHttpRequest;->send(Ljava/net/URL;Ljava/lang/Object;)V

    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lorg/acra/sender/HttpSender;->mUsername:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lorg/acra/sender/HttpSender;->mPassword:Ljava/lang/String;

    return-void
.end method
