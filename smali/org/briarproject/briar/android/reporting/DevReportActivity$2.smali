.class Lorg/briarproject/briar/android/reporting/DevReportActivity$2;
.super Landroid/os/AsyncTask;
.source "DevReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/reporting/DevReportActivity;->processReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

.field final synthetic val$includeReport:Z


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;Z)V
    .locals 0

    .line 334
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    iput-boolean p2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->val$includeReport:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7

    .line 338
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "REPORT_FILE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 340
    new-instance v0, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v0}, Lorg/acra/file/CrashReportPersister;-><init>()V

    .line 342
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/acra/file/CrashReportPersister;->load(Ljava/io/File;)Lorg/acra/collector/CrashReportData;

    move-result-object v1

    .line 343
    iget-boolean v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->val$includeReport:Z

    if-eqz v2, :cond_0

    .line 344
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$200(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/acra/ReportField;

    .line 345
    invoke-static {}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$000()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, v3}, Lorg/acra/collector/CrashReportData;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 351
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 353
    invoke-static {}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$100()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 354
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 358
    :cond_2
    invoke-virtual {v0, v1, p1}, Lorg/acra/file/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/io/File;)V

    const/4 p1, 0x1

    .line 359
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 361
    invoke-static {}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Error processing report file"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 362
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 334
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 368
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    .line 371
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$500(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$500(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, ""

    .line 374
    iget-object v1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$600(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$600(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    :cond_1
    iget-object v1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v1, p1, v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$700(Lorg/briarproject/briar/android/reporting/DevReportActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->finish()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 334
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
