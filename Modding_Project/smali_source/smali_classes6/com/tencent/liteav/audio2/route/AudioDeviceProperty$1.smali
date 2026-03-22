.class final Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;
.super Landroid/media/AudioDeviceCallback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->buildAudioDeviceCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;


# direct methods
.method public constructor <init>(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_3

    .line 5
    .line 6
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-static {v0, v1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$002(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;Z)Z

    .line 10
    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v2, 0x0

    .line 14
    move v3, v2

    .line 15
    :goto_0
    if-ge v3, v0, :cond_7

    .line 16
    .line 17
    aget-object v4, p1, v3

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v6, "added device type is "

    .line 22
    .line 23
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v6, " sink: "

    .line 34
    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v6, " product name: "

    .line 46
    .line 47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    new-array v6, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    const-string v7, "AudioDeviceProperty"

    .line 64
    .line 65
    invoke-static {v7, v5, v6}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    const/16 v6, 0x8

    .line 73
    .line 74
    if-eq v5, v6, :cond_1

    .line 75
    .line 76
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/16 v6, 0x1a

    .line 81
    .line 82
    if-ne v5, v6, :cond_2

    .line 83
    .line 84
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/16 v6, 0x1e

    .line 89
    .line 90
    if-le v5, v6, :cond_2

    .line 91
    .line 92
    iget-object v4, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 93
    .line 94
    invoke-static {v4}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 95
    .line 96
    .line 97
    move-result-wide v4

    .line 98
    invoke-static {v4, v5, v1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$200(JZ)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    const/16 v6, 0xb

    .line 107
    .line 108
    if-eq v5, v6, :cond_5

    .line 109
    .line 110
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    const/16 v6, 0xc

    .line 115
    .line 116
    if-eq v5, v6, :cond_5

    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 119
    .line 120
    .line 121
    move-result v5

    .line 122
    const/16 v6, 0x16

    .line 123
    .line 124
    if-ne v5, v6, :cond_3

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    const/4 v6, 0x3

    .line 132
    if-eq v5, v6, :cond_4

    .line 133
    .line 134
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    const/4 v5, 0x4

    .line 139
    if-ne v4, v5, :cond_6

    .line 140
    .line 141
    :cond_4
    iget-object v4, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 142
    .line 143
    invoke-static {v4}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v4

    .line 147
    invoke-static {v4, v5, v1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$400(JZ)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 152
    .line 153
    invoke-static {v5}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 154
    .line 155
    .line 156
    move-result-wide v5

    .line 157
    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v4

    .line 161
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    iget-object v7, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 166
    .line 167
    invoke-virtual {v7}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->isUsbHeadsetAvailable()Z

    .line 168
    .line 169
    .line 170
    move-result v7

    .line 171
    invoke-static {v5, v6, v4, v7}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$300(JLjava/lang/String;Z)V

    .line 172
    .line 173
    .line 174
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_7
    :goto_3
    return-void
.end method

.method public final onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V
    .locals 7

    .line 1
    array-length v0, p1

    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    goto/16 :goto_3

    .line 5
    .line 6
    :cond_0
    array-length v0, p1

    .line 7
    const/4 v1, 0x0

    .line 8
    move v2, v1

    .line 9
    :goto_0
    if-ge v2, v0, :cond_7

    .line 10
    .line 11
    aget-object v3, p1, v2

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v5, "removed device type is "

    .line 16
    .line 17
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v5, " sink: "

    .line 28
    .line 29
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->isSink()Z

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v5, " product name: "

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-array v5, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v6, "AudioDeviceProperty"

    .line 58
    .line 59
    invoke-static {v6, v4, v5}, Lcom/tencent/liteav/base/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    const/16 v5, 0x8

    .line 67
    .line 68
    if-eq v4, v5, :cond_1

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    const/16 v5, 0x1a

    .line 75
    .line 76
    if-ne v4, v5, :cond_2

    .line 77
    .line 78
    :cond_1
    invoke-static {}, Lcom/tencent/liteav/base/system/LiteavSystemInfo;->getSystemOSVersionInt()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    const/16 v5, 0x1e

    .line 83
    .line 84
    if-le v4, v5, :cond_2

    .line 85
    .line 86
    iget-object v4, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 87
    .line 88
    invoke-virtual {v4}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->isBluetoothHeadsetConnected()Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-nez v4, :cond_2

    .line 93
    .line 94
    iget-object v3, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v3

    .line 100
    invoke-static {v3, v4, v1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$200(JZ)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    const/16 v5, 0xb

    .line 109
    .line 110
    if-eq v4, v5, :cond_5

    .line 111
    .line 112
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    const/16 v5, 0xc

    .line 117
    .line 118
    if-eq v4, v5, :cond_5

    .line 119
    .line 120
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    const/16 v5, 0x16

    .line 125
    .line 126
    if-ne v4, v5, :cond_3

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    const/4 v5, 0x3

    .line 134
    if-eq v4, v5, :cond_4

    .line 135
    .line 136
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    const/4 v4, 0x4

    .line 141
    if-ne v3, v4, :cond_6

    .line 142
    .line 143
    :cond_4
    iget-object v3, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 144
    .line 145
    invoke-static {v3}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    invoke-static {v3, v4, v1}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$400(JZ)V

    .line 150
    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 154
    .line 155
    invoke-static {v4}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$100(Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v4

    .line 159
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    iget-object v6, p0, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty$1;->a:Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;

    .line 168
    .line 169
    invoke-virtual {v6}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->isUsbHeadsetAvailable()Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-static {v4, v5, v3, v6}, Lcom/tencent/liteav/audio2/route/AudioDeviceProperty;->access$300(JLjava/lang/String;Z)V

    .line 174
    .line 175
    .line 176
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_7
    :goto_3
    return-void
.end method
