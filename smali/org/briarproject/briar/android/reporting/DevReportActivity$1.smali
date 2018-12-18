.class Lorg/briarproject/briar/android/reporting/DevReportActivity$1;
.super Landroid/os/AsyncTask;
.source "DevReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/reporting/DevReportActivity;->refresh()V
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
        "Lorg/acra/collector/CrashReportData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/reporting/DevReportActivity;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->doInBackground([Ljava/lang/Void;)Lorg/acra/collector/CrashReportData;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lorg/acra/collector/CrashReportData;
    .locals 3

    .line 282
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-virtual {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "REPORT_FILE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 284
    new-instance v0, Lorg/acra/file/CrashReportPersister;

    invoke-direct {v0}, Lorg/acra/file/CrashReportPersister;-><init>()V

    .line 286
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/acra/file/CrashReportPersister;->load(Ljava/io/File;)Lorg/acra/collector/CrashReportData;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 288
    invoke-static {}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Could not load report file"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 278
    check-cast p1, Lorg/acra/collector/CrashReportData;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->onPostExecute(Lorg/acra/collector/CrashReportData;)V

    return-void
.end method

.method protected onPostExecute(Lorg/acra/collector/CrashReportData;)V
    .locals 8

    .line 295
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 297
    invoke-virtual {p1}, Lorg/acra/collector/CrashReportData;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/acra/ReportField;

    .line 299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/acra/model/Element;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\\\n"

    const-string v5, "\n"

    .line 300
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-static {}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$100()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 302
    iget-object v5, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v5}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$200(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const v6, 0x7f0c0063

    .line 303
    iget-object v7, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    .line 304
    invoke-static {v7}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 303
    invoke-virtual {v0, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0900d5

    .line 305
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 306
    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    if-nez v4, :cond_1

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    .line 307
    :goto_2
    invoke-virtual {v7, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    xor-int/lit8 v4, v4, 0x1

    .line 308
    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 309
    iget-object v4, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 310
    invoke-virtual {v3}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f090074

    .line 311
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 312
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    const p1, 0x1090003

    .line 316
    iget-object v2, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    .line 317
    invoke-static {v2}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 316
    invoke-virtual {v0, p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020014

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f11007e

    .line 319
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 320
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {v0}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    :cond_3
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$300(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    iget-object p1, p0, Lorg/briarproject/briar/android/reporting/DevReportActivity$1;->this$0:Lorg/briarproject/briar/android/reporting/DevReportActivity;

    invoke-static {p1}, Lorg/briarproject/briar/android/reporting/DevReportActivity;->access$400(Lorg/briarproject/briar/android/reporting/DevReportActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
