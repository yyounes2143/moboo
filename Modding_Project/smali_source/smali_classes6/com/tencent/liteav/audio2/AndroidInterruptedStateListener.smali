.class public Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/tencent/liteav/audio2/d$a;
.implements Lcom/tencent/liteav/audio2/e$b;


# annotations
.annotation runtime Lcom/tencent/liteav/base/annotations/JNINamespace;
    value = "liteav::audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;
    }
.end annotation


# static fields
.field private static final RECORDING_CONFIGS_LIMIT:I = 0xa

.field public static final TAG:Ljava/lang/String; = "AndroidInterruptedStateListener"

.field private static mRecordingCallback:Lcom/tencent/liteav/audio2/d;


# instance fields
.field private final mNativeRecordingConfigListener:J

.field private volatile mNeedNotify:Z

.field private mObject:Ljava/lang/Object;

.field private mPhoneStateManager:Lcom/tencent/liteav/audio2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/tencent/liteav/audio2/d;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/tencent/liteav/audio2/d;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mRecordingCallback:Lcom/tencent/liteav/audio2/d;

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 6
    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mObject:Ljava/lang/Object;

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNativeRecordingConfigListener:J

    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p2, "new AndroidInterruptedStateListener"

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-array p2, v0, [Ljava/lang/Object;

    .line 35
    .line 36
    const-string v0, "AndroidInterruptedStateListener"

    .line 37
    .line 38
    invoke-static {v0, p1, p2}, Lcom/tencent/liteav/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static synthetic lambda$registerAudioRecordingCallback$0(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mPhoneStateManager:Lcom/tencent/liteav/audio2/e;

    .line 5
    .line 6
    if-nez v3, :cond_0

    .line 7
    .line 8
    new-instance v3, Lcom/tencent/liteav/audio2/e;

    .line 9
    .line 10
    invoke-direct {v3, p0}, Lcom/tencent/liteav/audio2/e;-><init>(Lcom/tencent/liteav/audio2/e$b;)V

    .line 11
    .line 12
    .line 13
    iput-object v3, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mPhoneStateManager:Lcom/tencent/liteav/audio2/e;

    .line 14
    .line 15
    :cond_0
    iget-object p0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mPhoneStateManager:Lcom/tencent/liteav/audio2/e;

    .line 16
    .line 17
    invoke-static {}, Lcom/tencent/liteav/audio2/e;->b()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const-string v4, "PhoneStateManager"

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio2/e;->a:Landroid/telephony/TelephonyManager;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x20

    .line 30
    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p0, "TelephonyManager is null, start listen phone state failed."

    .line 38
    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 40
    .line 41
    invoke-static {v4, p0, v0}, Lcom/tencent/liteav/base/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "start listen phone state failed, "

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-array v0, v2, [Ljava/lang/Object;

    .line 64
    .line 65
    invoke-static {v4, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v5, 0x1f

    .line 72
    .line 73
    if-lt v3, v5, :cond_5

    .line 74
    .line 75
    :try_start_1
    iget-object v3, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 76
    .line 77
    if-nez v3, :cond_3

    .line 78
    .line 79
    const-string v3, "android.media.AudioManager$OnModeChangedListener"

    .line 80
    .line 81
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iput-object v3, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/tencent/liteav/audio2/e;->e:Ljava/lang/Object;

    .line 91
    .line 92
    if-nez v3, :cond_4

    .line 93
    .line 94
    new-instance v3, Lcom/tencent/liteav/audio2/e$a;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Lcom/tencent/liteav/audio2/e$a;-><init>(Lcom/tencent/liteav/audio2/e;)V

    .line 97
    .line 98
    .line 99
    iget-object v5, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 100
    .line 101
    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    iget-object v6, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 106
    .line 107
    new-array v7, v1, [Ljava/lang/Class;

    .line 108
    .line 109
    aput-object v6, v7, v2

    .line 110
    .line 111
    invoke-static {v5, v7, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    iput-object v3, p0, Lcom/tencent/liteav/audio2/e;->e:Ljava/lang/Object;

    .line 116
    .line 117
    :cond_4
    const-class v3, Landroid/media/AudioManager;

    .line 118
    .line 119
    const-string v5, "addOnModeChangedListener"

    .line 120
    .line 121
    iget-object v6, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 122
    .line 123
    new-array v7, v0, [Ljava/lang/Class;

    .line 124
    .line 125
    const-class v8, Ljava/util/concurrent/Executor;

    .line 126
    .line 127
    aput-object v8, v7, v2

    .line 128
    .line 129
    aput-object v6, v7, v1

    .line 130
    .line 131
    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {p0}, Lcom/tencent/liteav/audio2/g;->a(Lcom/tencent/liteav/audio2/e;)Ljava/util/concurrent/Executor;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    iget-object v6, p0, Lcom/tencent/liteav/audio2/e;->b:Landroid/media/AudioManager;

    .line 140
    .line 141
    iget-object p0, p0, Lcom/tencent/liteav/audio2/e;->e:Ljava/lang/Object;

    .line 142
    .line 143
    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    .line 145
    aput-object v5, v0, v2

    .line 146
    .line 147
    aput-object p0, v0, v1

    .line 148
    .line 149
    invoke-virtual {v3, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v1, "add mode changed listener failed, "

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p0

    .line 171
    new-array v0, v2, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-static {v4, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_5
    const/16 v0, 0x1a

    .line 178
    .line 179
    if-lt v3, v0, :cond_6

    .line 180
    .line 181
    sget-object v0, Lcom/tencent/liteav/audio2/e;->c:Lcom/tencent/liteav/audio2/c;

    .line 182
    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    const-string v0, "register audio playback callback."

    .line 186
    .line 187
    new-array v1, v2, [Ljava/lang/Object;

    .line 188
    .line 189
    invoke-static {v4, v0, v1}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object v0, Lcom/tencent/liteav/audio2/e;->c:Lcom/tencent/liteav/audio2/c;

    .line 193
    .line 194
    iput-object p0, v0, Lcom/tencent/liteav/audio2/c;->a:Lcom/tencent/liteav/audio2/c$a;

    .line 195
    .line 196
    :cond_6
    return-void
.end method

.method public static synthetic lambda$unregisterAudioRecordingCallback$1(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object p0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mPhoneStateManager:Lcom/tencent/liteav/audio2/e;

    .line 4
    .line 5
    if-eqz p0, :cond_3

    .line 6
    .line 7
    invoke-static {}, Lcom/tencent/liteav/audio2/e;->b()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v3, "PhoneStateManager"

    .line 12
    .line 13
    if-eqz v2, :cond_1

    .line 14
    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio2/e;->a:Landroid/telephony/TelephonyManager;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    iput v1, p0, Lcom/tencent/liteav/audio2/e;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    return-void

    .line 28
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v2, "stop listen phone state failed, "

    .line 31
    .line 32
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    new-array v0, v1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v3, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    .line 54
    const/16 v4, 0x1f

    .line 55
    .line 56
    if-lt v2, v4, :cond_2

    .line 57
    .line 58
    :try_start_1
    iget-object v2, p0, Lcom/tencent/liteav/audio2/e;->d:Ljava/lang/Class;

    .line 59
    .line 60
    if-eqz v2, :cond_3

    .line 61
    .line 62
    iget-object v4, p0, Lcom/tencent/liteav/audio2/e;->e:Ljava/lang/Object;

    .line 63
    .line 64
    if-eqz v4, :cond_3

    .line 65
    .line 66
    const-class v4, Landroid/media/AudioManager;

    .line 67
    .line 68
    const-string v5, "removeOnModeChangedListener"

    .line 69
    .line 70
    new-array v6, v0, [Ljava/lang/Class;

    .line 71
    .line 72
    aput-object v2, v6, v1

    .line 73
    .line 74
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v4, p0, Lcom/tencent/liteav/audio2/e;->b:Landroid/media/AudioManager;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/tencent/liteav/audio2/e;->e:Ljava/lang/Object;

    .line 81
    .line 82
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object p0, v0, v1

    .line 85
    .line 86
    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :catchall_1
    move-exception p0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string v2, "remove mode changed listener failed, "

    .line 94
    .line 95
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    new-array v0, v1, [Ljava/lang/Object;

    .line 110
    .line 111
    invoke-static {v3, p0, v0}, Lcom/tencent/liteav/base/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    invoke-static {}, Lcom/tencent/liteav/audio2/e;->c()V

    .line 116
    .line 117
    .line 118
    :cond_3
    return-void
.end method

.method private static native nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;)V
.end method

.method private static native nativeNotifyInterruptedByPhoneCallFromJava(J)V
.end method

.method private static native nativeNotifyResumedByPhoneCallFromJava(J)V
.end method


# virtual methods
.method public OnRecordingConfigChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    new-array v1, v0, [Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    move v3, v2

    .line 18
    :goto_0
    if-ge v3, v0, :cond_3

    .line 19
    .line 20
    new-instance v4, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;

    .line 21
    .line 22
    invoke-direct {v4}, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;-><init>()V

    .line 23
    .line 24
    .line 25
    aput-object v4, v1, v3

    .line 26
    .line 27
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-static {v4}, Lcom/tencent/liteav/audio2/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Landroid/media/AudioRecordingConfiguration;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    aget-object v5, v1, v3

    .line 36
    .line 37
    invoke-static {v4}, Lcom/tencent/liteav/audio2/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioRecordingConfiguration;)I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    iput v6, v5, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;->a:I

    .line 42
    .line 43
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    const/16 v6, 0x1d

    .line 48
    .line 49
    if-lt v5, v6, :cond_1

    .line 50
    .line 51
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 52
    .line 53
    if-lt v5, v6, :cond_2

    .line 54
    .line 55
    aget-object v5, v1, v3

    .line 56
    .line 57
    invoke-static {v4}, Lcom/tencent/liteav/audio2/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/media/AudioRecordingConfiguration;)Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    iput-boolean v4, v5, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;->b:Z

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    aget-object v4, v1, v3

    .line 65
    .line 66
    iput-boolean v2, v4, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;->b:Z

    .line 67
    .line 68
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mObject:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter p1

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-wide v2, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNativeRecordingConfigListener:J

    .line 79
    .line 80
    invoke-static {v2, v3, v1}, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->nativeNotifyAudioRecordingConfigChangedFromJava(J[Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener$RecordingConfig;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    goto :goto_3

    .line 86
    :cond_4
    :goto_2
    monitor-exit p1

    .line 87
    return-void

    .line 88
    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw v0
.end method

.method public onInterruptedByPhoneCall()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNativeRecordingConfigListener:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->nativeNotifyInterruptedByPhoneCallFromJava(J)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public onResumedByPhoneCall()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mObject:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-wide v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNativeRecordingConfigListener:J

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->nativeNotifyResumedByPhoneCallFromJava(J)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public registerAudioRecordingCallback()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mRecordingCallback:Lcom/tencent/liteav/audio2/d;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iput-object p0, v0, Lcom/tencent/liteav/audio2/d;->a:Lcom/tencent/liteav/audio2/d$a;

    .line 15
    .line 16
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0}, Lcom/tencent/liteav/audio2/a;->a(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)Ljava/lang/Runnable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 29
    .line 30
    return-void
.end method

.method public unregisterAudioRecordingCallback()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mRecordingCallback:Lcom/tencent/liteav/audio2/d;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mObject:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mNeedNotify:Z

    .line 20
    .line 21
    sget-object v1, Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;->mRecordingCallback:Lcom/tencent/liteav/audio2/d;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    iput-object v2, v1, Lcom/tencent/liteav/audio2/d;->a:Lcom/tencent/liteav/audio2/d$a;

    .line 25
    .line 26
    invoke-static {}, Lcom/tencent/liteav/base/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {p0}, Lcom/tencent/liteav/audio2/b;->a(Lcom/tencent/liteav/audio2/AndroidInterruptedStateListener;)Ljava/lang/Runnable;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v1
.end method
