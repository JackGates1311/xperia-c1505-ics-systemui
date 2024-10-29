.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# instance fields
.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormatStringModified:Ljava/lang/String;

.field private mClockFormatStringOriginal:Ljava/lang/String;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 113
    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/Clock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/Clock;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    return p1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 21

    .prologue
    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 138
    .local v9, "context":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f090001

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 140
    .local v5, "amPmStyle":I
    invoke-static {v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    .line 143
    .local v7, "b24":Z
    if-eqz v7, :cond_3

    .line 144
    const v16, 0x1040080

    .line 149
    .local v16, "res":I
    :goto_0
    const v2, 0xef00

    .line 150
    .local v2, "MAGIC1":C
    const v3, 0xef01

    .line 152
    .local v3, "MAGIC2":C
    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 153
    .local v10, "format":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatStringOriginal:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 154
    :cond_0
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatStringOriginal:Ljava/lang/String;

    .line 155
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/Clock;->mLocaleChanged:Z

    .line 161
    if-eqz v5, :cond_7

    .line 162
    const/4 v4, -0x1

    .line 163
    .local v4, "a":I
    const/4 v15, 0x0

    .line 164
    .local v15, "quoted":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 165
    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 167
    .local v8, "c":C
    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    .line 168
    if-nez v15, :cond_4

    const/4 v15, 0x1

    .line 170
    :cond_1
    :goto_2
    if-nez v15, :cond_5

    const/16 v19, 0x61

    move/from16 v0, v19

    if-ne v8, v0, :cond_5

    .line 171
    move v4, v12

    .line 176
    .end local v8    # "c":C
    :cond_2
    if-ltz v4, :cond_7

    .line 178
    move v6, v4

    .line 179
    .local v6, "b":I
    :goto_3
    if-lez v4, :cond_6

    add-int/lit8 v19, v4, -0x1

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 180
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 146
    .end local v2    # "MAGIC1":C
    .end local v3    # "MAGIC2":C
    .end local v4    # "a":I
    .end local v6    # "b":I
    .end local v10    # "format":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "quoted":Z
    .end local v16    # "res":I
    :cond_3
    const v16, 0x104007f

    .restart local v16    # "res":I
    goto :goto_0

    .line 168
    .restart local v2    # "MAGIC1":C
    .restart local v3    # "MAGIC2":C
    .restart local v4    # "a":I
    .restart local v8    # "c":C
    .restart local v10    # "format":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v15    # "quoted":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 164
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 182
    .end local v8    # "c":C
    .restart local v6    # "b":I
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef00

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "a"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const v20, 0xef01

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v6, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 188
    .end local v4    # "a":I
    .end local v6    # "b":I
    .end local v12    # "i":I
    .end local v15    # "quoted":Z
    :cond_7
    const/16 v19, 0x48

    const/16 v20, 0x6b

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 189
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatStringModified:Ljava/lang/String;

    .line 194
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 196
    .local v17, "result":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 197
    const v19, 0xef00

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 198
    .local v13, "magic1":I
    const v19, 0xef01

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 199
    .local v14, "magic2":I
    if-ltz v13, :cond_b

    if-le v14, v13, :cond_b

    .line 200
    new-instance v11, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 201
    .local v11, "formatted":Landroid/text/SpannableStringBuilder;
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v5, v0, :cond_9

    .line 202
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 216
    .end local v11    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    :goto_5
    return-object v11

    .line 191
    .end local v17    # "result":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatStringModified:Ljava/lang/String;

    goto :goto_4

    .line 204
    .restart local v11    # "formatted":Landroid/text/SpannableStringBuilder;
    .restart local v13    # "magic1":I
    .restart local v14    # "magic2":I
    .restart local v17    # "result":Ljava/lang/String;
    :cond_9
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v5, v0, :cond_a

    .line 205
    new-instance v18, Landroid/text/style/RelativeSizeSpan;

    const v19, 0x3f333333    # 0.7f

    invoke-direct/range {v18 .. v19}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 206
    .local v18, "style":Landroid/text/style/CharacterStyle;
    const/16 v19, 0x22

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v13, v14, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 209
    .end local v18    # "style":Landroid/text/style/CharacterStyle;
    :cond_a
    add-int/lit8 v19, v14, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 210
    add-int/lit8 v19, v13, 0x1

    move/from16 v0, v19

    invoke-virtual {v11, v13, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .end local v11    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "magic1":I
    .end local v14    # "magic2":I
    :cond_b
    move-object/from16 v11, v17

    .line 216
    goto :goto_5
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 85
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 98
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    .line 102
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 107
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    .line 111
    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method
