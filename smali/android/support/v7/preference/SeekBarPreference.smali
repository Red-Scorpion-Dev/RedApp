.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field mAdjustable:Z

.field private mMax:I

.field mMin:I

.field mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 145
    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 93
    new-instance v0, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v0, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    .line 124
    sget-object v0, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 132
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 133
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    .line 134
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    .line 135
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    .line 136
    sget p2, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    .line 137
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2

    .line 264
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 265
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 267
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    .line 268
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 271
    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    .line 272
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 273
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_3

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_3
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 154
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 155
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    sget v0, Landroid/support/v7/preference/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 157
    sget v0, Landroid/support/v7/preference/R$id;->seekbar_value:I

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 158
    iget-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    .line 165
    :goto_0
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p1, "SeekBarPreference"

    const-string v0, "SeekBar view is null in onBindViewHolder."

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 169
    :cond_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 175
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 181
    :goto_1
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 183
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_3
    iget-object p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 321
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 328
    :cond_0
    check-cast p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    .line 329
    invoke-virtual {p1}, Landroid/support/v7/preference/SeekBarPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v7/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    .line 331
    iget v0, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 332
    iget p1, p1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 333
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 305
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 306
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 312
    :cond_0
    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 313
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->seekBarValue:I

    .line 314
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->min:I

    .line 315
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iput v0, v1, Landroid/support/v7/preference/SeekBarPreference$SavedState;->max:I

    return-object v1
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 193
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValue(I)V

    return-void
.end method

.method public final setMax(I)V
    .locals 1

    .line 216
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    .line 217
    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    .line 219
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    .line 220
    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    .line 221
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2

    .line 241
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    .line 242
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    .line 243
    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x1

    .line 260
    invoke-direct {p0, p1, v0}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    return-void
.end method

.method syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 2

    .line 293
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_1

    .line 295
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 296
    invoke-direct {p0, v0, p1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    goto :goto_0

    .line 298
    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
