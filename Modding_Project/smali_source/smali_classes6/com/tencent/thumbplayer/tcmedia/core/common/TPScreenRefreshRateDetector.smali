.class public Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;
    }
.end annotation


# static fields
.field public static final DISPLAY_CHANGE:I = 0x2711

.field private static TAG:Ljava/lang/String; = "TPScreenRefreshRateDetector"

.field private static isInitted:Z = false

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurScreenRefreshRate:F

.field private static mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private static mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private static mHandler:Landroid/os/Handler;

.field private static mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->listeners:Ljava/util/List;

    .line 7
    .line 8
    const/high16 v0, 0x42700000    # 60.0f

    .line 9
    .line 10
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 14
    .line 15
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$2;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$2;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$000()Landroid/hardware/display/DisplayManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$200(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->notifyScreenRefreshRateChange(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static addListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public static deinit()V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->isInitted:Z

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mContext:Ljava/lang/ref/WeakReference;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    sput-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->isInitted:Z

    .line 18
    .line 19
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    const-string v2, "TPScreenRefreshRateDetector deinit succeed!"

    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    monitor-exit v0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    throw v1
.end method

.method private static getLooper()Landroid/os/Looper;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getScreenRefreshRate()F
    .locals 10

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mContext:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "Current mContext is null, set default."

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/Context;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mWindowManager:Landroid/view/WindowManager;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string v1, "window"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroid/view/WindowManager;

    .line 35
    .line 36
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    .line 38
    :cond_1
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    const-string v1, "display"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 49
    .line 50
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 51
    .line 52
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 53
    .line 54
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mHandler:Landroid/os/Handler;

    .line 55
    .line 56
    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mWindowManager:Landroid/view/WindowManager;

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v4, "getMode width:"

    .line 80
    .line 81
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v4, " height:"

    .line 92
    .line 93
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v5, " refreshRate:"

    .line 104
    .line 105
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 109
    .line 110
    .line 111
    move-result v6

    .line 112
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v6, " ModeId:"

    .line 116
    .line 117
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    .line 121
    .line 122
    .line 123
    move-result v7

    .line 124
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    const/4 v7, 0x2

    .line 132
    invoke-static {v7, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    .line 138
    .line 139
    const-string v8, "getSupportedModes length:"

    .line 140
    .line 141
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    array-length v8, v1

    .line 145
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-static {v7, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const/4 v2, 0x0

    .line 156
    :goto_0
    array-length v3, v1

    .line 157
    if-ge v2, v3, :cond_3

    .line 158
    .line 159
    sget-object v3, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v8, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    const-string v9, "getSupportedModes width:"

    .line 164
    .line 165
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    aget-object v9, v1, v2

    .line 169
    .line 170
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    aget-object v9, v1, v2

    .line 181
    .line 182
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    aget-object v9, v1, v2

    .line 193
    .line 194
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    aget-object v9, v1, v2

    .line 205
    .line 206
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    .line 207
    .line 208
    .line 209
    move-result v9

    .line 210
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v8

    .line 217
    invoke-static {v7, v3, v8}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    .line 222
    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    sput v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 228
    .line 229
    :cond_4
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 230
    .line 231
    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v2, "TPScreenRefreshRateDetector init enter!"

    .line 7
    .line 8
    const/4 v3, 0x2

    .line 9
    invoke-static {v3, v1, v2}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-boolean v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->isInitted:Z

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sput-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mContext:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    const/4 p0, 0x1

    .line 32
    sput-boolean p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->isInitted:Z

    .line 33
    .line 34
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->initHandleMsg()V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 38
    .line 39
    const-string v1, "TPScreenRefreshRateDetector init succeed!"

    .line 40
    .line 41
    invoke-static {v3, p0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw p0
.end method

.method public static initHandleMsg()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$1;

    .line 2
    .line 3
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->getLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$1;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mHandler:Landroid/os/Handler;

    .line 11
    .line 12
    return-void
.end method

.method private static notifyScreenRefreshRateChange(F)V
    .locals 3

    .line 1
    sget v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 2
    .line 3
    sub-float v0, p0, v0

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    .line 11
    cmpl-float v0, v0, v1

    .line 12
    .line 13
    if-ltz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v2, "notifyScreenRefreshRateChange Change From "

    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, " to "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x2

    .line 42
    invoke-static {v2, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPNativeLog;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput p0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->mCurScreenRefreshRate:F

    .line 46
    .line 47
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;

    .line 48
    .line 49
    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->listeners:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_0

    .line 61
    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;

    .line 67
    .line 68
    invoke-interface {v2, p0}, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;->onScreenRefreshRateChanged(F)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    monitor-exit v0

    .line 75
    return-void

    .line 76
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0

    .line 78
    :cond_1
    return-void
.end method

.method public static removeListener(Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector$ScreenRefreshRateChangedListener;)V
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/core/common/TPScreenRefreshRateDetector;->listeners:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
