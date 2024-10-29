.class Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_LIMITED_SIGNAL_STRENGTH:[[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 26
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    .line 39
    new-array v0, v5, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LIMITED_SIGNAL_STRENGTH:[[I

    .line 52
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    .line 26
    :array_0
    .array-data 4
        0x7f0200af
        0x7f0200b0
        0x7f0200b2
        0x7f0200b4
        0x7f0200b6
    .end array-data

    :array_1
    .array-data 4
        0x7f0200af
        0x7f0200b1
        0x7f0200b3
        0x7f0200b5
        0x7f0200b7
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x7f0200a9
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
    .end array-data

    :array_3
    .array-data 4
        0x7f0200a9
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
