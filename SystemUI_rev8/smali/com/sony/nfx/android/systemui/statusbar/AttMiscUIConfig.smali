.class public Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;
.super Ljava/lang/Object;
.source "AttMiscUIConfig.java"


# static fields
.field static final TELEPHONY_LEVEL_COUNT:I

.field static TELEPHONY_SIGNAL_STRENGTH:[I

.field private static mAtnBarType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "ro.sony.wan.AtnBarType"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    .line 21
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->TELEPHONY_SIGNAL_STRENGTH:[I

    .line 32
    sget-object v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->TELEPHONY_SIGNAL_STRENGTH:[I

    array-length v0, v0

    sput v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->TELEPHONY_LEVEL_COUNT:I

    return-void

    .line 21
    nop

    :array_0
    .array-data 4
        0x7f0200a3
        0x7f0200a5
        0x7f0200a7
        0x7f0200a9
        0x7f0200ab
        0x7f0200ab
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataSignalIconId(II)I
    .locals 2
    .param p0, "level"    # I
    .param p1, "orgVal"    # I

    .prologue
    .line 93
    sget v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 96
    .end local p1    # "orgVal":I
    :goto_0
    return p1

    .restart local p1    # "orgVal":I
    :cond_0
    sget-object v0, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->TELEPHONY_SIGNAL_STRENGTH:[I

    aget p1, v0, p0

    goto :goto_0
.end method

.method public static getDataTypeIconIdWhenUMTS(Landroid/content/Context;I)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "orgVal"    # I

    .prologue
    .line 101
    sget v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 109
    .end local p1    # "orgVal":I
    :cond_0
    :goto_0
    return p1

    .line 104
    .restart local p1    # "orgVal":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "stat_sys_signal_hsdpa"

    const-string v3, "drawable"

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 106
    .local v0, "resId":I
    if-eqz v0, :cond_0

    move p1, v0

    .line 109
    goto :goto_0
.end method

.method public static getDrwableIdWhenNoService(Landroid/content/Context;I)I
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "orgVal"    # I

    .prologue
    .line 80
    sget v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 88
    .end local p1    # "orgVal":I
    :cond_0
    :goto_0
    return p1

    .line 83
    .restart local p1    # "orgVal":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "stat_sys_signal_null"

    const-string v3, "drawable"

    const-string v4, "com.android.systemui"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "resId":I
    if-eqz v0, :cond_0

    move p1, v0

    .line 88
    goto :goto_0
.end method

.method public static getExtraFixedNotificationNum(Landroid/view/View;)I
    .locals 8
    .param p0, "sb"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    sget v5, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    if-eq v5, v4, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 56
    :cond_1
    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, "res":Landroid/content/res/Resources;
    const-string v5, "syncButton"

    const-string v6, "id"

    const-string v7, "com.android.systemui"

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "resId":I
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 68
    .local v2, "syncButton":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    move v3, v4

    .line 73
    goto :goto_0
.end method

.method public static declared-synchronized setDrawableId(Landroid/view/View;)V
    .locals 6
    .param p0, "sb"    # Landroid/view/View;

    .prologue
    .line 36
    const-class v2, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;

    monitor-enter v2

    :try_start_0
    sget v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 48
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 40
    :cond_1
    if-eqz p0, :cond_0

    .line 43
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "stat_sys_signal_5"

    const-string v4, "drawable"

    const-string v5, "com.android.systemui"

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "id":I
    if-eqz v0, :cond_0

    .line 46
    sget-object v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->TELEPHONY_SIGNAL_STRENGTH:[I

    const/4 v3, 0x5

    aput v0, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    .end local v0    # "id":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static shouldModifySignalIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 122
    sget v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    if-ne v1, v0, :cond_0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldShowRoamingIcon()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 114
    sget v1, Lcom/sony/nfx/android/systemui/statusbar/AttMiscUIConfig;->mAtnBarType:I

    if-ne v1, v0, :cond_0

    .line 115
    const/4 v0, 0x0

    .line 117
    :cond_0
    return v0
.end method
